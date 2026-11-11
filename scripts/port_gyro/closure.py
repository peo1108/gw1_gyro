import os, re, sys, collections

DEC = r"C:\Users\cam\Desktop\cam gyro\decompiled"
GG1 = os.path.join(DEC, "gg1", "apktool")
GG2 = os.path.join(DEC, "gg2", "apktool")

def index(root):
    """map class-path (e.g. 'K6/m') -> abs smali file, scanning all smali* dirs"""
    m = {}
    for d in os.listdir(root):
        if not d.startswith("smali"):
            continue
        base = os.path.join(root, d)
        for dirpath, _, files in os.walk(base):
            for f in files:
                if f.endswith(".smali"):
                    full = os.path.join(dirpath, f)
                    rel = os.path.relpath(full, base).replace("\\", "/")[:-6]  # strip .smali
                    m.setdefault(rel, full)
    return m

g1 = index(GG1)
g2 = index(GG2)
print("gg1 total classes:", len(g1))
print("gg2 total classes:", len(g2))

FRAME = ("android/","androidx/","java/","javax/","kotlin/","kotlinx/","dalvik/",
         "org/json","org/intellij","org/jetbrains","org/bouncycastle","com/google/",
         "com/android/","sun/","j$/","org/apache","org/chromium","com/squareup",
         "okhttp3/","okio/","retrofit2/","io/reactivex","org/slf4j")

def is_frame(p):
    return any(p.startswith(x) for x in FRAME)

typ = re.compile(r"L([A-Za-z0-9_$/]+);")

def refs(path):
    out = set()
    try:
        with open(path, "r", encoding="utf-8", errors="ignore") as fh:
            for line in fh:
                for t in typ.findall(line):
                    out.add(t)
    except Exception:
        pass
    return out

# seeds: known gyro classes present in gg2
seed_prefixes = ["com/zjx/gw2lic/"]
seed_exact = ["K6/m","K6/n","F6/a","D6/d","m6/b","N6/a","p6/i","V5/l",
    "com/zjx/jyandroid/module/keymapeditor/macro/macrooperationeditorview/GyroSwipeMacroEditorView",
    "com/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView"]

seeds = set()
for c in g2:
    if any(c.startswith(p) for p in seed_prefixes) or c == any:
        seeds.add(c)
for c in g2:
    if any(c.startswith(p) for p in seed_prefixes):
        seeds.add(c)
for e in seed_exact:
    # include inner classes too
    for c in g2:
        if c == e or c.startswith(e+"$"):
            seeds.add(c)

print("seed classes:", len(seeds))

def short_obf(p):
    # top-level obfuscated: first segment len<=3 and not com/.. , e.g. 'f/a','K6/m','a6/x'
    seg = p.split("/")[0]
    return "/" in p and len(seg) <= 3 and seg.isalnum()

# BFS closure over gg2, boundary = class already in gg1 (named) OR framework
to_copy = set()       # in gg2, NOT in gg1  -> must port
conflict = set()      # referenced, path exists in gg1 but is short-obf (likely different mapping)
named_boundary = set()# exists in gg1, named com/zjx/jyandroid -> reuse
missing_any = set()   # referenced, not in gg2 and not frame and not in g1 (unknown)

work = collections.deque(seeds)
seen = set(seeds)
to_copy |= {s for s in seeds if s not in g1}

while work:
    cur = work.popleft()
    fp = g2.get(cur)
    if not fp:
        continue
    for r in refs(fp):
        base = r.split("$")[0]
        if is_frame(base):
            continue
        in1 = base in g1
        in2 = base in g2
        if in2 and not in1:
            # must copy, recurse
            if base not in seen:
                seen.add(base); work.append(base); to_copy.add(base)
        elif in1 and in2:
            if base.startswith("com/zjx/jyandroid/"):
                named_boundary.add(base)
            elif short_obf(base):
                conflict.add(base)   # same short path both apps, risky
            else:
                named_boundary.add(base)
        elif not in2 and not in1:
            missing_any.add(base)

print("\n=== RESULT ===")
print("classes to COPY (in gg2, absent in gg1):", len(to_copy))
print("named boundary reused from gg1 (com.zjx.jyandroid.*):", len(named_boundary))
print("CONFLICT short-obf refs (same path, diff mapping, DANGER):", len(conflict))
print("refs unknown to both (likely framework/generated):", len(missing_any))

bydir = collections.Counter(c.split("/")[0] for c in to_copy)
print("\n-- to_copy by top segment --")
for k,v in sorted(bydir.items(), key=lambda x:-x[1]):
    print(f"  {k:30s} {v}")

print("\n-- NAMED BOUNDARY (gg1 classes gyro depends on = integration surface) --")
for c in sorted(named_boundary):
    print("  ", c)

print("\n-- CONFLICT list --")
for c in sorted(conflict):
    print("  ", c)

print("\n-- UNKNOWN refs by top segment --")
ud = collections.Counter(c.split("/")[0]+("/"+c.split("/")[1] if "/" in c else "") for c in missing_any)
for k,v in sorted(ud.items(), key=lambda x:-x[1])[:40]:
    print(f"  {k:30s} {v}")

# dump full copy list
outp = os.path.join(os.path.dirname(__file__), "copy_list.txt")
with open(outp, "w", encoding="utf-8") as fh:
    for c in sorted(to_copy):
        fh.write(c+"\n")
print("\nfull copy list ->", outp)
