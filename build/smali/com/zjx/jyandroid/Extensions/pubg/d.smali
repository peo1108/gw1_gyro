.class public Lcom/zjx/jyandroid/Extensions/pubg/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/Extensions/IExtension;
.implements Lcom/zjx/jyandroid/Extensions/IRootFloatingPanelModifier;
.implements Lcom/zjx/jyandroid/Extensions/ISettingsProvider;
.implements Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;


# static fields
.field public static L:Ljava/lang/String;

.field public static M:Ljava/lang/String;

.field public static N:Ljava/lang/String;


# instance fields
.field public A:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

.field public B:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:I

.field public G:I

.field public H:Z

.field public I:Ljava/util/concurrent/locks/ReentrantLock;

.field public J:Lcom/zjx/jyandroid/TouchManager;

.field public K:Z

.field public a:Lcom/zjx/jyandroid/Extensions/pubg/a;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ll/b;

.field public d:Lcom/zjx/jyandroid/Extensions/ExtensionManager;

.field public e:Landroid/content/Context;

.field public f:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

.field public g:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

.field public h:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

.field public i:Lcom/zjx/jyandroid/Extensions/pubg/e;

.field public j:Landroid/os/Handler;

.field public k:Lcom/zjx/jyandroid/Extensions/pubg/b;

.field public l:Lcom/zjx/jyandroid/Extensions/pubg/i;

.field public m:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

.field public n:Lcom/zjx/jyandroid/Extensions/pubg/c$e;

.field public o:Lcom/zjx/jyandroid/Extensions/pubg/g;

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Lcom/zjx/jyandroid/ForegroundService/UI/a;

.field public v:Z

.field public w:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

.field public x:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

.field public y:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

.field public z:Lcom/zjx/jyandroid/Extensions/pubg/c$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getAppDocumentFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/pubg_extension/RCConfig/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/Extensions/pubg/d;->L:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getCopiesAssetsFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/pubgExtension/assets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/Extensions/pubg/d;->M:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getAppDocumentFolder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/Extensions/pubg/d;->N:Ljava/lang/String;

    const-string v0, "opencv_java3"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->j:Landroid/os/Handler;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/c$e;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/pubg/c$e;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->n:Lcom/zjx/jyandroid/Extensions/pubg/c$e;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->q:Z

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->y()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v1

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->u:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v1

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->c:Ll/b;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->d:Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->e:Landroid/content/Context;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    invoke-direct {v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;-><init>()V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->m:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->w:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->x:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$b;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->y:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$d;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->z:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$c;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->A:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$h;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->B:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->C:Z

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->D:Z

    iput-boolean v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->E:Z

    iput v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->F:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->G:I

    iput-boolean v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->H:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {}, Lcom/zjx/jyandroid/TouchManager;->f()Lcom/zjx/jyandroid/TouchManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->J:Lcom/zjx/jyandroid/TouchManager;

    iput-boolean v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->K:Z

    return-void
.end method

.method public static A(Z)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b;->y()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->WangzuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    if-ne v0, v1, :cond_1

    if-eqz p0, :cond_0

    const-string p0, "yq_default_android_pad"

    return-object p0

    :cond_0
    const-string p0, "yq_default_android"

    return-object p0

    :cond_1
    const-string p0, "yq_default_android_sc"

    return-object p0
.end method

.method public static F(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/d;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static H()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b;->y()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->WangzuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "com.zjx.pubg.recognition"

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.zjx.pubg.recognition."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "com.zjx.pubg.recognitionsc"

    return-object v0
.end method

.method public static synthetic a(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/c$e;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->n:Lcom/zjx/jyandroid/Extensions/pubg/c$e;

    return-object p0
.end method

.method public static synthetic b(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/i;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->l:Lcom/zjx/jyandroid/Extensions/pubg/i;

    return-object p0
.end method

.method public static synthetic c(Lcom/zjx/jyandroid/Extensions/pubg/d;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->b0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/zjx/jyandroid/Extensions/pubg/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->v:Z

    return p0
.end method

.method public static synthetic e(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->f:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    return-object p0
.end method

.method public static synthetic f(Lcom/zjx/jyandroid/Extensions/pubg/d;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->b:Ljava/util/Map;

    return-object p1
.end method

.method public static synthetic g(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/b;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->k:Lcom/zjx/jyandroid/Extensions/pubg/b;

    return-object p0
.end method

.method public static synthetic h(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/e;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->i:Lcom/zjx/jyandroid/Extensions/pubg/e;

    return-object p0
.end method

.method public static synthetic i(Lcom/zjx/jyandroid/Extensions/pubg/d;Lcom/zjx/jyandroid/Extensions/pubg/e;)Lcom/zjx/jyandroid/Extensions/pubg/e;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->i:Lcom/zjx/jyandroid/Extensions/pubg/e;

    return-object p1
.end method

.method public static synthetic j(Lcom/zjx/jyandroid/Extensions/pubg/d;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->I:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public static synthetic k(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/TouchManager;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->J:Lcom/zjx/jyandroid/TouchManager;

    return-object p0
.end method

.method public static synthetic l(Lcom/zjx/jyandroid/Extensions/pubg/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->t:Z

    return p0
.end method

.method public static synthetic m(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/c$g;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->x:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    return-object p0
.end method

.method public static synthetic n(Lcom/zjx/jyandroid/Extensions/pubg/d;Lcom/zjx/jyandroid/Extensions/pubg/c$g;)Lcom/zjx/jyandroid/Extensions/pubg/c$g;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->x:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    return-object p1
.end method

.method public static synthetic o(Lcom/zjx/jyandroid/Extensions/pubg/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->C:Z

    return p0
.end method

.method public static synthetic p(Lcom/zjx/jyandroid/Extensions/pubg/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->C:Z

    return p1
.end method

.method public static synthetic q(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/c$l;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->w:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    return-object p0
.end method

.method public static synthetic r(Lcom/zjx/jyandroid/Extensions/pubg/d;Lcom/zjx/jyandroid/Extensions/pubg/c$l;)Lcom/zjx/jyandroid/Extensions/pubg/c$l;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->w:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    return-object p1
.end method

.method public static synthetic s(Lcom/zjx/jyandroid/Extensions/pubg/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->q:Z

    return p1
.end method

.method public static synthetic t(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/c$d;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->z:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    return-object p0
.end method

.method public static synthetic u(Lcom/zjx/jyandroid/Extensions/pubg/d;Lcom/zjx/jyandroid/Extensions/pubg/c$d;)Lcom/zjx/jyandroid/Extensions/pubg/c$d;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->z:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    return-object p1
.end method

.method public static synthetic v(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/c$c;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->A:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    return-object p0
.end method

.method public static synthetic w(Lcom/zjx/jyandroid/Extensions/pubg/d;Lcom/zjx/jyandroid/Extensions/pubg/c$c;)Lcom/zjx/jyandroid/Extensions/pubg/c$c;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->A:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    return-object p1
.end method

.method public static synthetic x(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/c$h;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->B:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    return-object p0
.end method

.method public static synthetic y(Lcom/zjx/jyandroid/Extensions/pubg/d;Lcom/zjx/jyandroid/Extensions/pubg/c$h;)Lcom/zjx/jyandroid/Extensions/pubg/c$h;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->B:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    return-object p1
.end method

.method public static synthetic z(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->m:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    return-object p0
.end method


# virtual methods
.method public B()Lcom/zjx/jyandroid/Extensions/pubg/a;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->a:Lcom/zjx/jyandroid/Extensions/pubg/a;

    return-object v0
.end method

.method public C()Lcom/zjx/jyandroid/Extensions/pubg/b;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->k:Lcom/zjx/jyandroid/Extensions/pubg/b;

    return-object v0
.end method

.method public D()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->m:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    return-object v0
.end method

.method public E()Lcom/zjx/jyandroid/Extensions/pubg/g;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->o:Lcom/zjx/jyandroid/Extensions/pubg/g;

    return-object v0
.end method

.method public G()Lcom/zjx/jyandroid/Extensions/pubg/i;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->l:Lcom/zjx/jyandroid/Extensions/pubg/i;

    return-object v0
.end method

.method public I()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->b:Ljava/util/Map;

    return-object v0
.end method

.method public J()Lcom/zjx/jyandroid/Extensions/pubg/c$l;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->w:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    return-object v0
.end method

.method public K()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->v:Z

    return v0
.end method

.method public declared-synchronized L()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->K:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public M()Z
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->f:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public N()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->p:Z

    return v0
.end method

.method public O()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->r:Z

    return v0
.end method

.method public declared-synchronized P()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->h:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->d0()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->e:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/zjx/jyandroid/R$layout;->pubg_adjust_dynamic_rc_value_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->h:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0xdc

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v2

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v3

    const/16 v5, 0x8

    const/4 v6, -0x3

    const/16 v4, 0x7f6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {v1}, Lcom/zjx/jyandroid/Extensions/pubg/f;-><init>()V

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/pubg/f;->g()Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->c:Ll/b;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->h:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    invoke-virtual {v1, v2, v0}, Ll/b;->e(Lcom/zjx/jyandroid/base/BaseFloatingView;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->h:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->h:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;->d:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/d$h;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/d$h;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized Q()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->g:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->e0()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->e:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/zjx/jyandroid/R$layout;->pubg_adjust_rc_value_panel_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->g:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0xc8

    invoke-static {v1}, Lmdm/TabletScale;->dpx(I)I

    move-result v2

    const/16 v1, 0x64

    invoke-static {v1}, Lmdm/TabletScale;->dpx(I)I

    move-result v3

    const/16 v5, 0x8

    const/4 v6, -0x3

    const/16 v4, 0x7f6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {v1}, Lcom/zjx/jyandroid/Extensions/pubg/f;-><init>()V

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/pubg/f;->h()Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->c:Ll/b;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->g:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    invoke-virtual {v1, v2, v0}, Ll/b;->e(Lcom/zjx/jyandroid/base/BaseFloatingView;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->g:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->g:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;->d:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/d$i;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/d$i;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized R()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->g:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->f0()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->e:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/zjx/jyandroid/R$layout;->pubg_panel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->f:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x15

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v3

    const/16 v5, 0x8

    const/4 v6, -0x3

    const/16 v4, 0x7f6

    const/4 v2, -0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {v1}, Lcom/zjx/jyandroid/Extensions/pubg/f;-><init>()V

    const/16 v2, 0x33

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/pubg/f;->n()Landroid/graphics/Point;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->f:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    invoke-virtual {v2, v0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/pubg/f;->A()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->c:Ll/b;

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->f:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    invoke-virtual {v2, v3, v0}, Ll/b;->e(Lcom/zjx/jyandroid/base/BaseFloatingView;Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->f:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/pubg/f;->y()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->f:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/d$j;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/d$j;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final S()V
    .locals 1

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/d$a;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Extensions/pubg/d$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/d;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public T()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->f:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {v1}, Lcom/zjx/jyandroid/Extensions/pubg/f;-><init>()V

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/pubg/f;->o()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public U()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/d$e;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/d$e;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public V()V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->k:Lcom/zjx/jyandroid/Extensions/pubg/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->v()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->k:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->u()V

    return-void
.end method

.method public W(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->v:Z

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->U()V

    return-void
.end method

.method public declared-synchronized X(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->j:Landroid/os/Handler;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/d$b;

    invoke-direct {v1, p0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/d$b;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/d;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->l:Lcom/zjx/jyandroid/Extensions/pubg/i;

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/i;->p(Z)V

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->K:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public Y(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->f:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V

    :cond_0
    return-void
.end method

.method public Z(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->f:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->c:Ll/b;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->f:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    invoke-virtual {p1, v0}, Ll/b;->q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->f:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->c:Ll/b;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->f:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0, v1}, Ll/b;->e(Lcom/zjx/jyandroid/base/BaseFloatingView;Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->r:Z

    return-void
.end method

.method public final declared-synchronized b0(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/g;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {v1}, Lcom/zjx/jyandroid/Extensions/pubg/f;-><init>()V

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/pubg/f;->B()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/g;-><init>(Z)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->o:Lcom/zjx/jyandroid/Extensions/pubg/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/g;->j(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->l:Lcom/zjx/jyandroid/Extensions/pubg/i;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/i;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->l:Lcom/zjx/jyandroid/Extensions/pubg/i;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/i;->y()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    new-instance p1, Lcom/zjx/jyandroid/Extensions/pubg/i;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->o:Lcom/zjx/jyandroid/Extensions/pubg/g;

    invoke-direct {p1, v0}, Lcom/zjx/jyandroid/Extensions/pubg/i;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/g;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->l:Lcom/zjx/jyandroid/Extensions/pubg/i;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->a:Lcom/zjx/jyandroid/Extensions/pubg/a;

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object p1

    invoke-virtual {p1}, Ly/d;->j()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object p1

    sget-object v0, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->ShoucuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/zjx/jyandroid/Extensions/pubg/a;

    invoke-direct {p1}, Lcom/zjx/jyandroid/Extensions/pubg/a;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->a:Lcom/zjx/jyandroid/Extensions/pubg/a;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->l:Lcom/zjx/jyandroid/Extensions/pubg/i;

    iput-object p1, v0, Lcom/zjx/jyandroid/Extensions/pubg/i;->c:Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->WangzuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->l:Lcom/zjx/jyandroid/Extensions/pubg/i;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    move-result-object v0

    iput-object v0, p1, Lcom/zjx/jyandroid/Extensions/pubg/i;->c:Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->l:Lcom/zjx/jyandroid/Extensions/pubg/i;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/i;->w()V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->registerEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->m:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/d;->H()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/d$g;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/d$g;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/d;)V

    invoke-virtual {p1, v0, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->t(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to load recoil control config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/d$f;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Extensions/pubg/d$f;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/d;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final c0()V
    .locals 0

    return-void
.end method

.method public declared-synchronized d0()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->h:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->c:Ll/b;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->h:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    invoke-virtual {v0, v1}, Ll/b;->q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized e0()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->g:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->c:Ll/b;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->g:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    invoke-virtual {v0, v1}, Ll/b;->q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public eventOccurred(Ljava/util/LinkedList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/base/InputEvents/InputEvent;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->l:Lcom/zjx/jyandroid/Extensions/pubg/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->D:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v3

    sget-object v4, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->MouseButtonEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    if-ne v3, v4, :cond_5

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEvent;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEvent;->getButtonMask()I

    move-result v0

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->l:Lcom/zjx/jyandroid/Extensions/pubg/i;

    invoke-virtual {v0, v2}, Lcom/zjx/jyandroid/Extensions/pubg/i;->o(Z)V

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->H:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->s:Z

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->C:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->s:Z

    :cond_2
    iput-boolean v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->H:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->l:Lcom/zjx/jyandroid/Extensions/pubg/i;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/i;->o(Z)V

    iget v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->F:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->F:I

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->H:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->v:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->s:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->C:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->w:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    sget-object v3, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->u:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->S()V

    :cond_4
    iput-boolean v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->H:Z

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v3

    sget-object v4, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->KeyboardEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    if-ne v3, v4, :cond_6

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;

    iget v3, v0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;->usage:I

    const/16 v4, -0x20

    if-ne v3, v4, :cond_1

    iget-boolean v0, v0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;->down:Z

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->E:Z

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v3

    sget-object v4, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->ScrollEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->r:Z

    if-nez v3, :cond_7

    goto/16 :goto_0

    :cond_7
    iget-boolean v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->E:Z

    if-eqz v3, :cond_1

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/ScrollEvent;

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->l:Lcom/zjx/jyandroid/Extensions/pubg/i;

    iget v0, v0, Lcom/zjx/jyandroid/base/InputEvents/ScrollEvent;->y:I

    invoke-virtual {v3, v0}, Lcom/zjx/jyandroid/Extensions/pubg/i;->b(I)V

    goto/16 :goto_0

    :cond_8
    return v1

    :cond_9
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->a:Lcom/zjx/jyandroid/Extensions/pubg/a;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/a;->c:Landroid/graphics/Rect;

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->k:Lcom/zjx/jyandroid/Extensions/pubg/b;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->w(Ljava/util/LinkedList;)Z

    :cond_b
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;

    invoke-virtual {v3}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v4

    sget-object v5, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->TouchEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    if-ne v4, v5, :cond_c

    check-cast v3, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;

    iget-object v4, v3, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->touchType:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    sget-object v5, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->down:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    const/4 v6, -0x1

    if-ne v4, v5, :cond_e

    iget v5, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->G:I

    if-ne v5, v6, :cond_e

    new-instance v4, Lcom/zjx/jyandroid/base/FloatPoint;

    iget v5, v3, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->x:F

    iget v6, v3, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->y:F

    invoke-direct {v4, v5, v6}, Lcom/zjx/jyandroid/base/FloatPoint;-><init>(FF)V

    iget-object v5, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->a:Lcom/zjx/jyandroid/Extensions/pubg/a;

    iget-object v5, v5, Lcom/zjx/jyandroid/Extensions/pubg/a;->c:Landroid/graphics/Rect;

    invoke-static {v5, v4}, Lcom/zjx/jyandroid/base/util/b;->E(Landroid/graphics/Rect;Lcom/zjx/jyandroid/base/FloatPoint;)Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->a:Lcom/zjx/jyandroid/Extensions/pubg/a;

    iget-object v5, v5, Lcom/zjx/jyandroid/Extensions/pubg/a;->d:Landroid/graphics/Rect;

    invoke-static {v5, v4}, Lcom/zjx/jyandroid/base/util/b;->E(Landroid/graphics/Rect;Lcom/zjx/jyandroid/base/FloatPoint;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_d
    iget v3, v3, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->index:I

    iput v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->G:I

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->l:Lcom/zjx/jyandroid/Extensions/pubg/i;

    invoke-virtual {v3, v2}, Lcom/zjx/jyandroid/Extensions/pubg/i;->o(Z)V

    goto :goto_1

    :cond_e
    sget-object v5, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->up:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    if-ne v4, v5, :cond_c

    iget v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->G:I

    iget v3, v3, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->index:I

    if-ne v4, v3, :cond_c

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->l:Lcom/zjx/jyandroid/Extensions/pubg/i;

    invoke-virtual {v3, v1}, Lcom/zjx/jyandroid/Extensions/pubg/i;->o(Z)V

    iput v6, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->G:I

    goto :goto_1

    :cond_f
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->a:Lcom/zjx/jyandroid/Extensions/pubg/a;

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/a;->eventOccurred(Ljava/util/LinkedList;)Z

    move-result p1

    return p1
.end method

.method public final declared-synchronized f0()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->f:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->c:Ll/b;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->f:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    invoke-virtual {v0, v1}, Ll/b;->q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSettingsCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSettingsTitle(I)Ljava/lang/String;
    .locals 0

    sget p1, Lcom/zjx/jyandroid/R$string;->pubg_extension_text1:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSettingsViewResourceId(I)I
    .locals 0

    sget p1, Lcom/zjx/jyandroid/R$layout;->pubg_extension_settings_view:I

    return p1
.end method

.method public onCreate()V
    .locals 2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/d;->L:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/d;->N:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/d;->M:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->d:Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->registerSettingsProvider(Lcom/zjx/jyandroid/Extensions/ISettingsProvider;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->d:Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->unregisterSettingsProvider(Lcom/zjx/jyandroid/Extensions/ISettingsProvider;)V

    return-void
.end method

.method public onFloatingPanelDisplay(Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;)V
    .locals 7

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->e:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->e:Landroid/content/Context;

    sget v4, Lcom/zjx/jyandroid/R$drawable;->rootfloatingpanel_recognization_upload_icon:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/16 v4, 0x1b

    invoke-static {v4}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->e:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/zjx/jyandroid/R$string;->pubg_extension_text6:I

    invoke-static {v4}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41400000    # 12.0f

    const/4 v6, 0x2

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v0, v6}, Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;->a(Landroid/view/View;I)V

    new-instance p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/d$k;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/d;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onNewExtensionLoaded(Lcom/zjx/jyandroid/Extensions/IExtension;)V
    .locals 0

    return-void
.end method

.method public onNewExtensionUnloaded(Lcom/zjx/jyandroid/Extensions/IExtension;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onPause()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->f0()V

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->e0()V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->d0()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->i:Lcom/zjx/jyandroid/Extensions/pubg/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/e;->y()V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->i:Lcom/zjx/jyandroid/Extensions/pubg/e;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->m:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->d()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->d:Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->unregisterRootFloatingPanelModifier(Lcom/zjx/jyandroid/Extensions/IRootFloatingPanelModifier;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->k:Lcom/zjx/jyandroid/Extensions/pubg/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->v()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->k:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->s(Lcom/zjx/jyandroid/Extensions/pubg/b$i;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->k:Lcom/zjx/jyandroid/Extensions/pubg/b;

    :cond_2
    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->o:Lcom/zjx/jyandroid/Extensions/pubg/g;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->l:Lcom/zjx/jyandroid/Extensions/pubg/i;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->unregisterEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->l:Lcom/zjx/jyandroid/Extensions/pubg/i;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/i;->y()V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->l:Lcom/zjx/jyandroid/Extensions/pubg/i;

    :cond_3
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->k:Lcom/zjx/jyandroid/Extensions/pubg/b;

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->k:Lcom/zjx/jyandroid/Extensions/pubg/b;

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->p:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized onResume()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;-><init>()V

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object v1

    invoke-virtual {v1}, Ly/d;->j()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->WangzuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->D:Z

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->w()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iput-boolean v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->p:Z

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->d:Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    invoke-virtual {v1, p0}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->registerRootFloatingPanelModifier(Lcom/zjx/jyandroid/Extensions/IRootFloatingPanelModifier;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->R()V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->T()V

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-direct {v1}, Lcom/zjx/jyandroid/Extensions/pubg/b;-><init>()V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->k:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->i()Lcom/zjx/jyandroid/Extensions/pubg/c$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/b;->p(Lcom/zjx/jyandroid/Extensions/pubg/c$a;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->k:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->z()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->q(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->k:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object v1

    invoke-virtual {v1}, Ly/d;->j()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->ShoucuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    if-ne v1, v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {v0, v3}, Lcom/zjx/jyandroid/Extensions/pubg/b;->t(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->k:Lcom/zjx/jyandroid/Extensions/pubg/b;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/d$c;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/d$c;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/d;)V

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->s(Lcom/zjx/jyandroid/Extensions/pubg/b$i;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d;->m:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    const-string v1, "com.zjx.pubg.rcConfig"

    new-instance v2, Lcom/zjx/jyandroid/Extensions/pubg/d$d;

    invoke-direct {v2, p0}, Lcom/zjx/jyandroid/Extensions/pubg/d$d;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/d;)V

    invoke-virtual {v0, v1, v2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->t(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
