.class public LY5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static o:LY5/b;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/WindowManager;

.field public c:Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;

.field public d:Lo6/b;

.field public e:Landroid/os/Handler;

.field public f:Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;

.field public g:Lcom/zjx/jyandroid/base/util/ToastView;

.field public h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lo6/b;",
            ">;"
        }
    .end annotation
.end field

.field public i:LJ6/b;

.field public j:LZ5/a;

.field public k:Li6/a;

.field public l:Landroid/os/Handler;

.field public m:Lg7/b;

.field public n:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LY5/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, LY5/b;->l:Landroid/os/Handler;

    sget-object v1, LB6/b;->f:LB6/b;

    iput-object v1, p0, LY5/b;->m:Lg7/b;

    iput-object v0, p0, LY5/b;->n:Landroid/view/View;

    sput-object p0, LY5/b;->o:LY5/b;

    iput-object p1, p0, LY5/b;->a:Landroid/content/Context;

    const-string v0, "-\u00aeZ\u00c5a\u000c"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, LY5/b;->b:Landroid/view/WindowManager;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, LY5/b;->h:Ljava/util/HashSet;

    return-void
.end method

.method public static synthetic a(LY5/b;Lo6/b;)V
    .locals 0

    invoke-virtual {p0, p1}, LY5/b;->t(Lo6/b;)V

    return-void
.end method

.method public static i()I
    .locals 1

    const/16 v0, 0x300

    return v0
.end method

.method public static v()LY5/b;
    .locals 1

    sget-object v0, LY5/b;->o:LY5/b;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized A()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LY5/b;->k:Li6/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Li6/a;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, LY5/b;->k:Li6/a;
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

.method public declared-synchronized B()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LY5/b;->i:LJ6/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, LJ6/b;->u()V

    const/4 v0, 0x0

    iput-object v0, p0, LY5/b;->i:LJ6/b;
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

.method public b(Lo6/b;IIIII)V
    .locals 8

    const/16 v7, 0x300

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, LY5/b;->d(Lo6/b;IIIIII)V

    return-void
.end method

.method public c(Lo6/b;IIIII)V
    .locals 8

    const/16 v7, 0x8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, LY5/b;->d(Lo6/b;IIIIII)V

    return-void
.end method

.method public d(Lo6/b;IIIIII)V
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

    iget p2, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p2, p2, 0x300

    iput p2, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0, p1, v6}, LY5/b;->e(Lo6/b;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public e(Lo6/b;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LY5/b;->f(Lo6/b;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public final f(Lo6/b;Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, LA6/e;->a0()LA6/e;

    move-result-object v0

    invoke-virtual {v0}, LA6/e;->c()LA6/e$a;

    move-result-object v0

    sget-object v1, LA6/e$a;->Y:LA6/e$a;

    if-ne v0, v1, :cond_1

    invoke-static {p2}, LY5/a;->o(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    :cond_1
    invoke-static {}, LA6/e;->a0()LA6/e;

    move-result-object v0

    invoke-virtual {v0}, LA6/e;->c()LA6/e$a;

    move-result-object v0

    sget-object v1, LA6/e$a;->Z:LA6/e$a;

    if-ne v0, v1, :cond_2

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_2
    :goto_0
    iget-object v0, p0, LY5/b;->b:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, LA6/e;->a0()LA6/e;

    move-result-object v0

    invoke-virtual {v0}, LA6/e;->c()LA6/e$a;

    move-result-object v0

    sget-object v1, LA6/e$a;->Y:LA6/e$a;

    if-ne v0, v1, :cond_3

    invoke-static {p1}, Lcom/zjx/gw2lic/SkipShot;->hide(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, LY5/b;->h:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p2}, Lo6/b;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    iget-object p2, p0, LY5/b;->b:Landroid/view/WindowManager;

    invoke-virtual {p1, p2}, Lo6/b;->setWindowManager(Landroid/view/WindowManager;)V

    iget-object p1, p0, LY5/b;->d:Lo6/b;

    if-eqz p1, :cond_5

    new-instance p1, LY5/b$b;

    invoke-direct {p1, p0}, LY5/b$b;-><init>(LY5/b;)V

    iget-object p2, p0, LY5/b;->e:Landroid/os/Handler;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, LY5/b$b;->run()V

    :cond_5
    :goto_1
    return-void
.end method

.method public declared-synchronized g(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LY5/b;->l:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, LY5/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;
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

    new-instance v0, LY5/b$f;

    invoke-direct {v0, p0}, LY5/b$f;-><init>(LY5/b;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, LY5/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    new-instance v0, LY5/b$g;

    invoke-direct {v0, p0, p1}, LY5/b$g;-><init>(LY5/b;Lcom/zjx/jyandroid/base/util/ToastView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object p1, p0, LY5/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    invoke-virtual {p0, p1}, LY5/b;->t(Lo6/b;)V

    iput-object v1, p0, LY5/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;
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

.method public h()Lo6/b;
    .locals 1

    iget-object v0, p0, LY5/b;->d:Lo6/b;

    return-object v0
.end method

.method public j()Landroid/util/Size;
    .locals 3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, LY5/b;->b:Landroid/view/WindowManager;

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
    iget-object v0, p0, LY5/b;->c:Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, LY5/b;->t(Lo6/b;)V

    const/4 v0, 0x0

    iput-object v0, p0, LY5/b;->c:Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;
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
    iget-object v0, p0, LY5/b;->c:Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;
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
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LY5/b;->f:Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LY5/b;->y()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, LY5/b;->a:Landroid/content/Context;

    const-string v1, "6\u00a6M\u00ce{\u000f\u00b7<\u00acI\u00f0h\u0002\u0086\""

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/zjx/jyandroid/e$h;->V0:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;

    iput-object v0, p0, LY5/b;->f:Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;

    const/16 v0, 0x32

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v1

    iget-object v2, p0, LY5/b;->f:Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;->getComponentsParentView()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    mul-int/2addr v2, v1

    const/16 v1, 0x46

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v1

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, 0x0

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v0, 0x31

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v0, 0x8

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, LY5/b;->m:Lg7/b;

    iget-object v1, p0, LY5/b;->f:Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;

    invoke-interface {v0, v1, v3}, Lg7/b;->a(LD7/a;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, LY5/b;->f:Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LD7/a;->setDraggable(Z)V
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
    iget-object v0, p0, LY5/b;->j:LZ5/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, LZ5/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LY5/b;->j:LZ5/a;

    invoke-virtual {v0}, LZ5/a;->a()V
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
    iget-object v0, p0, LY5/b;->k:Li6/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, LY5/b;->y()V

    new-instance v0, Li6/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LY5/b;->k:Li6/a;

    invoke-virtual {v0}, Li6/a;->c()V
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
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;
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

.method public declared-synchronized q()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized r()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LY5/b;->i:LJ6/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/zjx/jyandroid/base/util/b;->E()Lr6/e;

    move-result-object v0

    sget-object v1, Lr6/e;->X:Lr6/e;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->F()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, LJ6/b;

    invoke-direct {v0}, LJ6/b;-><init>()V

    iput-object v0, p0, LY5/b;->i:LJ6/b;

    new-instance v1, LY5/b$c;

    invoke-direct {v1, p0}, LY5/b$c;-><init>(LY5/b;)V

    invoke-virtual {v0, v1}, LJ6/b;->U(LJ6/b$y;)V

    iget-object v0, p0, LY5/b;->i:LJ6/b;

    invoke-virtual {v0}, LJ6/b;->m()V
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

.method public s(Lo6/b;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, LY5/b;->t(Lo6/b;)V

    return-void
.end method

.method public final t(Lo6/b;)V
    .locals 1

    iget-object v0, p0, LY5/b;->b:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, LY5/b;->h:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo6/b;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p1, v0}, Lo6/b;->setWindowManager(Landroid/view/WindowManager;)V

    return-void
.end method

.method public u(Lo6/b;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, LY5/b;->d:Lo6/b;

    iput-object p2, p0, LY5/b;->e:Landroid/os/Handler;

    return-void
.end method

.method public declared-synchronized w()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LY5/b;->a:Landroid/content/Context;

    const-string v1, "6\u00a6M\u00ce{\u000f\u00b7<\u00acI\u00f0h\u0002\u0086\""

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/zjx/jyandroid/e$h;->K:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;

    iput-object v0, p0, LY5/b;->c:Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$h;->j()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v2

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v3

    const/16 v5, 0x8

    const/4 v6, -0x3

    const/16 v4, 0x7f6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x33

    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v0, 0x0

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, LY5/b;->c:Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;

    invoke-virtual {p0, v0, v7}, LY5/b;->f(Lo6/b;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, LY5/b;->c:Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo6/b;->setDraggable(Z)V

    iget-object v0, p0, LY5/b;->c:Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;

    new-instance v1, LY5/b$a;

    invoke-direct {v1, p0}, LY5/b$a;-><init>(LY5/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, LY5/b;->c:Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;

    invoke-static {}, LA6/e;->a0()LA6/e;

    move-result-object v1

    invoke-virtual {v1}, LA6/e;->e()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V
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

.method public declared-synchronized x(Ljava/lang/String;JLcom/zjx/jyandroid/base/util/ToastView$a;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LY5/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, LY5/b;->g(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, LY5/b;->a:Landroid/content/Context;

    const-string v2, "6\u00a6M\u00ce{\u000f\u00b7<\u00acI\u00f0h\u0002\u0086\""

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v2, Lcom/zjx/jyandroid/e$h;->m1:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/util/ToastView;

    iput-object v0, p0, LY5/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/ToastView;->D0(Ljava/lang/String;)Landroid/util/Size;

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

    iget-object v2, p0, LY5/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    invoke-virtual {p0, v2, v0}, LY5/b;->f(Lo6/b;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, LY5/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/base/util/ToastView;->setToastText(Ljava/lang/String;)V

    iget-object p1, p0, LY5/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    invoke-virtual {p1, p4}, Lcom/zjx/jyandroid/base/util/ToastView;->setType(Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    iget-object p1, p0, LY5/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    const p4, 0x3e99999a    # 0.3f

    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, LY5/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v4, 0xc8

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, LY5/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    new-instance p4, LY5/b$d;

    invoke-direct {p4, p0}, LY5/b$d;-><init>(LY5/b;)V

    invoke-virtual {p1, p4}, Lo6/b;->s0(Lu6/c$a;)V

    iget-object p1, p0, LY5/b;->l:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, LY5/b;->l:Landroid/os/Handler;

    new-instance p4, LY5/b$e;

    invoke-direct {p4, p0}, LY5/b$e;-><init>(LY5/b;)V

    invoke-virtual {p1, p4, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, LY5/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    invoke-virtual {p1, v1}, Lo6/b;->setDraggable(Z)V
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

.method public declared-synchronized y()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LY5/b;->f:Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, LY5/b;->m:Lg7/b;

    invoke-interface {v1, v0}, Lg7/b;->c(LD7/a;)V

    const/4 v0, 0x0

    iput-object v0, p0, LY5/b;->f:Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;
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
    iget-object v0, p0, LY5/b;->j:LZ5/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, LZ5/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, LY5/b;->j:LZ5/a;
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
