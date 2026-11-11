"""Compare two directory trees by SHA-1 (Windows long-path safe). usage: treediff.py <a> <b>"""
import hashlib, os, sys
sys.stdout.reconfigure(encoding="utf-8")


def long(p):
    p = os.path.abspath(p)
    return p if p.startswith("\\\\?\\") else "\\\\?\\" + p


def walk(root):
    root = long(root)
    out = {}
    for dp, _, fs in os.walk(root):
        for f in fs:
            p = os.path.join(dp, f)
            with open(p, "rb") as fh:
                out[os.path.relpath(p, root).replace(os.sep, "/")] = hashlib.sha1(fh.read()).hexdigest()
    return out


a, b = walk(sys.argv[1]), walk(sys.argv[2])
only_a = sorted(set(a) - set(b))
only_b = sorted(set(b) - set(a))
changed = sorted(k for k in set(a) & set(b) if a[k] != b[k])
print(f"files: {len(a)} vs {len(b)} | only in first: {len(only_a)} | only in second: {len(only_b)} | changed: {len(changed)}")
for k in (only_a + only_b + changed)[:20]:
    print("  ", k)
