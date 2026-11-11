import os, shutil

DEC = r"C:\Users\cam\Desktop\cam gyro\decompiled"
GG2 = os.path.join(DEC, "gg2", "apktool")
W   = r"C:\Users\cam\AppData\Local\Temp\claude\2084aae2c75622f3\a848ad98-05ba-49c9-a69b-3c1280683772\scratchpad\port"
BUILD = os.path.join(W, "build_gg1")
SCR = os.path.dirname(__file__)

def index(root):
    m={}
    for d in os.listdir(root):
        if not d.startswith("smali"): continue
        base=os.path.join(root,d)
        for dp,_,fs in os.walk(base):
            for f in fs:
                if f.endswith(".smali"):
                    full=os.path.join(dp,f)
                    rel=os.path.relpath(full,base).replace("\\","/")[:-6]
                    m.setdefault(rel,full)
    return m

g2=index(GG2)
copy=[l.strip() for l in open(os.path.join(SCR,"copy_list.txt"),encoding="utf-8") if l.strip()]
print("to copy:",len(copy))

# target dirs with per-dir lowercase-path registry to avoid Windows case collisions
dirs=["smali_classes3","smali_classes4","smali_classes5"]
used={d:set() for d in dirs}
placed=0; missing=[]
dist={}
for cls in sorted(copy):
    src=g2.get(cls)
    if not src:
        missing.append(cls); continue
    low=cls.lower()
    tgt=None
    for d in dirs:
        if low not in used[d]:
            tgt=d; used[d].add(low); break
    if tgt is None:
        raise SystemExit("ran out of dirs for "+cls)
    dst=os.path.join(BUILD,tgt,cls.replace("/",os.sep)+".smali")
    os.makedirs(os.path.dirname(dst),exist_ok=True)
    shutil.copy2(src,dst)
    placed+=1
    dist[tgt]=dist.get(tgt,0)+1

print("placed:",placed,"distribution:",dist)
if missing: print("MISSING sources:",missing)

# native libs (arm64 only, as gg2 ships)
libs=["libgyroinject.so","libgyrohook.so","libgw2gate.so","libmagiskpolicy.so","libc++_shared.so","libzutil.so"]
srcL=os.path.join(GG2,"lib","arm64-v8a"); dstL=os.path.join(BUILD,"lib","arm64-v8a")
os.makedirs(dstL,exist_ok=True)
for l in libs:
    s=os.path.join(srcL,l)
    if os.path.exists(s):
        shutil.copy2(s,os.path.join(dstL,l)); print("lib copied:",l)
    else:
        print("lib MISSING in gg2:",l)
print("DONE")
