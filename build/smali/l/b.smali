.class public Ll/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static m:Ll/b;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/WindowManager;

.field public c:Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;

.field public d:Lcom/zjx/jyandroid/base/BaseFloatingView;

.field public e:Landroid/os/Handler;

.field public f:Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;

.field public g:Lcom/zjx/jyandroid/base/util/ToastView;

.field public h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/zjx/jyandroid/base/BaseFloatingView;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

.field public j:Lm/a;

.field public k:Lt/a;

.field public l:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ll/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ll/b;->l:Landroid/os/Handler;

    sput-object p0, Ll/b;->m:Ll/b;

    iput-object p1, p0, Ll/b;->a:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Ll/b;->b:Landroid/view/WindowManager;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ll/b;->h:Ljava/util/HashSet;

    return-void
.end method

.method public static synthetic a(Ll/b;Lcom/zjx/jyandroid/base/BaseFloatingView;)V
    .locals 0

    invoke-virtual {p0, p1}, Ll/b;->r(Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    return-void
.end method

.method public static i()I
    .locals 1

    const/16 v0, 0x300

    return v0
.end method

.method public static t()Ll/b;
    .locals 1

    sget-object v0, Ll/b;->m:Ll/b;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/zjx/jyandroid/base/BaseFloatingView;IIIII)V
    .locals 8

    invoke-static {}, Ll/b;->i()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Ll/b;->d(Lcom/zjx/jyandroid/base/BaseFloatingView;IIIIII)V

    return-void
.end method

.method public c(Lcom/zjx/jyandroid/base/BaseFloatingView;IIIII)V
    .locals 8

    const/16 v7, 0x8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Ll/b;->d(Lcom/zjx/jyandroid/base/BaseFloatingView;IIIIII)V

    return-void
.end method

.method public d(Lcom/zjx/jyandroid/base/BaseFloatingView;IIIIII)V
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x3

    const/16 v3, 0x7f6

    move-object v0, v6

    move v1, p4

    move v2, p5

    move v4, p7

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput p6, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput p2, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p3, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0, p1, v6}, Ll/b;->e(Lcom/zjx/jyandroid/base/BaseFloatingView;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public e(Lcom/zjx/jyandroid/base/BaseFloatingView;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ll/b;->f(Lcom/zjx/jyandroid/base/BaseFloatingView;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public final f(Lcom/zjx/jyandroid/base/BaseFloatingView;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object v0

    invoke-virtual {v0}, Ly/d;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ll/a;->o(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Ll/b;->b:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Ll/b;->h:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    iget-object p2, p0, Ll/b;->b:Landroid/view/WindowManager;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setWindowManager(Landroid/view/WindowManager;)V

    iget-object p1, p0, Ll/b;->d:Lcom/zjx/jyandroid/base/BaseFloatingView;

    if-eqz p1, :cond_2

    new-instance p1, Ll/b$b;

    invoke-direct {p1, p0}, Ll/b$b;-><init>(Ll/b;)V

    iget-object p2, p0, Ll/b;->e:Landroid/os/Handler;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void
.end method

.method public declared-synchronized g(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll/b;->l:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Ll/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Ll/b$f;

    invoke-direct {v0, p0}, Ll/b$f;-><init>(Ll/b;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Ll/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    new-instance v0, Ll/b$g;

    invoke-direct {v0, p0, p1}, Ll/b$g;-><init>(Ll/b;Lcom/zjx/jyandroid/base/util/ToastView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object p1, p0, Ll/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    invoke-virtual {p0, p1}, Ll/b;->r(Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    iput-object v1, p0, Ll/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public h()Lcom/zjx/jyandroid/base/BaseFloatingView;
    .locals 1

    iget-object v0, p0, Ll/b;->d:Lcom/zjx/jyandroid/base/BaseFloatingView;

    return-object v0
.end method

.method public j()Landroid/util/Size;
    .locals 3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Ll/b;->b:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v1, Landroid/util/Size;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public declared-synchronized k()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll/b;->c:Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Ll/b;->r(Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ll/b;->c:Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;
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

.method public declared-synchronized l()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll/b;->c:Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

.method public declared-synchronized m()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll/b;->f:Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ll/b;->w()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Ll/b;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/zjx/jyandroid/R$layout;->root_floating_panel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;

    iput-object v0, p0, Ll/b;->f:Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;->getComponentsParentView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v5

    const/16 v0, 0x46

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v6

    iget-object v2, p0, Ll/b;->f:Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;

    const/16 v4, 0x32

    const/16 v7, 0x31

    const/4 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Ll/b;->c(Lcom/zjx/jyandroid/base/BaseFloatingView;IIIII)V

    iget-object v0, p0, Ll/b;->f:Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V
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

.method public declared-synchronized n()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll/b;->j:Lm/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lm/a;

    invoke-direct {v0}, Lm/a;-><init>()V

    iput-object v0, p0, Ll/b;->j:Lm/a;

    invoke-virtual {v0}, Lm/a;->a()V
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

.method public declared-synchronized o()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll/b;->k:Lt/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ll/b;->w()V

    new-instance v0, Lt/a;

    invoke-direct {v0}, Lt/a;-><init>()V

    iput-object v0, p0, Ll/b;->k:Lt/a;

    invoke-virtual {v0}, Lt/a;->a()V
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

.method public declared-synchronized p()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll/b;->i:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->onFocusLose()V

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b;->y()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->WangzuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->y()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->onFocusGain()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;-><init>()V

    iput-object v0, p0, Ll/b;->i:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    new-instance v1, Ll/b$c;

    invoke-direct {v1, p0}, Ll/b$c;-><init>(Ll/b;)V

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->O(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$B;)V

    iget-object v0, p0, Ll/b;->i:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->L()V
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

.method public q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V
    .locals 0

    invoke-virtual {p0, p1}, Ll/b;->r(Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    return-void
.end method

.method public final r(Lcom/zjx/jyandroid/base/BaseFloatingView;)V
    .locals 1

    iget-object v0, p0, Ll/b;->b:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Ll/b;->h:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setWindowManager(Landroid/view/WindowManager;)V

    return-void
.end method

.method public s(Lcom/zjx/jyandroid/base/BaseFloatingView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Ll/b;->d:Lcom/zjx/jyandroid/base/BaseFloatingView;

    iput-object p2, p0, Ll/b;->e:Landroid/os/Handler;

    return-void
.end method

.method public declared-synchronized u()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll/b;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/zjx/jyandroid/R$layout;->floating_ball:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;

    iput-object v0, p0, Ll/b;->c:Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

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

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Ll/b;->c:Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;

    invoke-virtual {p0, v1, v0}, Ll/b;->f(Lcom/zjx/jyandroid/base/BaseFloatingView;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Ll/b;->c:Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V

    iget-object v0, p0, Ll/b;->c:Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;

    new-instance v1, Ll/b$a;

    invoke-direct {v1, p0}, Ll/b$a;-><init>(Ll/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
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

.method public declared-synchronized v(Ljava/lang/String;JLcom/zjx/jyandroid/base/util/ToastView$a;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ll/b;->g(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Ll/b;->a:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v2, Lcom/zjx/jyandroid/R$layout;->toast_view:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/util/ToastView;

    iput-object v0, p0, Ll/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/ToastView;->a(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v6

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v8, 0x8

    const/4 v9, -0x3

    const/16 v7, 0x7f6

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v2, 0x31

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x14

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Ll/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    invoke-virtual {p0, v2, v0}, Ll/b;->f(Lcom/zjx/jyandroid/base/BaseFloatingView;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Ll/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/base/util/ToastView;->setToastText(Ljava/lang/String;)V

    iget-object p1, p0, Ll/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    invoke-virtual {p1, p4}, Lcom/zjx/jyandroid/base/util/ToastView;->setType(Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    iget-object p1, p0, Ll/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    const p4, 0x3e99999a    # 0.3f

    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Ll/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v4, 0xc8

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Ll/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    new-instance p4, Ll/b$d;

    invoke-direct {p4, p0}, Ll/b$d;-><init>(Ll/b;)V

    invoke-virtual {p1, p4}, Lcom/zjx/jyandroid/base/BaseFloatingView;->addOnTouchHandler(Lcom/zjx/jyandroid/base/Interfaces/MView$OnTouchHandler;)V

    iget-object p1, p0, Ll/b;->l:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Ll/b;->l:Landroid/os/Handler;

    new-instance p4, Ll/b$e;

    invoke-direct {p4, p0}, Ll/b$e;-><init>(Ll/b;)V

    invoke-virtual {p1, p4, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Ll/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    invoke-virtual {p1, v1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized w()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll/b;->f:Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Ll/b;->r(Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ll/b;->f:Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;
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

.method public declared-synchronized x()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll/b;->j:Lm/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lm/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Ll/b;->j:Lm/a;
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

.method public declared-synchronized y()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll/b;->k:Lt/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lt/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Ll/b;->k:Lt/a;
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

.method public declared-synchronized z()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll/b;->i:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->V()V

    const/4 v0, 0x0

    iput-object v0, p0, Ll/b;->i:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;
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
