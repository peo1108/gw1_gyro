import os, hashlib, sys, collections
sys.stdout.reconfigure(encoding="utf-8")


def walk(r):
    d = {}
    for dp, _, fs in os.walk(r):
        for f in fs:
            p = os.path.join(dp, f)
            k = os.path.relpath(p, r).replace(os.sep, "/")
            d[k] = hashlib.sha1(open(p, "rb").read()).hexdigest()
    return d


a = walk(sys.argv[1])
b = walk(sys.argv[2])


def grp(keys):
    c = collections.Counter(os.path.dirname(k) for k in keys)
    for k, v in sorted(c.items()):
        print(f"  {v:4d}  {k}")


onlyb = [k for k in b if k not in a]
onlya = [k for k in a if k not in b]
ch = [k for k in a if k in b and a[k] != b[k]]
print("ONLY in", sys.argv[2], len(onlyb)); grp(onlyb)
print("ONLY in", sys.argv[1], len(onlya)); grp(onlya)
print("CHANGED:", len(ch)); grp(ch)
print("--- files only in 2nd:")
for k in sorted(onlyb):
    print("  ", k)
print("--- files only in 1st:")
for k in sorted(onlya):
    print("  ", k)
print("--- changed files:")
for k in sorted(ch):
    print("  ", k)
