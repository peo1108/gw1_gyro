.class public LB6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg7/b;


# static fields
.field public static volatile f:LB6/b;


# instance fields
.field public final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "LD7/a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/content/Context;

.field public c:Landroid/view/WindowManager;

.field public d:LD7/a;

.field public e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB6/b;->b:Landroid/content/Context;

    const-string v0, "-\u00aeZ\u00c5a\u000c"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, LB6/b;->c:Landroid/view/WindowManager;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, LB6/b;->a:Ljava/util/HashSet;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, LB6/b;->e:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic d(LB6/b;)LD7/a;
    .locals 0

    iget-object p0, p0, LB6/b;->d:LD7/a;

    return-object p0
.end method

.method public static synthetic e(LB6/b;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, LB6/b;->c:Landroid/view/WindowManager;

    return-object p0
.end method

.method public static g(Landroid/content/Context;)LB6/b;
    .locals 1

    sget-object v0, LB6/b;->f:LB6/b;

    if-nez v0, :cond_0

    new-instance v0, LB6/b;

    invoke-direct {v0, p0}, LB6/b;-><init>(Landroid/content/Context;)V

    sput-object v0, LB6/b;->f:LB6/b;

    sget-object p0, LB6/b;->f:LB6/b;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "\u001b\u00abF\u00c4o\u001f\u0091u\u00a1]\u00f9h\u0002\u00864\u009dC\u00f9w\u0005\u00bf%\u00db@"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k()LB6/b;
    .locals 1

    sget-object v0, LB6/b;->f:LB6/b;

    return-object v0
.end method


# virtual methods
.method public a(LD7/a;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/16 v0, 0x7f6

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, -0x3

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {p0, p1, p2}, LB6/b;->f(LD7/a;Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "6\u00a6M\u00ce{\u000f\u00984\u00b0N\u00f1zV\u00801\u00d3D\u00f8pQ\u00bc.\u0098K\u00e7\u0093\u0000"

    invoke-static/range {p2 .. p2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "-\u00aeZ\u00c5a\u000c\u00c86\u00a3A\u00f2f\u0002\u00c32\u00d8\n\u00f9q\u001d\u00b2"

    invoke-static/range {p2 .. p2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(LD7/a;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    const/4 v0, -0x3

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, LB6/b;->c:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1}, Lcom/zjx/gw2lic/SkipShot;->reapply(Landroid/view/View;)V

    return-void
.end method

.method public c(LD7/a;)V
    .locals 1

    iget-object v0, p0, LB6/b;->c:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, LB6/b;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LD7/a;->setWindowManager(Landroid/view/WindowManager;)V

    return-void
.end method

.method public final f(LD7/a;Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    if-eqz p1, :cond_4

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
    iget-object v0, p0, LB6/b;->c:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, LA6/e;->a0()LA6/e;

    move-result-object v0

    invoke-virtual {v0}, LA6/e;->c()LA6/e$a;

    move-result-object v0

    sget-object v1, LA6/e$a;->Y:LA6/e$a;

    if-ne v0, v1, :cond_3

    invoke-static {p1}, Lcom/zjx/gw2lic/SkipShot;->hide(Landroid/view/View;)V

    :cond_3
    iget-object p2, p0, LB6/b;->a:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, LB6/b;->c:Landroid/view/WindowManager;

    invoke-virtual {p1, p2}, LD7/a;->setWindowManager(Landroid/view/WindowManager;)V

    iget-object p1, p0, LB6/b;->d:LD7/a;

    if-eqz p1, :cond_4

    new-instance p1, LB6/b$a;

    invoke-direct {p1, p0}, LB6/b$a;-><init>(LB6/b;)V

    iget-object p2, p0, LB6/b;->e:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public h()LD7/a;
    .locals 1

    iget-object v0, p0, LB6/b;->d:LD7/a;

    return-object v0
.end method

.method public declared-synchronized i(LD7/a;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, LB6/b;->d:LD7/a;
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

.method public final j(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    const/4 v0, -0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    return-void
.end method
