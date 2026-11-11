.class public Lcom/zjx/jyandroid/ForegroundService/UI/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;
.implements Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;
.implements Lcom/zjx/jyandroid/base/Interfaces/Focusable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/ForegroundService/UI/a$g;
    }
.end annotation


# static fields
.field public static A:Lcom/zjx/jyandroid/ForegroundService/UI/a;


# instance fields
.field public final a:Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

.field public b:Lcom/zjx/jyandroid/ForegroundService/UI/VirtualMouseView;

.field public c:I

.field public d:Landroid/view/WindowManager$LayoutParams;

.field public e:Landroid/content/Context;

.field public f:Lcom/zjx/jyandroid/TouchManager;

.field public g:I

.field public h:Z

.field public i:Ll/b;

.field public j:I

.field public k:I

.field public l:Landroid/os/Handler;

.field public m:Landroid/util/Size;

.field public n:Lcom/zjx/jyandroid/ForegroundService/MainService;

.field public o:Z

.field public p:F

.field public q:Z

.field public r:Ly/d;

.field public s:Ljava/lang/Thread;

.field public t:I

.field public u:Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

.field public v:Z

.field public w:Z

.field public x:[I

.field public y:Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEventConverter;

.field public z:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->j:I

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->k:I

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->i()Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->m:Landroid/util/Size;

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->o:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->p:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->t:I

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object v0

    invoke-virtual {v0}, Ly/d;->b()Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->u:Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->v:Z

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->w:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->x:[I

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/a$d;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/a$d;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/a;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->y:Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEventConverter;

    invoke-static {}, Lcom/zjx/jyandroid/TouchManager;->f()Lcom/zjx/jyandroid/TouchManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->f:Lcom/zjx/jyandroid/TouchManager;

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->i:Ll/b;

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->e:Landroid/content/Context;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->n:Lcom/zjx/jyandroid/ForegroundService/MainService;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->a:Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->r:Ly/d;

    invoke-virtual {p1}, Ly/d;->n()Z

    move-result p1

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->q:Z

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->r()V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->p()V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->l:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/zjx/jyandroid/ForegroundService/UI/a;)Lcom/zjx/jyandroid/ForegroundService/UI/VirtualMouseView;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/VirtualMouseView;

    return-object p0
.end method

.method public static synthetic b(Lcom/zjx/jyandroid/ForegroundService/UI/a;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->d:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public static synthetic c(Lcom/zjx/jyandroid/ForegroundService/UI/a;)Ll/b;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->i:Ll/b;

    return-object p0
.end method

.method public static synthetic d(Lcom/zjx/jyandroid/ForegroundService/UI/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->h:Z

    return p0
.end method

.method public static synthetic e(Lcom/zjx/jyandroid/ForegroundService/UI/a;)I
    .locals 0

    iget p0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->g:I

    return p0
.end method

.method public static synthetic f(Lcom/zjx/jyandroid/ForegroundService/UI/a;)Lcom/zjx/jyandroid/TouchManager;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->f:Lcom/zjx/jyandroid/TouchManager;

    return-object p0
.end method

.method public static y()Lcom/zjx/jyandroid/ForegroundService/UI/a;
    .locals 2

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->A:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->A:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    :cond_0
    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->A:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized A(Landroid/graphics/Point;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->q:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->w:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->i()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->m:Landroid/util/Size;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->a:Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->registerEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/VirtualMouseView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->e:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/zjx/jyandroid/R$layout;->virtual_mouse:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/VirtualMouseView;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/VirtualMouseView;

    const/16 v0, 0x7f6

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->c:I

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object v0

    invoke-virtual {v0}, Ly/d;->i()I

    move-result v0

    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v2

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v3

    iget v4, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->c:I

    const/16 v5, 0x8

    const/4 v6, -0x3

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v7, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x33

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x300

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->E()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->d:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->l:Landroid/os/Handler;

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/a$a;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/a$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public B()V
    .locals 2

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object v0

    invoke-virtual {v0}, Ly/d;->j()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->WangzuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$f;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zjx/jyandroid/ADB/ADBConnector;->sharedInstance()Lcom/zjx/jyandroid/ADB/ADBConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->getConnectionStatus()Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;->CONNECTED:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->l:Landroid/os/Handler;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/a$e;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/a$e;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public C()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->s:Ljava/lang/Thread;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->v:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/a$f;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/a$f;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->s:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public D()V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->s:Ljava/lang/Thread;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->s:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->s:Ljava/lang/Thread;

    return-void
.end method

.method public final declared-synchronized E()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/VirtualMouseView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->u:Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/VirtualMouseView;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/VirtualMouseView;->a:Landroid/widget/ImageView;

    sget v1, Lcom/zjx/jyandroid/R$drawable;->cursor4:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->n(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/VirtualMouseView;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/VirtualMouseView;->a:Landroid/widget/ImageView;

    sget v1, Lcom/zjx/jyandroid/R$drawable;->cursor3:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->n(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/VirtualMouseView;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/VirtualMouseView;->a:Landroid/widget/ImageView;

    sget v1, Lcom/zjx/jyandroid/R$drawable;->cursor2:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->n(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/VirtualMouseView;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/VirtualMouseView;->a:Landroid/widget/ImageView;

    sget v1, Lcom/zjx/jyandroid/R$drawable;->cursor:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->n(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

.method public eventOccurred(Ljava/util/LinkedList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/base/InputEvents/InputEvent;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->MouseMoveEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    if-ne v1, v2, :cond_1

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/MouseMoveEvent;

    iget v1, v0, Lcom/zjx/jyandroid/base/InputEvents/MouseMoveEvent;->x:I

    iget v0, v0, Lcom/zjx/jyandroid/base/InputEvents/MouseMoveEvent;->y:I

    invoke-virtual {p0, v1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->movedRelative(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->MouseButtonEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    if-ne v1, v2, :cond_2

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEvent;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->y:Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEventConverter;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEvent;->getButtonMask()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEventConverter;->mouseButtonMaskChanged(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->KeyboardEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    if-ne v1, v2, :cond_4

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;

    iget v1, v0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;->usage:I

    iget v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->t:I

    if-ne v1, v2, :cond_0

    iget-boolean v0, v0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;->down:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->C()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->D()V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->ScrollEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    if-ne v1, v2, :cond_0

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/ScrollEvent;

    iget v0, v0, Lcom/zjx/jyandroid/base/InputEvents/ScrollEvent;->y:I

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->t(I)V

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public g()Landroid/graphics/Point;
    .locals 4

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->d:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->j:I

    add-int/2addr v2, v3

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v3, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->k:I

    add-int/2addr v1, v3

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public h()Lcom/zjx/jyandroid/ForegroundService/UI/a$g;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->u:Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

    return-object v0
.end method

.method public i()F
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->p:F

    return v0
.end method

.method public isFocusing()Z
    .locals 1

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->m()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public declared-synchronized j()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->o(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->a:Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->unregisterEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->l:Landroid/os/Handler;

    new-instance v2, Lcom/zjx/jyandroid/ForegroundService/UI/a$b;

    invoke-direct {v2, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/a$b;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/a;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->w:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->v:Z

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->q:Z

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->w:Z

    return v0
.end method

.method public moveAbsolute(II)V
    .locals 0

    return-void
.end method

.method public movedRelative(II)V
    .locals 1

    int-to-float p1, p1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->p:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p2, p2

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->movedRelativeRaw(II)V

    return-void
.end method

.method public declared-synchronized movedRelativeRaw(II)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->d:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v2, p2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v2, 0x0

    if-gtz v1, :cond_1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->m:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-le v1, v0, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->m:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->i()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->m:Landroid/util/Size;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->d:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-gtz v1, :cond_3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->m:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-le v1, v0, :cond_4

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->m:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->i()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->m:Landroid/util/Size;

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->l:Landroid/os/Handler;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/a$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/a$c;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/a;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized n(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->h:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->q:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/VirtualMouseView;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->x:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->f:Lcom/zjx/jyandroid/TouchManager;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->x:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    add-int/lit8 v1, v1, -0x3

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    add-int/lit8 v0, v0, -0x4

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Lcom/zjx/jyandroid/TouchManager;->i(FF)I

    move-result p1

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->g:I

    iput-boolean v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

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

    throw p1
.end method

.method public declared-synchronized o(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->h:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->q:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->f:Lcom/zjx/jyandroid/TouchManager;

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->g:I

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->x:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    add-int/lit8 v3, v3, -0x3

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v1, v1, v4

    add-int/lit8 v1, v1, -0x4

    int-to-float v1, v1

    invoke-virtual {p1, v0, v3, v1}, Lcom/zjx/jyandroid/TouchManager;->o(IFF)V

    iput-boolean v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

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

    throw p1
.end method

.method public onFocusGain()V
    .locals 0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->z()V

    return-void
.end method

.method public onFocusLose()V
    .locals 0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->j()V

    return-void
.end method

.method public p()V
    .locals 1

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object v0

    invoke-virtual {v0}, Ly/d;->g()I

    move-result v0

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->t:I

    return-void
.end method

.method public declared-synchronized q()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->r:Ly/d;

    invoke-virtual {v0}, Ly/d;->n()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->q:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->j()V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->onFocusGain()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->z()V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->onFocusLose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public declared-synchronized r()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->r:Ly/d;

    invoke-virtual {v0}, Ly/d;->h()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->p:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized s()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/VirtualMouseView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->r:Ly/d;

    invoke-virtual {v1}, Ly/d;->i()I

    move-result v1

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/VirtualMouseView;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->updateWindowParams(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public t(I)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->z:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$g;->a(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->g()Landroid/graphics/Point;

    move-result-object v1

    const/4 v2, -0x5

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Point;->offset(II)V

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->z:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    iput-object v1, v2, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->center:Landroid/graphics/Point;

    invoke-virtual {v2, v0, p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->movedRelative(II)V

    return-void
.end method

.method public u(Lcom/zjx/jyandroid/ForegroundService/UI/a$g;)V
    .locals 1

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Ly/d;->t(Lcom/zjx/jyandroid/ForegroundService/UI/a$g;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->u:Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->E()V

    return-void
.end method

.method public v(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->v:Z

    return-void
.end method

.method public w(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->z:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->onFocusLose()V

    :cond_0
    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->z:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->onFocusGain()V

    :cond_1
    return-void
.end method

.method public x(F)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->p:F

    return-void
.end method

.method public z()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    float-to-int v0, v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->A(Landroid/graphics/Point;)V

    return-void
.end method

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
