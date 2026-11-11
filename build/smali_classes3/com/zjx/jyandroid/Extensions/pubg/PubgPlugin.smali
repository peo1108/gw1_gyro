.class public Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;
.super LU6/a;

# interfaces
.implements LU6/d;
.implements LU6/e;
.implements Lu6/b;
.implements LU6/b;
.implements LZ6/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$o;,
        Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$q;,
        Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$p;
    }
.end annotation


# static fields
.field public static V6:Ljava/lang/String;

.field public static W6:Ljava/lang/String;

.field public static X6:Ljava/lang/String;


# instance fields
.field public A6:Z

.field public B6:Z

.field public C6:Lcom/zjx/jyandroid/ForegroundService/UI/a;

.field public D6:Z

.field public E6:Landroid/content/BroadcastReceiver;

.field public F6:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

.field public G6:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

.field public H6:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

.field public I6:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

.field public J6:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

.field public K6:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

.field public L6:Z

.field public M6:Z

.field public N6:Ls5/k$b;

.field public O6:I

.field public P6:I

.field public Q6:Z

.field public R6:I

.field public S6:Ljava/util/concurrent/locks/ReentrantLock;

.field public T6:Ls5/k;

.field public U6:Z

.field public V1:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public Z:Lcom/zjx/jyandroid/Extensions/pubg/a;

.field public drivingFlag:Z

.field public k6:Lg7/b;

.field public l6:LU6/c;

.field public m6:Landroid/content/Context;

.field public n6:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

.field public o6:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

.field public p6:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

.field public q6:Lcom/zjx/jyandroid/Extensions/pubg/e;

.field public r6:Landroid/os/Handler;

.field public s6:Lcom/zjx/jyandroid/Extensions/pubg/b;

.field public t6:Lcom/zjx/jyandroid/Extensions/pubg/i;

.field public u6:Lcom/zjx/jyandroid/ForegroundService/a;

.field public v6:Lcom/zjx/jyandroid/Extensions/pubg/c$e;

.field public w6:Lcom/zjx/jyandroid/Extensions/pubg/g;

.field public x6:Z

.field public y6:Z

.field public z6:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "u\u00b7A\u00c3i$\u008d-\u00b6J\u00f2z\u001f\u008c>\u0092x\u00d4G\u001e\u00b0-\u00d1B\u00bd"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->V6:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->k()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "u\u00b7A\u00c3i>\u0090!\u00a7A\u00ef`\u0019\u008d\u007f\u00dcY\u00e4a\u0005\u00add"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->W6:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->X6:Ljava/lang/String;

    const-string v0, "5\u00b7Q\u00cfm\r\u00b7?\u00a3Y\u00fd:"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, LU6/a;-><init>()V

    const-string v0, "9\u00a8Y\u008ft\u0011\u0090{\u00b2Z\u00fen\u0006\u008f%\u00daC\u00f9"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LU6/a;->l(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->r6:Landroid/os/Handler;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/c$e;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/pubg/c$e;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->v6:Lcom/zjx/jyandroid/Extensions/pubg/c$e;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->y6:Z

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->z6:Z

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->F()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v1

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->C6:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    sget-object v1, LB6/b;->f:LB6/b;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->k6:Lg7/b;

    invoke-static {}, LU6/c;->r()LU6/c;

    move-result-object v1

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->l6:LU6/c;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->m()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->m6:Landroid/content/Context;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/a;

    invoke-direct {v1}, Lcom/zjx/jyandroid/ForegroundService/a;-><init>()V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->u6:Lcom/zjx/jyandroid/ForegroundService/a;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$g;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$g;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->E6:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->X:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->F6:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->Y:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->G6:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$b;->X:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->H6:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$d;->X:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->I6:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$c;->X:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->J6:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$h;->X:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->K6:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->L6:Z

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->M6:Z

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$h;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$h;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->N6:Ls5/k$b;

    iput v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->O6:I

    iput v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->P6:I

    iput-boolean v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->Q6:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->R6:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->S6:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {}, Ls5/k;->i()Ls5/k;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->T6:Ls5/k;

    iput-boolean v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->U6:Z

    return-void
.end method

.method public static synthetic A(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->B6:Z

    return p0
.end method

.method public static synthetic B(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)Lcom/zjx/jyandroid/Extensions/pubg/c$e;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->v6:Lcom/zjx/jyandroid/Extensions/pubg/c$e;

    return-object p0
.end method

.method private declared-synchronized B0()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->n6:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->k6:Lg7/b;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->n6:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    invoke-interface {v0, v1}, Lg7/b;->c(LD7/a;)V
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

.method public static synthetic C(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)Lcom/zjx/jyandroid/Extensions/pubg/c$g;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->G6:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    return-object p0
.end method

.method public static synthetic D(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;Lcom/zjx/jyandroid/Extensions/pubg/c$g;)Lcom/zjx/jyandroid/Extensions/pubg/c$g;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->G6:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    return-object p1
.end method

.method public static synthetic E(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->L6:Z

    return p0
.end method

.method public static synthetic F(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->L6:Z

    return p1
.end method

.method public static synthetic G(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;I)I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->O6:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->O6:I

    return v0
.end method

.method public static synthetic H(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)Lcom/zjx/jyandroid/Extensions/pubg/c$l;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->F6:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    return-object p0
.end method

.method public static synthetic I(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;Lcom/zjx/jyandroid/Extensions/pubg/c$l;)Lcom/zjx/jyandroid/Extensions/pubg/c$l;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->F6:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    return-object p1
.end method

.method public static synthetic J(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->y6:Z

    return p1
.end method

.method public static synthetic K(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)Lcom/zjx/jyandroid/Extensions/pubg/c$d;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->I6:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    return-object p0
.end method

.method public static synthetic M(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;Lcom/zjx/jyandroid/Extensions/pubg/c$d;)Lcom/zjx/jyandroid/Extensions/pubg/c$d;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->I6:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    return-object p1
.end method

.method public static synthetic N(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)Lcom/zjx/jyandroid/Extensions/pubg/c$c;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->J6:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    return-object p0
.end method

.method public static synthetic O(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;Lcom/zjx/jyandroid/Extensions/pubg/c$c;)Lcom/zjx/jyandroid/Extensions/pubg/c$c;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->J6:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    return-object p1
.end method

.method public static S(Z)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b;->E()Lr6/e;

    move-result-object v0

    sget-object v1, Lr6/e;->X:Lr6/e;

    if-ne v0, v1, :cond_1

    if-eqz p0, :cond_0

    const-string p0, "#\u00b6U\u0092Q\u001f\u008d3\u00a3Z\u00f0})\u0082>\u00d9X\u00f8m\u0015\u0081;\u00d9A\u00a0"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "#\u00b6U\u0092Q\u001f\u008d3\u00a3Z\u00f0})\u0082>\u00d9X\u00f8m\u0015\u00ec"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "#\u00b6U\u0092Q\u001f\u008d3\u00a3Z\u00f0})\u0082>\u00d9X\u00f8m\u0015\u00818\u00db\u0017"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static X(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->V6:Ljava/lang/String;

    invoke-static {v0, v1, p0}, LE/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Z()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b;->E()Lr6/e;

    move-result-object v0

    sget-object v1, Lr6/e;->X:Lr6/e;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "9\u00a8Y\u008ft\u0011\u0090{\u00b2Z\u00fenX\u00915\u00deE\u00f0j\u0018\u00aa\"\u00d7K"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "9\u00a8Y\u008ft\u0011\u0090{\u00b2Z\u00fenX\u00915\u00deE\u00f0j\u0018\u00aa\"\u00d7K\u00bc"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "9\u00a8Y\u008ft\u0011\u0090{\u00b2Z\u00fenX\u00915\u00deE\u00f0j\u0018\u00aa\"\u00d7K\u00e1\u009c"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized j0()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->n6:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->B0()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->m6:Landroid/content/Context;

    const-string v1, "6\u00a6M\u00ce{\u000f\u00b7<\u00acI\u00f0h\u0002\u0086\""

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/zjx/jyandroid/e$h;->S0:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->n6:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x15

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

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

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->n6:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    invoke-virtual {v2, v0}, LD7/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/pubg/f;->B()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->k6:Lg7/b;

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->n6:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    invoke-interface {v2, v3, v0}, Lg7/b;->a(LD7/a;Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->n6:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/pubg/f;->z()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, LD7/a;->setDraggable(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->n6:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$b;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$b;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)V

    invoke-virtual {v0, v1}, LD7/a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
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

.method public static synthetic n(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)Lcom/zjx/jyandroid/Extensions/pubg/i;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->t6:Lcom/zjx/jyandroid/Extensions/pubg/i;

    return-object p0
.end method

.method public static synthetic o(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)Lcom/zjx/jyandroid/Extensions/pubg/b;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->s6:Lcom/zjx/jyandroid/Extensions/pubg/b;

    return-object p0
.end method

.method public static synthetic p(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)Lcom/zjx/jyandroid/Extensions/pubg/c$h;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->K6:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    return-object p0
.end method

.method public static synthetic q(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;Lcom/zjx/jyandroid/Extensions/pubg/c$h;)Lcom/zjx/jyandroid/Extensions/pubg/c$h;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->K6:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    return-object p1
.end method

.method public static synthetic r(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)Lcom/zjx/jyandroid/ForegroundService/a;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->u6:Lcom/zjx/jyandroid/ForegroundService/a;

    return-object p0
.end method

.method public static synthetic s(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->w0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic t(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->D6:Z

    return p0
.end method

.method public static synthetic u(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->n6:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    return-object p0
.end method

.method public static synthetic v(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->V1:Ljava/util/Map;

    return-object p1
.end method

.method public static synthetic w(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)Lcom/zjx/jyandroid/Extensions/pubg/e;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->q6:Lcom/zjx/jyandroid/Extensions/pubg/e;

    return-object p0
.end method

.method private declared-synchronized w0(Ljava/lang/String;)V
    .locals 3

    const-string v0, "\u000f\u00a9U\u00c3b\u001e\u00c8!\u00ad\u000f\u00f0f\u0017\u0087p\u00cfO\u00f4k\u0018\u00b2k\u00dbJ\u00fc\u008b\u001e\u00b6*\u0093C\u00e2\u0094\u0001\u00bd&\u0094;"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/g;

    new-instance v2, Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {v2}, Lcom/zjx/jyandroid/Extensions/pubg/f;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/g;-><init>(Z)V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->w6:Lcom/zjx/jyandroid/Extensions/pubg/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, p1}, Lcom/zjx/jyandroid/Extensions/pubg/g;->j(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->t6:Lcom/zjx/jyandroid/Extensions/pubg/i;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/i;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->t6:Lcom/zjx/jyandroid/Extensions/pubg/i;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/i;->z()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    new-instance p1, Lcom/zjx/jyandroid/Extensions/pubg/i;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->w6:Lcom/zjx/jyandroid/Extensions/pubg/g;

    invoke-direct {p1, v0}, Lcom/zjx/jyandroid/Extensions/pubg/i;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/g;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->t6:Lcom/zjx/jyandroid/Extensions/pubg/i;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->Z:Lcom/zjx/jyandroid/Extensions/pubg/a;

    invoke-static {}, LA6/e;->a0()LA6/e;

    move-result-object p1

    invoke-virtual {p1}, LA6/e;->q()Lr6/e;

    move-result-object p1

    sget-object v0, Lr6/e;->Y:Lr6/e;

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/zjx/jyandroid/Extensions/pubg/a;

    invoke-direct {p1}, Lcom/zjx/jyandroid/Extensions/pubg/a;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->Z:Lcom/zjx/jyandroid/Extensions/pubg/a;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->t6:Lcom/zjx/jyandroid/Extensions/pubg/i;

    iput-object p1, v0, Lcom/zjx/jyandroid/Extensions/pubg/i;->c:Lm7/d;

    goto :goto_1

    :cond_1
    sget-object v0, Lr6/e;->X:Lr6/e;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->t6:Lcom/zjx/jyandroid/Extensions/pubg/i;

    invoke-static {}, LF6/a;->r()LF6/a;

    move-result-object v0

    iput-object v0, p1, Lcom/zjx/jyandroid/Extensions/pubg/i;->c:Lm7/d;

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->t6:Lcom/zjx/jyandroid/Extensions/pubg/i;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/i;->x()V

    invoke-static {}, LR5/c;->l()LR5/c;

    move-result-object p1

    invoke-virtual {p1, p0}, LR5/c;->i(Lu6/b;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->u6:Lcom/zjx/jyandroid/ForegroundService/a;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->Z()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$m;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$m;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)V

    invoke-virtual {p1, v0, v1}, Lcom/zjx/jyandroid/ForegroundService/a;->t(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$b0;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LA6/d;->b(Ljava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$l;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$l;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)V

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

.method public static synthetic x(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;Lcom/zjx/jyandroid/Extensions/pubg/e;)Lcom/zjx/jyandroid/Extensions/pubg/e;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->q6:Lcom/zjx/jyandroid/Extensions/pubg/e;

    return-object p1
.end method

.method public static synthetic y(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->S6:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public static synthetic z(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)Ls5/k;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->T6:Ls5/k;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized A0()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->o6:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->k6:Lg7/b;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->o6:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    invoke-interface {v0, v1}, Lg7/b;->c(LD7/a;)V
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

.method public L(Ljava/util/LinkedList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Li7/c;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->t6:Lcom/zjx/jyandroid/Extensions/pubg/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->M6:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li7/c;

    invoke-virtual {v0}, Li7/c;->a()Li7/d;

    move-result-object v3

    sget-object v4, Li7/d;->m6:Li7/d;

    if-ne v3, v4, :cond_4

    check-cast v0, Li7/e;

    iget v3, v0, Li7/e;->c:I

    const/16 v4, -0x20

    if-ne v3, v4, :cond_2

    iget-boolean v0, v0, Li7/e;->d:Z

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->Q6:Z

    goto :goto_0

    :cond_2
    const v4, 0xfffe

    if-ne v3, v4, :cond_1

    iget-boolean v0, v0, Li7/e;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->t6:Lcom/zjx/jyandroid/Extensions/pubg/i;

    invoke-virtual {v0, v2}, Lcom/zjx/jyandroid/Extensions/pubg/i;->p(Z)V

    iput-boolean v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->A6:Z

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->L6:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->A6:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->t6:Lcom/zjx/jyandroid/Extensions/pubg/i;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/i;->p(Z)V

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->D6:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->A6:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->L6:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->F6:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    sget-object v3, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->X:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->i7:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->X6:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->Z:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->b7:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->l7:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->C6:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->k0()V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Li7/c;->a()Li7/d;

    move-result-object v3

    sget-object v4, Li7/d;->k6:Li7/d;

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->z6:Z

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    iget-boolean v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->Q6:Z

    if-eqz v3, :cond_1

    check-cast v0, Li7/j;

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->t6:Lcom/zjx/jyandroid/Extensions/pubg/i;

    iget v0, v0, Li7/j;->b:I

    invoke-virtual {v3, v0}, Lcom/zjx/jyandroid/Extensions/pubg/i;->c(I)V

    goto/16 :goto_0

    :cond_6
    return v1

    :cond_7
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->Z:Lcom/zjx/jyandroid/Extensions/pubg/a;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/a;->Z:Landroid/graphics/Rect;

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->s6:Lcom/zjx/jyandroid/Extensions/pubg/b;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->x(Ljava/util/LinkedList;)Z

    :cond_9
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li7/c;

    invoke-virtual {v3}, Li7/c;->a()Li7/d;

    move-result-object v4

    sget-object v5, Li7/d;->l6:Li7/d;

    if-ne v4, v5, :cond_a

    check-cast v3, Li7/l;

    iget-object v4, v3, Li7/l;->b:Li7/l$a;

    sget-object v5, Li7/l$a;->X:Li7/l$a;

    const/4 v6, -0x1

    if-ne v4, v5, :cond_c

    iget v5, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->R6:I

    if-ne v5, v6, :cond_c

    new-instance v4, Lo6/d;

    iget v5, v3, Li7/l;->d:F

    iget v6, v3, Li7/l;->e:F

    invoke-direct {v4, v5, v6}, Lo6/d;-><init>(FF)V

    iget-object v5, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->Z:Lcom/zjx/jyandroid/Extensions/pubg/a;

    iget-object v5, v5, Lcom/zjx/jyandroid/Extensions/pubg/a;->Z:Landroid/graphics/Rect;

    invoke-static {v5, v4}, Lcom/zjx/jyandroid/base/util/b;->K(Landroid/graphics/Rect;Lo6/d;)Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->Z:Lcom/zjx/jyandroid/Extensions/pubg/a;

    iget-object v5, v5, Lcom/zjx/jyandroid/Extensions/pubg/a;->V1:Landroid/graphics/Rect;

    invoke-static {v5, v4}, Lcom/zjx/jyandroid/base/util/b;->K(Landroid/graphics/Rect;Lo6/d;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_b
    iget v3, v3, Li7/l;->c:I

    iput v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->R6:I

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->t6:Lcom/zjx/jyandroid/Extensions/pubg/i;

    invoke-virtual {v3, v2}, Lcom/zjx/jyandroid/Extensions/pubg/i;->p(Z)V

    goto :goto_1

    :cond_c
    sget-object v5, Li7/l$a;->Z:Li7/l$a;

    if-ne v4, v5, :cond_a

    iget v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->R6:I

    iget v3, v3, Li7/l;->c:I

    if-ne v4, v3, :cond_a

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->t6:Lcom/zjx/jyandroid/Extensions/pubg/i;

    invoke-virtual {v3, v1}, Lcom/zjx/jyandroid/Extensions/pubg/i;->p(Z)V

    iput v6, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->R6:I

    goto :goto_1

    :cond_d
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->Z:Lcom/zjx/jyandroid/Extensions/pubg/a;

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/a;->L(Ljava/util/LinkedList;)Z

    move-result p1

    return p1
.end method

.method public final P(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, LA6/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1f

    const/16 v4, 0x1e

    const/4 v5, 0x0

    if-le v2, v3, :cond_0

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, LA6/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Ly6/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_2
    if-eqz v1, :cond_3

    new-instance p1, LF4/e;

    invoke-direct {p1}, LF4/e;-><init>()V

    const-class v0, Ljava/util/HashMap;

    invoke-virtual {p1, v1, v0}, LF4/e;->r(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "\u0013\u00a9W\u00ce|\t\u008d6\u00b6\u000f\u00fa`\u001a\u0086p\u00deE\u00f9p\u0014\u00b0?"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final Q(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-static {}, LA6/b;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1f

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {v0, p1}, Ly6/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public R(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->P(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public T()Lcom/zjx/jyandroid/Extensions/pubg/a;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->Z:Lcom/zjx/jyandroid/Extensions/pubg/a;

    return-object v0
.end method

.method public U()Lcom/zjx/jyandroid/Extensions/pubg/b;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->s6:Lcom/zjx/jyandroid/Extensions/pubg/b;

    return-object v0
.end method

.method public V()Lcom/zjx/jyandroid/ForegroundService/a;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->u6:Lcom/zjx/jyandroid/ForegroundService/a;

    return-object v0
.end method

.method public W()Lcom/zjx/jyandroid/Extensions/pubg/g;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->w6:Lcom/zjx/jyandroid/Extensions/pubg/g;

    return-object v0
.end method

.method public Y()Lcom/zjx/jyandroid/Extensions/pubg/i;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->t6:Lcom/zjx/jyandroid/Extensions/pubg/i;

    return-object v0
.end method

.method public a()Ll7/a;
    .locals 2

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/d;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$f;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$f;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)V

    invoke-direct {v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/d;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/d$b;)V

    return-object v0
.end method

.method public a0()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->V1:Ljava/util/Map;

    return-object v0
.end method

.method public b(Lr7/a;Lp7/a;)V
    .locals 4
    .param p1    # Lr7/a;
        .annotation build Li/P;
        .end annotation
    .end param
    .param p2    # Lp7/a;
        .annotation build Li/P;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$p;

    if-ne p2, v0, :cond_0

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$h;->i()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    add-int/lit16 p2, p2, -0x82

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lr7/a;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1}, Lr7/a;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/16 v3, 0x96

    add-int/2addr v2, v3

    invoke-direct {v0, p2, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0}, Lr7/a;->setFrame(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public b0()Lcom/zjx/jyandroid/Extensions/pubg/c$l;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->F6:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LU6/b$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, LU6/b$a;

    const-class v2, LK6/a;

    const-string v3, "\u0008\u00a2W\u00ceg\u0017\u00c8\u0014\u00a6E\u00e9z\u0002\u0086\""

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LU6/b$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, LU6/b$a;

    const-class v2, LP5/c;

    const-string v3, "\u0019\u00b5U\u00dbw[\u00bc4\u00b2"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LU6/b$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, LU6/b$a;

    const-class v2, LP5/b;

    const-string v3, "\t\u00aaU\u00d3z[\u00aa4\u00a1D\u00b1Z\u0001\u0082)\u009di\u00f6j\u0012\u00bb\'\u00d4D\u00e6\u0096\u0003\u00b7"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LU6/b$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, LU6/b$a;

    const-class v2, LP5/d;

    const-string v3, "\t\u00aaU\u00d3z[\u00ab\'\u00adZ\u00ffa"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LU6/b$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, LU6/b$a;

    const-class v2, LP5/e;

    const-string v3, "\t\u00b0]\u00d5m\u0013\u00c8\u0007\u00a7L\u00f3`\u001a\u00c3\u0000\u00dcD\u00f2h"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LU6/b$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, LU6/b$a;

    const-class v2, LP5/a;

    const-string v3, "\u0012\u00a8F\u00c8t\u0014\u0086!\u00a3C\u00bc[\u0013\u0080?\u00d4F\u00b7E\u0002\u00ad\"\u00cbQ"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LU6/b$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, LU6/b$a;

    const-class v2, LP5/f;

    const-string v3, "\t\u00aaU\u00d3z[\u00a54\u00a5A\u00f5o\u001f\u00801\u00c9C\u00f8jQ\u008d<\u00d1Q\u00f1\u0097"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LU6/b$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, LU6/b$a;

    const-class v2, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$p;

    const-string v3, "\u0015\u00a9Q\u008cM\u0017\u00816\u00a9\u000f\u00d8{\u0019\u0093"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LU6/b$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public c0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->D6:Z

    return v0
.end method

.method public d(I)I
    .locals 0

    sget p1, Lcom/zjx/jyandroid/e$h;->P0:I

    return p1
.end method

.method public declared-synchronized d0()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->U6:Z
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

.method public e(Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;)V
    .locals 7

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->m6:Landroid/content/Context;

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

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->m6:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->m6:Landroid/content/Context;

    sget v4, Lcom/zjx/jyandroid/e$e;->n0:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/16 v4, 0x1b

    invoke-static {v4}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->m6:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/zjx/jyandroid/e$k;->yc:I

    invoke-static {v4}, Lcom/zjx/jyandroid/base/util/b;->B(I)Ljava/lang/String;

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

    invoke-virtual {p1, v0, v6}, Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;->u0(Landroid/view/View;I)V

    new-instance p1, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$c;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$c;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public e0()Z
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->n6:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public f(Ljava/util/Map;Lp7/a;)Lr7/a;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Li/P;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lp7/a;",
            ")",
            "Lr7/a;"
        }
    .end annotation

    .annotation build Ldd/m;
    .end annotation

    new-instance p2, Lt7/a;

    invoke-direct {p2}, Lt7/a;-><init>()V

    invoke-virtual {p2, p1}, Lt7/a;->d(Ljava/util/Map;)V

    iget-object p2, p2, Lt7/a;->Z:Ljava/lang/String;

    invoke-static {}, LK6/a;->M0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, LK6/a;

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, LK6/a;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-static {}, LP5/b;->M0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p2, LP5/b;

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, LP5/b;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-static {}, LP5/d;->M0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p2, LP5/d;

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, LP5/d;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    invoke-static {}, LP5/e;->M0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p2, LP5/e;

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, LP5/e;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    invoke-static {}, LP5/a;->M0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p2, LP5/a;

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, LP5/a;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    invoke-static {}, LP5/f;->M0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p2, LP5/f;

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, LP5/f;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    invoke-static {}, LP5/c;->M0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p2, LP5/c;

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, LP5/c;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_7

    invoke-virtual {p2, p1}, Lr7/c;->d(Ljava/util/Map;)V

    :cond_7
    return-object p2
.end method

.method public f0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->x6:Z

    return v0
.end method

.method public g(I)Ljava/lang/String;
    .locals 0

    sget p1, Lcom/zjx/jyandroid/e$k;->tc:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->B(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->z6:Z

    return v0
.end method

.method public h()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized h0()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->p6:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->z0()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->m6:Landroid/content/Context;

    const-string v1, "6\u00a6M\u00ce{\u000f\u00b7<\u00acI\u00f0h\u0002\u0086\""

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/zjx/jyandroid/e$h;->H0:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->p6:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x104

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v2

    const/16 v1, 0xf0

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

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

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$h;->g()Landroid/util/Size;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v4

    if-gt v3, v4, :cond_1

    iget v3, v1, Landroid/graphics/Point;->x:I

    if-ltz v3, :cond_1

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-gt v3, v2, :cond_1

    iget v2, v1, Landroid/graphics/Point;->y:I

    if-gez v2, :cond_2

    :cond_1
    const/16 v2, 0x64

    iput v2, v1, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    :cond_2
    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->k6:Lg7/b;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->p6:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    invoke-interface {v1, v2, v0}, Lg7/b;->a(LD7/a;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->p6:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LD7/a;->setDraggable(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->p6:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;->h7:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$n;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$n;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)V

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

.method public declared-synchronized i0()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->o6:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->A0()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->m6:Landroid/content/Context;

    const-string v1, "6\u00a6M\u00ce{\u000f\u00b7<\u00acI\u00f0h\u0002\u0086\""

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/zjx/jyandroid/e$h;->K0:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->o6:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0xc8

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v2

    const/16 v1, 0x64

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

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

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->k6:Lg7/b;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->o6:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    invoke-interface {v1, v2, v0}, Lg7/b;->a(LD7/a;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->o6:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LD7/a;->setDraggable(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->o6:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;->h7:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$a;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)V

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

.method public k()Landroid/os/IBinder;
    .locals 1
    .annotation build Li/P;
    .end annotation

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$o;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$o;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)V

    return-object v0
.end method

.method public final k0()V
    .locals 1

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$d;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$d;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public l0(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$q;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->G6:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    sget-object v3, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->n6:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->o6:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->q6:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    if-ne v2, v3, :cond_0

    goto :goto_2

    :cond_0
    sget-object v3, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->l6:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->m6:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->p6:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v6

    goto :goto_4

    :cond_2
    :goto_0
    sget-object v2, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$q;->Z:Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$q;

    if-ne v1, v2, :cond_3

    :goto_1
    move v1, v5

    goto :goto_4

    :cond_3
    sget-object v2, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$q;->X:Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$q;

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_4
    :goto_2
    sget-object v2, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$q;->Y:Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$q;

    if-ne v1, v2, :cond_5

    :goto_3
    move v1, v4

    goto :goto_4

    :cond_5
    sget-object v2, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$q;->X:Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$q;

    if-ne v1, v2, :cond_1

    goto :goto_3

    :goto_4
    if-nez v1, :cond_6

    return-void

    :cond_6
    iget v2, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->P6:I

    iget v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->O6:I

    if-eq v2, v3, :cond_7

    move v2, v5

    goto :goto_5

    :cond_7
    move v2, v6

    :goto_5
    iget-boolean v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->L6:Z

    new-instance v7, Landroid/graphics/Point;

    iget-object v8, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->s6:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v8, v8, Lcom/zjx/jyandroid/Extensions/pubg/b;->f:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    iget-object v9, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->s6:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v9, v9, Lcom/zjx/jyandroid/Extensions/pubg/b;->f:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    new-instance v8, Lo6/d;

    invoke-direct {v8}, Lo6/d;-><init>()V

    const-wide/16 v16, 0xa

    if-nez v3, :cond_9

    iget-object v10, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->T6:Ls5/k;

    iget v6, v7, Landroid/graphics/Point;->x:I

    int-to-float v11, v6

    iget v6, v7, Landroid/graphics/Point;->y:I

    int-to-float v12, v6

    const/4 v13, 0x5

    const/4 v14, 0x5

    move-object v15, v8

    invoke-virtual/range {v10 .. v15}, Ls5/k;->m(FFIILo6/d;)I

    move-result v6

    :try_start_0
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v9, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->s6:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-virtual {v9}, Lcom/zjx/jyandroid/Extensions/pubg/b;->i()Lcom/zjx/jyandroid/Extensions/pubg/c$a;

    move-result-object v9

    sget-object v10, Lcom/zjx/jyandroid/Extensions/pubg/c$a;->X:Lcom/zjx/jyandroid/Extensions/pubg/c$a;

    if-ne v9, v10, :cond_8

    iget-object v9, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->T6:Ls5/k;

    iget v10, v8, Lo6/d;->a:F

    iget v11, v8, Lo6/d;->b:F

    invoke-virtual {v9, v6, v10, v11}, Ls5/k;->p(IFF)V

    :cond_8
    const-wide/16 v9, 0x1f4

    :try_start_1
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_9
    if-eqz v2, :cond_a

    new-instance v2, Landroid/graphics/Point;

    iget-object v9, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->s6:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v9, v9, Lcom/zjx/jyandroid/Extensions/pubg/b;->k:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    iget-object v10, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->s6:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v10, v10, Lcom/zjx/jyandroid/Extensions/pubg/b;->k:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    invoke-direct {v2, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    iget-object v10, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->T6:Ls5/k;

    iget v9, v2, Landroid/graphics/Point;->x:I

    int-to-float v11, v9

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v12, v2

    const/4 v13, 0x5

    const/4 v14, 0x5

    move-object v15, v8

    invoke-virtual/range {v10 .. v15}, Ls5/k;->m(FFIILo6/d;)I

    move-result v2

    :try_start_2
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    iget-object v9, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->T6:Ls5/k;

    iget v10, v8, Lo6/d;->a:F

    iget v11, v8, Lo6/d;->b:F

    invoke-virtual {v9, v2, v10, v11}, Ls5/k;->p(IFF)V

    :try_start_3
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_a
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    if-ne v1, v5, :cond_b

    new-instance v2, Landroid/graphics/Point;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->s6:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/b;->m:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v4, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->s6:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v4, v4, Lcom/zjx/jyandroid/Extensions/pubg/b;->m:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-direct {v2, v1, v4}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_6

    :cond_b
    if-ne v1, v4, :cond_c

    new-instance v2, Landroid/graphics/Point;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->s6:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/b;->l:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v4, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->s6:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v4, v4, Lcom/zjx/jyandroid/Extensions/pubg/b;->l:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-direct {v2, v1, v4}, Landroid/graphics/Point;-><init>(II)V

    :cond_c
    :goto_6
    iget-object v10, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->T6:Ls5/k;

    iget v1, v2, Landroid/graphics/Point;->x:I

    int-to-float v11, v1

    iget v1, v2, Landroid/graphics/Point;->y:I

    int-to-float v12, v1

    const/4 v13, 0x5

    const/4 v14, 0x5

    move-object v15, v8

    invoke-virtual/range {v10 .. v15}, Ls5/k;->m(FFIILo6/d;)I

    move-result v1

    :try_start_4
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    iget-object v4, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->T6:Ls5/k;

    iget v5, v8, Lo6/d;->a:F

    iget v9, v8, Lo6/d;->b:F

    invoke-virtual {v4, v1, v5, v9}, Ls5/k;->p(IFF)V

    :try_start_5
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    iget-object v10, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->T6:Ls5/k;

    iget v1, v2, Landroid/graphics/Point;->x:I

    int-to-float v11, v1

    iget v1, v2, Landroid/graphics/Point;->y:I

    int-to-float v12, v1

    const/4 v13, 0x5

    const/4 v14, 0x5

    move-object v15, v8

    invoke-virtual/range {v10 .. v15}, Ls5/k;->m(FFIILo6/d;)I

    move-result v1

    :try_start_6
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    iget-object v2, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->T6:Ls5/k;

    iget v4, v8, Lo6/d;->a:F

    iget v5, v8, Lo6/d;->b:F

    invoke-virtual {v2, v1, v4, v5}, Ls5/k;->p(IFF)V

    iget v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->O6:I

    iput v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->P6:I

    if-nez v3, :cond_e

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->s6:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->i()Lcom/zjx/jyandroid/Extensions/pubg/c$a;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/Extensions/pubg/c$a;->X:Lcom/zjx/jyandroid/Extensions/pubg/c$a;

    if-ne v1, v2, :cond_d

    iget-object v10, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->T6:Ls5/k;

    iget v1, v7, Landroid/graphics/Point;->x:I

    int-to-float v11, v1

    iget v1, v7, Landroid/graphics/Point;->y:I

    int-to-float v12, v1

    const/4 v13, 0x5

    const/4 v14, 0x5

    move-object v15, v8

    invoke-virtual/range {v10 .. v15}, Ls5/k;->m(FFIILo6/d;)I

    move-result v6

    :cond_d
    :try_start_7
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->T6:Ls5/k;

    iget v2, v8, Lo6/d;->a:F

    iget v3, v8, Lo6/d;->b:F

    invoke-virtual {v1, v6, v2, v3}, Ls5/k;->p(IFF)V

    :cond_e
    return-void
.end method

.method public m0()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->n6:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

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

.method public n0()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$k;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$k;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public o0()V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->s6:Lcom/zjx/jyandroid/Extensions/pubg/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->w()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->s6:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->v()V

    return-void
.end method

.method public onCreate()V
    .locals 2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->V6:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->X6:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->W6:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->l6:LU6/c;

    invoke-virtual {v0, p0}, LU6/c;->q(LU6/e;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->l6:LU6/c;

    invoke-virtual {v0, p0, p0}, LU6/c;->o(LU6/a;LU6/b;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->v0()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->y0()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->l6:LU6/c;

    invoke-virtual {v0, p0}, LU6/c;->x(LU6/e;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->l6:LU6/c;

    invoke-virtual {v0, p0}, LU6/c;->v(LU6/b;)V

    return-void
.end method

.method public p0(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/zjx/gw2lic/Gw2DisableRecoil;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p2, v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->Q(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw p1
.end method

.method public q0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->D6:Z

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->n0()V

    return-void
.end method

.method public declared-synchronized r0(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->r6:Landroid/os/Handler;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$e;

    invoke-direct {v1, p0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$e;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->t6:Lcom/zjx/jyandroid/Extensions/pubg/i;

    iget-boolean v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->L6:Z

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/i;->q(Z)V

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->U6:Z
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

.method public s0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->n6:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, LD7/a;->setDraggable(Z)V

    :cond_0
    return-void
.end method

.method public t0(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->n6:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->k6:Lg7/b;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->n6:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    invoke-interface {p1, v0}, Lg7/b;->c(LD7/a;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->n6:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->k6:Lg7/b;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->n6:Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Lg7/b;->a(LD7/a;Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public u0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->z6:Z

    return-void
.end method

.method public v0()V
    .locals 6

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->x6:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;-><init>()V

    invoke-static {}, LA6/e;->a0()LA6/e;

    move-result-object v1

    invoke-virtual {v1}, LA6/e;->q()Lr6/e;

    move-result-object v1

    sget-object v2, Lr6/e;->X:Lr6/e;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->M6:Z

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->x()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iput-boolean v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->x6:Z

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "9\u00a8Y\u008ft\u0011\u0090{\u00a8V\u00fdg\u0012\u0091?\u00d4N\u00b9k\u001f\u008c.\u00dbJ\u00fb\u0093/\u00b6(\u00c7R\u00e2\u00964\u00a0 \u00da~\u00cb\u009d\u0003\u00a1[\u00ccr"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->E6:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x4

    invoke-virtual {p0, v2, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-static {}, Ls5/k;->i()Ls5/k;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->N6:Ls5/k$b;

    invoke-virtual {v1, v2}, Ls5/k;->e(Ls5/k$b;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->l6:LU6/c;

    invoke-virtual {v1, p0}, LU6/c;->n(LZ6/b;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->l6:LU6/c;

    invoke-virtual {v1, p0}, LU6/c;->p(LU6/d;)V

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->j0()V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->m0()V

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-direct {v1}, Lcom/zjx/jyandroid/Extensions/pubg/b;-><init>()V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->s6:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {v1}, Lcom/zjx/gw2lic/Gw2SmartScroll;->setPubg(Lcom/zjx/jyandroid/Extensions/pubg/b;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->i()Lcom/zjx/jyandroid/Extensions/pubg/c$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/b;->q(Lcom/zjx/jyandroid/Extensions/pubg/c$a;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->s6:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->A()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->r(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->s6:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {}, LA6/e;->a0()LA6/e;

    move-result-object v1

    invoke-virtual {v1}, LA6/e;->q()Lr6/e;

    move-result-object v1

    sget-object v2, Lr6/e;->Y:Lr6/e;

    if-ne v1, v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {v0, v3}, Lcom/zjx/jyandroid/Extensions/pubg/b;->u(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->s6:Lcom/zjx/jyandroid/Extensions/pubg/b;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$i;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$i;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)V

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->t(Lcom/zjx/jyandroid/Extensions/pubg/b$i;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->u6:Lcom/zjx/jyandroid/ForegroundService/a;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$j;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$j;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;)V

    const-string v2, "9\u00a8Y\u008ft\u0011\u0090{\u00b2Z\u00fenX\u00913\u00feE\u00f9b\u0018\u00b9y"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/zjx/jyandroid/ForegroundService/a;->t(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$b0;)V

    return-void
.end method

.method public final x0()V
    .locals 0

    return-void
.end method

.method public y0()V
    .locals 2

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->B0()V

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->x6:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->E6:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Ls5/k;->i()Ls5/k;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->N6:Ls5/k$b;

    invoke-virtual {v0, v1}, Ls5/k;->s(Ls5/k$b;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->l6:LU6/c;

    invoke-virtual {v0, p0}, LU6/c;->u(LZ6/b;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->A0()V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->z0()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->q6:Lcom/zjx/jyandroid/Extensions/pubg/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/e;->u()V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->q6:Lcom/zjx/jyandroid/Extensions/pubg/e;

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->u6:Lcom/zjx/jyandroid/ForegroundService/a;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/a;->d()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->l6:LU6/c;

    invoke-virtual {v0, p0}, LU6/c;->w(LU6/d;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->s6:Lcom/zjx/jyandroid/Extensions/pubg/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->w()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->s6:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->t(Lcom/zjx/jyandroid/Extensions/pubg/b$i;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->s6:Lcom/zjx/jyandroid/Extensions/pubg/b;

    :cond_2
    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->w6:Lcom/zjx/jyandroid/Extensions/pubg/g;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->t6:Lcom/zjx/jyandroid/Extensions/pubg/i;

    if-eqz v0, :cond_3

    invoke-static {}, LR5/c;->l()LR5/c;

    move-result-object v0

    invoke-virtual {v0, p0}, LR5/c;->n(Lu6/b;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->t6:Lcom/zjx/jyandroid/Extensions/pubg/i;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/i;->z()V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->t6:Lcom/zjx/jyandroid/Extensions/pubg/i;

    :cond_3
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->s6:Lcom/zjx/jyandroid/Extensions/pubg/b;

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->s6:Lcom/zjx/jyandroid/Extensions/pubg/b;

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->x6:Z

    return-void
.end method

.method public declared-synchronized z0()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->p6:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->k6:Lg7/b;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;->p6:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    invoke-interface {v0, v1}, Lg7/b;->c(LD7/a;)V
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
