.class public Lcom/zjx/jyandroid/Extensions/pubg/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/pubg/b$i;,
        Lcom/zjx/jyandroid/Extensions/pubg/b$k;,
        Lcom/zjx/jyandroid/Extensions/pubg/b$c;,
        Lcom/zjx/jyandroid/Extensions/pubg/b$l;,
        Lcom/zjx/jyandroid/Extensions/pubg/b$g;,
        Lcom/zjx/jyandroid/Extensions/pubg/b$e;,
        Lcom/zjx/jyandroid/Extensions/pubg/b$f;,
        Lcom/zjx/jyandroid/Extensions/pubg/b$d;,
        Lcom/zjx/jyandroid/Extensions/pubg/b$j;,
        Lcom/zjx/jyandroid/Extensions/pubg/b$h;
    }
.end annotation


# instance fields
.field public A:Lcom/zjx/jyandroid/Extensions/pubg/b$e;

.field public B:Lcom/zjx/jyandroid/Extensions/pubg/b$f;

.field public C:Lcom/zjx/jyandroid/Extensions/pubg/b$d;

.field public D:Lcom/zjx/jyandroid/Extensions/pubg/b$j;

.field public E:Lcom/zjx/jyandroid/Extensions/pubg/f;

.field public F:Z

.field public G:Lcom/zjx/jyandroid/Extensions/pubg/b$i;

.field public H:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

.field public I:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

.field public J:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

.field public a:Lcom/zjx/jyandroid/ScreenCaptureManager;

.field public b:Lcom/zjx/jyandroid/Extensions/pubg/c$a;

.field public c:Z

.field public d:Z

.field public e:Landroid/graphics/Rect;

.field public f:Landroid/graphics/Rect;

.field public g:Landroid/graphics/Rect;

.field public h:Landroid/graphics/Rect;

.field public i:Landroid/graphics/Rect;

.field public j:Landroid/graphics/Rect;

.field public k:Landroid/graphics/Rect;

.field public l:Landroid/graphics/Rect;

.field public m:Landroid/graphics/Rect;

.field public n:Landroid/graphics/Rect;
    .annotation build Landroidx/test/annotation/Beta;
    .end annotation
.end field

.field public o:Landroid/graphics/Rect;
    .annotation build Landroidx/test/annotation/Beta;
    .end annotation
.end field

.field public p:I

.field public q:I

.field public r:Landroid/graphics/Rect;

.field public s:Landroid/graphics/Rect;

.field public t:Landroid/graphics/Rect;

.field public u:Landroid/graphics/Rect;

.field public v:Landroid/graphics/Rect;

.field public w:Landroid/graphics/Rect;

.field public x:Lcom/zjx/jyandroid/Extensions/pubg/b$g;

.field public y:Lcom/zjx/jyandroid/Extensions/pubg/b$l;

.field public z:Lcom/zjx/jyandroid/Extensions/pubg/b$c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/ScreenCaptureManager;->sharedInstance()Lcom/zjx/jyandroid/ScreenCaptureManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->a:Lcom/zjx/jyandroid/ScreenCaptureManager;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$a;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->c:Z

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {v1}, Lcom/zjx/jyandroid/Extensions/pubg/f;-><init>()V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->E:Lcom/zjx/jyandroid/Extensions/pubg/f;

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->F:Z

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Extensions/pubg/b$k;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/b;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->H:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Extensions/pubg/b$k;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/b;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->I:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->J:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    return-void
.end method

.method public static synthetic a(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/b$i;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->G:Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    return-object p0
.end method

.method public static synthetic b(Lcom/zjx/jyandroid/Extensions/pubg/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->d:Z

    return p0
.end method

.method public static synthetic c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/b;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/c$k;
    .locals 0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->j()Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/b;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f(Lcom/zjx/jyandroid/Extensions/pubg/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->c:Z

    return p0
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;-><init>()V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->p()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getCopiesAssetsFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/pubgExtension/accessory_assets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/accessory_assets"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;-><init>()V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->p()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->i()Landroid/util/Size;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getCopiesAssetsFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/pubgExtension/weapons/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public h()Lcom/zjx/jyandroid/Extensions/pubg/c$a;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$a;

    return-object v0
.end method

.method public i()Lcom/zjx/jyandroid/Extensions/pubg/b$c;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->z:Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    return-object v0
.end method

.method public final j()Lcom/zjx/jyandroid/Extensions/pubg/c$k;
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->J:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->H:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->I:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    return-object v0

    :cond_1
    sget-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    return-object v0
.end method

.method public k()Lcom/zjx/jyandroid/Extensions/pubg/b$i;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->G:Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    return-object v0
.end method

.method public l()Lcom/zjx/jyandroid/Extensions/pubg/b$l;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->y:Lcom/zjx/jyandroid/Extensions/pubg/b$l;

    return-object v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->F:Z

    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->c:Z

    return v0
.end method

.method public p(Lcom/zjx/jyandroid/Extensions/pubg/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$a;

    return-void
.end method

.method public q(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->d:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->F:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unable to set collect image mode while starting. Please stop first"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(Lcom/zjx/jyandroid/Extensions/pubg/b$k;)V
    .locals 1

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->J:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->d:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->G:Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-interface {v0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/b$i;->e(Lcom/zjx/jyandroid/Extensions/pubg/c$l;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->G:Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-interface {p1, v0}, Lcom/zjx/jyandroid/Extensions/pubg/b$i;->e(Lcom/zjx/jyandroid/Extensions/pubg/c$l;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->y:Lcom/zjx/jyandroid/Extensions/pubg/b$l;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->c:Z

    :cond_2
    return-void
.end method

.method public s(Lcom/zjx/jyandroid/Extensions/pubg/b$i;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->G:Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    return-void
.end method

.method public t(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->c:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->z:Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->unregisterEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized u()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->d:Z

    iget-boolean v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->F:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/b$g;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/b$g;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/b;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->x:Lcom/zjx/jyandroid/Extensions/pubg/b$g;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->x:Lcom/zjx/jyandroid/Extensions/pubg/b$g;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/b$l;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/b$l;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/b;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->y:Lcom/zjx/jyandroid/Extensions/pubg/b$l;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->y:Lcom/zjx/jyandroid/Extensions/pubg/b$l;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    const-string v2, "pubgExtensionAimingStatusTrackingThread"

    invoke-direct {v1, p0, v2, v0}, Lcom/zjx/jyandroid/Extensions/pubg/b$c;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/b;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->z:Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->start()V

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/b$e;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/b$e;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/b;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->A:Lcom/zjx/jyandroid/Extensions/pubg/b$e;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->A:Lcom/zjx/jyandroid/Extensions/pubg/b$e;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/b$f;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/b$f;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/b;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->B:Lcom/zjx/jyandroid/Extensions/pubg/b$f;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->B:Lcom/zjx/jyandroid/Extensions/pubg/b$f;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {v1}, Lcom/zjx/jyandroid/Extensions/pubg/f;-><init>()V

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/pubg/f;->u()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/b$d;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/b$d;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/b;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->C:Lcom/zjx/jyandroid/Extensions/pubg/b$d;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->C:Lcom/zjx/jyandroid/Extensions/pubg/b$d;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/b$j;

    const-string v2, "pubgExtensionWeaponImageCollectionThread"

    invoke-direct {v1, p0, v2, v0}, Lcom/zjx/jyandroid/Extensions/pubg/b$j;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/b;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->D:Lcom/zjx/jyandroid/Extensions/pubg/b$j;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized v()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->d:Z

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Extensions/pubg/b$k;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/b;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->H:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Extensions/pubg/b$k;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/b;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->I:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->F:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->x:Lcom/zjx/jyandroid/Extensions/pubg/b$g;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->y:Lcom/zjx/jyandroid/Extensions/pubg/b$l;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->z:Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->quit()Z

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->A:Lcom/zjx/jyandroid/Extensions/pubg/b$e;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->B:Lcom/zjx/jyandroid/Extensions/pubg/b$f;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->C:Lcom/zjx/jyandroid/Extensions/pubg/b$d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->A:Lcom/zjx/jyandroid/Extensions/pubg/b$e;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->y:Lcom/zjx/jyandroid/Extensions/pubg/b$l;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->x:Lcom/zjx/jyandroid/Extensions/pubg/b$g;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->z:Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->B:Lcom/zjx/jyandroid/Extensions/pubg/b$f;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->C:Lcom/zjx/jyandroid/Extensions/pubg/b$d;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->D:Lcom/zjx/jyandroid/Extensions/pubg/b$j;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->quit()Z

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->D:Lcom/zjx/jyandroid/Extensions/pubg/b$j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public w(Ljava/util/LinkedList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/base/InputEvents/InputEvent;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->f:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->G:Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->z:Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->l(Ljava/util/LinkedList;)Z

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->y:Lcom/zjx/jyandroid/Extensions/pubg/b$l;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->c(Ljava/util/LinkedList;)Z

    :cond_2
    :goto_0
    return v1
.end method

.method public x(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "components"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    :try_start_0
    const-string v2, "type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    new-instance v3, Lr/e;

    invoke-direct {v3}, Lr/e;-><init>()V

    invoke-virtual {v3, v1}, Lr/e;->e(Ljava/util/Map;)V

    invoke-virtual {v3}, Lr/e;->b()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v2, :cond_2

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->e:Landroid/graphics/Rect;

    goto :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_1

    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->f:Landroid/graphics/Rect;

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->h:Landroid/graphics/Rect;

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->g:Landroid/graphics/Rect;

    goto :goto_0

    :cond_5
    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->i:Landroid/graphics/Rect;

    goto :goto_0

    :cond_6
    const/4 v3, 0x5

    if-ne v2, v3, :cond_7

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->j:Landroid/graphics/Rect;

    goto :goto_0

    :cond_7
    const/16 v3, 0x8

    if-ne v2, v3, :cond_8

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->r:Landroid/graphics/Rect;

    goto :goto_0

    :cond_8
    const/16 v3, 0xb

    if-ne v2, v3, :cond_9

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->s:Landroid/graphics/Rect;

    goto :goto_0

    :cond_9
    const/16 v3, 0x9

    if-ne v2, v3, :cond_a

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->t:Landroid/graphics/Rect;

    goto :goto_0

    :cond_a
    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->u:Landroid/graphics/Rect;

    goto :goto_0

    :cond_b
    const/16 v3, 0xa

    if-ne v2, v3, :cond_c

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->v:Landroid/graphics/Rect;

    goto :goto_0

    :cond_c
    const/16 v3, 0xd

    if-ne v2, v3, :cond_d

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->w:Landroid/graphics/Rect;

    goto :goto_0

    :cond_d
    const/16 v3, 0xe

    if-ne v2, v3, :cond_e

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->k:Landroid/graphics/Rect;

    goto :goto_0

    :cond_e
    const/4 v3, 0x6

    if-ne v2, v3, :cond_f

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->l:Landroid/graphics/Rect;

    goto/16 :goto_0

    :cond_f
    const/4 v3, 0x7

    if-ne v2, v3, :cond_10

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->m:Landroid/graphics/Rect;

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0x13

    if-ne v2, v3, :cond_11

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->n:Landroid/graphics/Rect;

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0x14

    if-ne v2, v3, :cond_1

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->o:Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :goto_1
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/b$a;

    invoke-direct {v3, p0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/b$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/b;Ljava/lang/Exception;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_12
    const-string v0, "weaponSize"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    const-string v1, "scopeSize"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->p:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->q:I

    goto :goto_2

    :cond_13
    const/4 p1, -0x1

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->p:I

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b;->q:I

    :goto_2
    return-void
.end method
