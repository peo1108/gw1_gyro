import os,sys
W=r"C:\Users\cam\AppData\Local\Temp\claude\2084aae2c75622f3\a848ad98-05ba-49c9-a69b-3c1280683772\scratchpad\port\build_gg1"
def rd(p):
    with open(p,encoding="utf-8") as f: return f.read()
def wr(p,s):
    with open(p,"w",encoding="utf-8",newline="\n") as f: f.write(s)
def ins_after(s, anchor, block, tag):
    if tag in s:
        print("  already applied:",tag); return s
    i=s.find(anchor)
    if i<0: raise SystemExit("ANCHOR NOT FOUND: "+tag)
    j=i+len(anchor)
    return s[:j]+block+s[j:]

# 1) App.smali -> add j()
p=os.path.join(W,"smali","com","zjx","jyandroid","App.smali"); s=rd(p)
anc=""".method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/App;->context:Landroid/content/Context;

    return-object v0
.end method"""
blk="""

.method public static j()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/App;->context:Landroid/content/Context;

    return-object v0
.end method"""
s=ins_after(s,anc,blk,"->j()Landroid/content/Context; shim"); wr(p,s); print("App.smali OK")

# 2) MainService.smali -> add G(), u(), gyroBootstrap() after sharedInstance()
p=os.path.join(W,"smali","com","zjx","jyandroid","ForegroundService","MainService.smali"); s=rd(p)
anc=""".method public static sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/MainService;->instance:Lcom/zjx/jyandroid/ForegroundService/MainService;

    return-object v0
.end method"""
blk="""

.method public static G()Lcom/zjx/jyandroid/ForegroundService/MainService;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/MainService;->instance:Lcom/zjx/jyandroid/ForegroundService/MainService;

    return-object v0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->started:Z

    return v0
.end method

.method public static gyroBootstrap()V
    .locals 2

    :try_start_0
    invoke-static {}, LK6/m;->getInstance()LK6/m;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LK6/m;->setConnectionMode(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LK6/m;->setCameraGyroMode(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method"""
s=ins_after(s,anc,blk,"->gyroBootstrap()V")
# trigger inside startFunctioning: after started=true, before EventDispatchCenter
anc2="""    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->started:Z

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;"""
trg="""    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->started:Z

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->gyroBootstrap()V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;"""
if "->gyroBootstrap()V\n\n    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter" in s:
    print("  trigger already applied")
else:
    if anc2 not in s: raise SystemExit("TRIGGER ANCHOR NOT FOUND")
    s=s.replace(anc2,trg,1)
wr(p,s); print("MainService.smali OK")

# 3) UI/a.smali -> append F(), u()
p=os.path.join(W,"smali","com","zjx","jyandroid","ForegroundService","UI","a.smali"); s=rd(p)
if "->F()Lcom/zjx/jyandroid/ForegroundService/UI/a;" in s:
    print("  UI/a already")
else:
    s=s.rstrip()+"""

.method public static F()Lcom/zjx/jyandroid/ForegroundService/UI/a;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->A:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    return-object v0
.end method

.method public u()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
"""
wr(p,s); print("UI/a.smali OK")

# 4) pubg/f.smali -> append gyro getters
p=os.path.join(W,"smali","com","zjx","jyandroid","Extensions","pubg","f.smali"); s=rd(p)
def getint(name,key,default):
    return f"""

.method public {name}()I
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-string v1, "{key}"

    const/16 v2, {default}

    invoke-interface {{v0, v1, v2}}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method"""
def getbool(name,key):
    return f"""

.method public {name}()Z
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-string v1, "{key}"

    const/4 v2, 0x0

    invoke-interface {{v0, v1, v2}}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method"""
if "->getCameraGyroMode()I" in s:
    print("  pubg/f already")
else:
    add=getint("getCameraGyroMode","gw2_camGyroMode","0x0")
    add+=getint("getCameraGyroSpeed","gw2_camGyroSpeed","0x5")
    add+=getint("getConnectionMode","gw2_connMode","0x1")
    add+=getbool("getGyroInvert","gw2_gyroInvert")
    add+=getbool("getGyroOffWhenNoGun","gw2_gyroOffNoGun")
    add+=getbool("getRcByGyro","gw2_rcByGyro")
    s=s.rstrip()+add+"\n"
wr(p,s); print("pubg/f.smali OK")

# 5) K6/m.smali enum remap Y->SUCCESS, Z->DANGER
p=os.path.join(W,"smali_classes3","K6","m.smali"); s=rd(p)
s2=s.replace("Lcom/zjx/jyandroid/base/util/ToastView$a;->Y:Lcom/zjx/jyandroid/base/util/ToastView$a;",
             "Lcom/zjx/jyandroid/base/util/ToastView$a;->SUCCESS:Lcom/zjx/jyandroid/base/util/ToastView$a;")
s2=s2.replace("Lcom/zjx/jyandroid/base/util/ToastView$a;->Z:Lcom/zjx/jyandroid/base/util/ToastView$a;",
              "Lcom/zjx/jyandroid/base/util/ToastView$a;->DANGER:Lcom/zjx/jyandroid/base/util/ToastView$a;")
print("  K6/m enum replaced:", s!=s2)
wr(p,s2); print("K6/m.smali OK")
print("ALL M2a EDITS DONE")
