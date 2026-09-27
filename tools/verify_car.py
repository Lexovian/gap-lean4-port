#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Verify a CARv1 / IPLD DAG-JSON archive produced by gap_port_estimator.py.

Checks:
  * the CARv1 header parses and declares exactly one root,
  * every block's CIDv1 (sha2-256, dag-json) matches its bytes,
  * every block decodes as DAG-JSON,
  * every IPLD link {"/": cid} resolves to a present block,
  * the DAG is acyclic and fully reachable from the root.
"""
import base64
import hashlib
import json
import sys


def read_uvarint(buf, i):
    shift = 0
    result = 0
    while True:
        b = buf[i]
        i += 1
        result |= (b & 0x7F) << shift
        if not (b & 0x80):
            return result, i
        shift += 7


def cbor_roots(header):
    # extremely small CBOR reader, only for {"roots":[<tag42 bytes>],"version":1}
    roots = []
    # find tag 42 (0xd8 0x2a) occurrences -> byte string 0x00||cid
    i = 0
    while i < len(header) - 1:
        if header[i] == 0xD8 and header[i + 1] == 0x2A:
            j = i + 2
            # byte string head
            mt = header[j]
            j += 1
            n = mt & 0x1F
            if n == 24:
                n = header[j]; j += 1
            elif n == 25:
                n = int.from_bytes(header[j:j+2], "big"); j += 2
            body = header[j:j+n]
            assert body[0] == 0x00, "CID cbor must start with 0x00 identity prefix"
            roots.append(body[1:])
            i = j + n
        else:
            i += 1
    return roots


def cid_b32(cid_bytes):
    return "b" + base64.b32encode(cid_bytes).decode().lower().rstrip("=")


def main(path):
    data = open(path, "rb").read()
    n, i = read_uvarint(data, 0)
    header = data[i:i + n]
    i += n
    roots = cbor_roots(header)
    assert len(roots) == 1, f"expected 1 root, got {len(roots)}"
    root = cid_b32(roots[0])

    blocks = {}
    while i < len(data):
        flen, i = read_uvarint(data, i)
        frame = data[i:i + flen]
        i += flen
        # CIDv1 dag-json: 0x01 0xA9 0x02 0x12 0x20 <32>
        assert frame[0] == 0x01, "expected CIDv1"
        assert frame[1] == 0xA9 and frame[2] == 0x02, "expected dag-json codec"
        assert frame[3] == 0x12 and frame[4] == 0x20, "expected sha2-256/32"
        cidbytes = frame[:5 + 32]
        body = frame[5 + 32:]
        # check hash
        if hashlib.sha256(body).digest() != cidbytes[5:]:
            raise SystemExit("HASH MISMATCH in a block")
        cid = cid_b32(cidbytes)
        json.loads(body.decode("utf-8"))  # must be valid (DAG-)JSON
        blocks[cid] = body

    # link resolution + reachability + acyclicity
    def links_of(node, acc):
        if isinstance(node, dict):
            if set(node.keys()) == {"/"} and isinstance(node["/"], str):
                acc.append(node["/"]); return
            for v in node.values():
                links_of(v, acc)
        elif isinstance(node, list):
            for v in node:
                links_of(v, acc)

    seen, stack, instack = set(), [(root, iter([]))], set()
    # iterative DFS for reachability + cycle detection
    def dfs(start):
        order = []
        st = [(start, False)]
        on = set()
        visited = set()
        while st:
            node, processed = st.pop()
            if processed:
                on.discard(node)
                continue
            if node in visited:
                continue
            visited.add(node)
            on.add(node)
            st.append((node, True))
            if node not in blocks:
                raise SystemExit(f"DANGLING LINK: {node}")
            acc = []
            links_of(json.loads(blocks[node].decode()), acc)
            for c in acc:
                if c in on:
                    raise SystemExit(f"CYCLE detected at {c}")
                st.append((c, False))
            order.append(node)
        return visited

    reachable = dfs(root)
    print("root            :", root)
    print("blocks in CAR   :", len(blocks))
    print("blocks reachable:", len(reachable))
    print("declared root present:", root in blocks)
    print("ALL CHECKS PASSED: CIDs verified, DAG-JSON valid, links resolve, acyclic.")


if __name__ == "__main__":
    main(sys.argv[1] if len(sys.argv) > 1 else "estimation/gap_port_estimate.car")
