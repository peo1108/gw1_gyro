import os, re, collections

DEC = r"C:\Users\cam\Desktop\cam gyro\decompiled"
GG1 = os.path.join(DEC, "gg1", "apktool")
GG2 = os.path.join(DEC, "gg2", "apktool")
SCR = os.path.dirname(__file__)

def index(root):
    m = {}
    for d in os.listdir(root):
        if not d.startswith("smali"): continue
        base = os.path.join(root, d)
        for dp,_,fs in os.walk(base):
            for f in fs:
                if f.endswith(".smali"):
                    full=os.path.join(dp,f)
                    rel=os.path.relpath(full,base).replace("\\","/")[:-6]
                    m.setdefault(rel, full)
    return m

g1=index(GG1); g2=index(GG2)
copy=set(open(os.path.join(SCR,"copy_list.txt"),encoding="utf-8").read().split())
print("copy set size:", len(copy))

# case-collision within copy set (Windows landmine)
low=collections.defaultdict(list)
for c in copy:
    low[c.lower()].append(c)
colls={k:v for k,v in low.items() if len(v)>1}
print("case-colliding pairs within copy set:", len(colls))
for k,v in list(colls.items())[:20]: print("   ", v)
# also collisions between copy set and gg1 existing (case-insensitive)
g1low={c.lower() for c in g1}
cross=[c for c in copy if c.lower() in g1low and c not in g1]
print("copy-vs-gg1 case-insensitive collisions:", len(cross))
for c in cross[:20]: print("   gg1 has case-variant of:", c)

# invoke/field refs FROM copy set INTO classes that exist in gg1 but are NOT in copy set
# i.e. the integration API surface we rely on gg1 to provide
callre=re.compile(r"(invoke-\w+(?:/range)?|i(?:get|put)[\-\w]*|s(?:get|put)[\-\w]*)\s+[^,]*,?.*?L([A-Za-z0-9_$/]+);->([^\s]+)")
# simpler: capture  L...;->member(sig)  on invoke/iget/sget lines
memre=re.compile(r"L([A-Za-z0-9_$/]+);->([A-Za-z0-9_$<>]+)(\([^\s]*)?")

surface=collections.defaultdict(set)   # target class -> set of members called
for c in copy:
    fp=g2.get(c)
    if not fp: continue
    with open(fp,encoding="utf-8",errors="ignore") as fh:
        for line in fh:
            s=line.strip()
            if not (s.startswith("invoke") or s.startswith("iget") or s.startswith("iput") or s.startswith("sget") or s.startswith("sput")):
                continue
            for cls,mem,sig in memre.findall(line):
                base=cls.split("$")[0]
                if base in copy:   # internal to gyro copy set
                    continue
                if base.startswith(("android/","androidx/","java/","javax/","kotlin/","kotlinx/","dalvik/","com/google/","com/android/","org/","okhttp","okio","retrofit","io/reactivex","sun/","j$/")):
                    continue
                # external app dependency
                surface[cls].add(mem+(sig or ""))

# split surface by whether target exists in gg1
in_gg1={}; not_in={}
for cls,mems in surface.items():
    base=cls.split("$")[0]
    (in_gg1 if base in g1 else not_in)[cls]=mems

print("\n=== EXTERNAL DEPS present in gg1 (must be API-compatible) ===")
for cls in sorted(in_gg1, key=lambda c:-len(in_gg1[c])):
    print(f"  [{len(in_gg1[cls])}] {cls}")
    for m in sorted(in_gg1[cls])[:12]:
        print("        ", m)

print("\n=== EXTERNAL DEPS NOT in gg1 and NOT in copy set (unresolved!) ===")
for cls in sorted(not_in):
    base=cls.split("$")[0]
    if base in g2:  # exists in gg2 but we didn't copy -> should add
        tag="(in gg2, add to copy)"
    else:
        tag="(absent in gg2 too = noise/framework)"
    print(f"  [{len(not_in[cls])}] {cls} {tag}")
