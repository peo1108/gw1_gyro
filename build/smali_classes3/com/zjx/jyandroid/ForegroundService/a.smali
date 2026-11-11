.class public Lcom/zjx/jyandroid/ForegroundService/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/ForegroundService/a$e0;,
        Lcom/zjx/jyandroid/ForegroundService/a$V;,
        Lcom/zjx/jyandroid/ForegroundService/a$f0;,
        Lcom/zjx/jyandroid/ForegroundService/a$W;,
        Lcom/zjx/jyandroid/ForegroundService/a$m0;,
        Lcom/zjx/jyandroid/ForegroundService/a$X;,
        Lcom/zjx/jyandroid/ForegroundService/a$b0;,
        Lcom/zjx/jyandroid/ForegroundService/a$h0;,
        Lcom/zjx/jyandroid/ForegroundService/a$a0;,
        Lcom/zjx/jyandroid/ForegroundService/a$l0;,
        Lcom/zjx/jyandroid/ForegroundService/a$k0;,
        Lcom/zjx/jyandroid/ForegroundService/a$c0;,
        Lcom/zjx/jyandroid/ForegroundService/a$Y;,
        Lcom/zjx/jyandroid/ForegroundService/a$d0;,
        Lcom/zjx/jyandroid/ForegroundService/a$j0;,
        Lcom/zjx/jyandroid/ForegroundService/a$U;,
        Lcom/zjx/jyandroid/ForegroundService/a$Z;,
        Lcom/zjx/jyandroid/ForegroundService/a$i0;,
        Lcom/zjx/jyandroid/ForegroundService/a$g0;
    }
.end annotation


# static fields
.field public static e:Lcom/zjx/jyandroid/ForegroundService/a;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/zjx/jyandroid/ForegroundService/a$V;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:Lcom/zjx/jyandroid/ForegroundService/a$e0;
    .annotation build Li/S;
    .end annotation
.end field

.field public d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/ForegroundService/a$U;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/a;->d:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/a;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/a;->b:Ljava/util/Map;

    return-void
.end method

.method public static J()Lcom/zjx/jyandroid/ForegroundService/a;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/a;->e:Lcom/zjx/jyandroid/ForegroundService/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/a;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ForegroundService/a;-><init>()V

    sput-object v0, Lcom/zjx/jyandroid/ForegroundService/a;->e:Lcom/zjx/jyandroid/ForegroundService/a;

    :cond_0
    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/a;->e:Lcom/zjx/jyandroid/ForegroundService/a;

    return-object v0
.end method

.method public static synthetic a(Lcom/zjx/jyandroid/ForegroundService/a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/a;->b:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic b(Lcom/zjx/jyandroid/ForegroundService/a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/a;->a:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic c(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$e0;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/a;->z(Lcom/zjx/jyandroid/ForegroundService/a$e0;)V

    return-void
.end method


# virtual methods
.method public A(Lcom/zjx/jyandroid/ForegroundService/a$U;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/a;->d:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public B(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$h0;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    new-instance p1, Lo6/g;

    const-wide v1, -0x1b351f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lo6/i;

    sget-object v2, Led/a;->a:[Ljava/lang/String;

    const-wide v3, -0x1b461f79daedL

    invoke-static {v3, v4, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x1b4d1f79daedL

    invoke-static {v4, v5, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v0, v1}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p1}, Lcom/zjx/jyandroid/ForegroundService/a$h0;->a(Lo6/g;)V

    :cond_0
    return-void

    :cond_1
    if-nez p2, :cond_3

    if-eqz p3, :cond_2

    new-instance p1, Lo6/g;

    const-wide v1, -0x1b551f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lo6/i;

    sget-object v2, Led/a;->a:[Ljava/lang/String;

    const-wide v3, -0x1b661f79daedL

    invoke-static {v3, v4, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x1b6d1f79daedL

    invoke-static {v4, v5, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v0, v1}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p1}, Lcom/zjx/jyandroid/ForegroundService/a$h0;->a(Lo6/g;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/b;->d()Lcom/zjx/jyandroid/ForegroundService/b;

    move-result-object v1

    iget-boolean v1, v1, Lcom/zjx/jyandroid/ForegroundService/b;->c:Z

    if-nez v1, :cond_5

    if-eqz p3, :cond_4

    new-instance p1, Lo6/g;

    const-wide v1, -0x1b731f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lo6/i;

    sget-object v2, Led/a;->a:[Ljava/lang/String;

    const-wide v3, -0x1b811f79daedL

    invoke-static {v3, v4, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x1b881f79daedL

    invoke-static {v4, v5, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v0, v1}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p1}, Lcom/zjx/jyandroid/ForegroundService/a$h0;->a(Lo6/g;)V

    :cond_4
    return-void

    :cond_5
    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/a$g;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/zjx/jyandroid/ForegroundService/a$g;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$h0;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/zjx/jyandroid/ForegroundService/a;->r(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$a0;)V

    return-void
.end method

.method public C(Lcom/zjx/jyandroid/ForegroundService/a$e0;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/a;->c:Lcom/zjx/jyandroid/ForegroundService/a$e0;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/a;->c:Lcom/zjx/jyandroid/ForegroundService/a$e0;

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/a$A;

    invoke-direct {v0, p0, p1}, Lcom/zjx/jyandroid/ForegroundService/a$A;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$e0;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public D(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$j0;)V
    .locals 9

    if-nez p1, :cond_0

    new-instance p1, Lo6/g;

    const-wide v0, -0x1dd11f79daedL

    invoke-static {v0, v1}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lo6/i;

    sget-object v2, Led/a;->a:[Ljava/lang/String;

    const-wide v3, -0x1de21f79daedL

    invoke-static {v3, v4, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x1de91f79daedL

    invoke-static {v4, v5, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, -0x1

    invoke-direct {p1, v0, v2, v1}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p2, p1}, Lcom/zjx/jyandroid/ForegroundService/a$j0;->a(Lo6/g;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x1df11f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/a$z;

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/a$x;

    invoke-direct {v6, p0, p2, p1}, Lcom/zjx/jyandroid/ForegroundService/a$x;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$j0;Ljava/lang/String;)V

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/a$y;

    invoke-direct {v7, p0, p2}, Lcom/zjx/jyandroid/ForegroundService/a$y;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$j0;)V

    const/4 v4, 0x1

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/zjx/jyandroid/ForegroundService/a$z;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-static {}, LR5/f;->d()LR5/f;

    move-result-object p1

    const/16 v1, 0x1b58

    invoke-virtual {p1, v0, v1, p0}, LR5/f;->b(Lcom/android/volley/Request;ILjava/lang/Object;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lo6/g;

    sget-object v1, Led/a;->a:[Ljava/lang/String;

    const-wide v2, -0x1e041f79daedL

    invoke-static {v2, v3, v1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zjx/jyandroid/e$g;->c:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->w(I)I

    move-result v3

    new-instance v4, Lo6/i;

    const-wide v5, -0x1e111f79daedL

    invoke-static {v5, v6, v1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v7, -0x1e181f79daedL

    invoke-static {v7, v8, v1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v5, p1}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v2, v3, v4}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p2, v0}, Lcom/zjx/jyandroid/ForegroundService/a$j0;->a(Lo6/g;)V

    :goto_0
    return-void
.end method

.method public E(Ljava/util/Map;ILjava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$k0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/zjx/jyandroid/ForegroundService/a$k0;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_1

    if-eqz p4, :cond_0

    new-instance p1, Lo6/g;

    const-wide p2, -0x1ef31f79daedL

    invoke-static {p2, p3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lo6/i;

    sget-object v2, Led/a;->a:[Ljava/lang/String;

    const-wide v3, -0x1f041f79daedL

    invoke-static {v3, v4, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x1f0b1f79daedL

    invoke-static {v4, v5, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v3, v2}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v1, p3}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p4, p1, v0}, Lcom/zjx/jyandroid/ForegroundService/a$k0;->a(Lo6/g;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/b;->d()Lcom/zjx/jyandroid/ForegroundService/b;

    move-result-object v2

    iget-boolean v2, v2, Lcom/zjx/jyandroid/ForegroundService/b;->c:Z

    if-nez v2, :cond_3

    if-eqz p4, :cond_2

    new-instance p1, Lo6/g;

    const-wide p2, -0x1f151f79daedL

    invoke-static {p2, p3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lo6/i;

    sget-object v2, Led/a;->a:[Ljava/lang/String;

    const-wide v3, -0x1f231f79daedL

    invoke-static {v3, v4, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x1f2a1f79daedL

    invoke-static {v4, v5, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v3, v2}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v1, p3}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p4, p1, v0}, Lcom/zjx/jyandroid/ForegroundService/a$k0;->a(Lo6/g;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v3, -0x1f2f1f79daedL

    invoke-static {v3, v4}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    if-eq p2, v1, :cond_4

    invoke-static {p3}, LD/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    sget-object v1, Led/a;->a:[Ljava/lang/String;

    const-wide v2, -0x1f411f79daedL

    invoke-static {v2, v3, v1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_4
    move-object v4, p3

    :try_start_0
    new-instance p2, Lcom/zjx/jyandroid/ForegroundService/a$N;

    new-instance v5, Lcom/zjx/jyandroid/ForegroundService/a$L;

    invoke-direct {v5, p0, p4}, Lcom/zjx/jyandroid/ForegroundService/a$L;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$k0;)V

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/a$M;

    invoke-direct {v6, p0, p4}, Lcom/zjx/jyandroid/ForegroundService/a$M;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$k0;)V

    const/4 v3, 0x1

    move-object v1, p2

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/zjx/jyandroid/ForegroundService/a$N;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;)V

    invoke-static {}, LR5/f;->d()LR5/f;

    move-result-object p1

    const/16 p3, 0x1b58

    invoke-virtual {p1, p2, p3, p0}, LR5/f;->b(Lcom/android/volley/Request;ILjava/lang/Object;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lo6/g;

    sget-object p3, Led/a;->a:[Ljava/lang/String;

    const-wide v1, -0x1f4f1f79daedL

    invoke-static {v1, v2, p3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/e$g;->c:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->w(I)I

    move-result v2

    new-instance v3, Lo6/i;

    const-wide v4, -0x1f5c1f79daedL

    invoke-static {v4, v5, p3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v6, -0x1f631f79daedL

    invoke-static {v6, v7, p3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p2, v1, v2, v3}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p4, p2, v0}, Lcom/zjx/jyandroid/ForegroundService/a$k0;->a(Lo6/g;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public F(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$k0;)V
    .locals 2

    const-wide v0, -0x1cef1f79daedL

    invoke-static {v0, v1}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/zjx/jyandroid/ForegroundService/a;->H(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$k0;)V

    return-void
.end method

.method public G(Ljava/lang/String;Ljava/lang/String;ILcom/zjx/jyandroid/ForegroundService/a$k0;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_1

    if-eqz p4, :cond_0

    new-instance p1, Lo6/g;

    const-wide p2, -0x1cf51f79daedL

    invoke-static {p2, p3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lo6/i;

    sget-object v2, Led/a;->a:[Ljava/lang/String;

    const-wide v3, -0x1d061f79daedL

    invoke-static {v3, v4, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x1d0d1f79daedL

    invoke-static {v4, v5, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v3, v2}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v1, p3}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p4, p1, v0}, Lcom/zjx/jyandroid/ForegroundService/a$k0;->a(Lo6/g;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/b;->d()Lcom/zjx/jyandroid/ForegroundService/b;

    move-result-object v2

    iget-boolean v2, v2, Lcom/zjx/jyandroid/ForegroundService/b;->c:Z

    if-nez v2, :cond_3

    if-eqz p4, :cond_2

    new-instance p1, Lo6/g;

    const-wide p2, -0x1d161f79daedL

    invoke-static {p2, p3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lo6/i;

    sget-object v2, Led/a;->a:[Ljava/lang/String;

    const-wide v3, -0x1d241f79daedL

    invoke-static {v3, v4, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x1d2b1f79daedL

    invoke-static {v4, v5, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v3, v2}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v1, p3}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p4, p1, v0}, Lcom/zjx/jyandroid/ForegroundService/a$k0;->a(Lo6/g;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v3, -0x1d301f79daedL

    invoke-static {v3, v4}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Led/a;->a:[Ljava/lang/String;

    const-wide v3, -0x1d421f79daedL

    invoke-static {v3, v4, p1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, LE/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eq p3, v1, :cond_4

    invoke-static {p2}, LD/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-wide v1, -0x1d4b1f79daedL

    invoke-static {v1, v2, p1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_4
    move-object v4, p2

    :try_start_0
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/a$s;

    new-instance v5, Lcom/zjx/jyandroid/ForegroundService/a$q;

    invoke-direct {v5, p0, p4}, Lcom/zjx/jyandroid/ForegroundService/a$q;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$k0;)V

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/a$r;

    invoke-direct {v6, p0, p4}, Lcom/zjx/jyandroid/ForegroundService/a$r;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$k0;)V

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/zjx/jyandroid/ForegroundService/a$s;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-static {}, LR5/f;->d()LR5/f;

    move-result-object p2

    const/16 p3, 0x1b58

    invoke-virtual {p2, p1, p3, p0}, LR5/f;->b(Lcom/android/volley/Request;ILjava/lang/Object;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lo6/g;

    sget-object p3, Led/a;->a:[Ljava/lang/String;

    const-wide v1, -0x1d591f79daedL

    invoke-static {v1, v2, p3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/e$g;->c:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->w(I)I

    move-result v2

    new-instance v3, Lo6/i;

    const-wide v4, -0x1d661f79daedL

    invoke-static {v4, v5, p3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v6, -0x1d6d1f79daedL

    invoke-static {v6, v7, p3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p2, v1, v2, v3}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p4, p2, v0}, Lcom/zjx/jyandroid/ForegroundService/a$k0;->a(Lo6/g;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public H(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$k0;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/zjx/jyandroid/ForegroundService/a;->G(Ljava/lang/String;Ljava/lang/String;ILcom/zjx/jyandroid/ForegroundService/a$k0;)V

    return-void
.end method

.method public I(Ljava/util/List;ILjava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$l0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;I",
            "Ljava/lang/String;",
            "Lcom/zjx/jyandroid/ForegroundService/a$l0;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_1

    if-eqz p4, :cond_0

    new-instance p1, Lo6/g;

    const-wide p2, -0x1c141f79daedL

    invoke-static {p2, p3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lo6/i;

    sget-object v2, Led/a;->a:[Ljava/lang/String;

    const-wide v3, -0x1c251f79daedL

    invoke-static {v3, v4, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x1c2c1f79daedL

    invoke-static {v4, v5, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v3, v2}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v1, p3}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p4, p1, v0}, Lcom/zjx/jyandroid/ForegroundService/a$l0;->a(Lo6/g;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/b;->d()Lcom/zjx/jyandroid/ForegroundService/b;

    move-result-object v2

    iget-boolean v2, v2, Lcom/zjx/jyandroid/ForegroundService/b;->c:Z

    if-nez v2, :cond_3

    if-eqz p4, :cond_2

    new-instance p1, Lo6/g;

    const-wide p2, -0x1c311f79daedL

    invoke-static {p2, p3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lo6/i;

    sget-object v2, Led/a;->a:[Ljava/lang/String;

    const-wide v3, -0x1c3f1f79daedL

    invoke-static {v3, v4, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x1c461f79daedL

    invoke-static {v4, v5, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v3, v2}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v1, p3}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p4, p1, v0}, Lcom/zjx/jyandroid/ForegroundService/a$l0;->a(Lo6/g;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-wide v1, -0x1c4b1f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Led/a;->a:[Ljava/lang/String;

    const-wide v1, -0x1c591f79daedL

    invoke-static {v1, v2, p1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v1, -0x1c601f79daedL

    invoke-static {v1, v2, p1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/zjx/jyandroid/ForegroundService/a$l;

    invoke-direct {p3, p0, p4}, Lcom/zjx/jyandroid/ForegroundService/a$l;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$l0;)V

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/zjx/jyandroid/ForegroundService/a;->E(Ljava/util/Map;ILjava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$k0;)V

    return-void
.end method

.method public K(Lcom/zjx/jyandroid/ForegroundService/a$U;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/a;->d:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public L(Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$m0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/zjx/jyandroid/ForegroundService/a$m0;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/zjx/jyandroid/ForegroundService/a;->M(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$m0;)V

    return-void
.end method

.method public M(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$m0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/zjx/jyandroid/ForegroundService/a$m0;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_1

    if-eqz p4, :cond_0

    new-instance p1, Lo6/g;

    const-wide p2, -0x19801f79daedL

    invoke-static {p2, p3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lo6/i;

    sget-object v1, Led/a;->a:[Ljava/lang/String;

    const-wide v2, -0x19911f79daedL

    invoke-static {v2, v3, v1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x19981f79daedL

    invoke-static {v3, v4, v1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v2, v1}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v0, p3}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p4, p1}, Lcom/zjx/jyandroid/ForegroundService/a$m0;->a(Lo6/g;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/b;->d()Lcom/zjx/jyandroid/ForegroundService/b;

    move-result-object v1

    iget-boolean v1, v1, Lcom/zjx/jyandroid/ForegroundService/b;->c:Z

    if-nez v1, :cond_3

    if-eqz p4, :cond_2

    new-instance p1, Lo6/g;

    const-wide p2, -0x199e1f79daedL

    invoke-static {p2, p3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lo6/i;

    sget-object v1, Led/a;->a:[Ljava/lang/String;

    const-wide v2, -0x19ac1f79daedL

    invoke-static {v2, v3, v1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x19b31f79daedL

    invoke-static {v3, v4, v1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v2, v1}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v0, p3}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p4, p1}, Lcom/zjx/jyandroid/ForegroundService/a$m0;->a(Lo6/g;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/ForegroundService/a;->N(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$m0;)V

    return-void
.end method

.method public final N(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$m0;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/zjx/jyandroid/ForegroundService/a$m0;",
            ")V"
        }
    .end annotation

    move-object v9, p0

    move-object/from16 v10, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x19b81f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v11, Lcom/zjx/jyandroid/ForegroundService/a$Q;

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/a$O;

    move-object v1, v7

    move-object v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/zjx/jyandroid/ForegroundService/a$O;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$m0;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/a$P;

    invoke-direct {v6, p0, v10}, Lcom/zjx/jyandroid/ForegroundService/a$P;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$m0;)V

    const/4 v3, 0x1

    move-object v1, v11

    move-object v2, p0

    move-object v4, v0

    move-object v5, v7

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/zjx/jyandroid/ForegroundService/a$Q;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {}, LR5/f;->d()LR5/f;

    move-result-object v0

    const/16 v1, 0x1b58

    invoke-virtual {v0, v11, v1, p0}, LR5/f;->b(Lcom/android/volley/Request;ILjava/lang/Object;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lo6/g;

    sget-object v2, Led/a;->a:[Ljava/lang/String;

    const-wide v3, -0x19cb1f79daedL

    invoke-static {v3, v4, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/zjx/jyandroid/e$g;->c:I

    invoke-static {v4}, Lcom/zjx/jyandroid/base/util/b;->w(I)I

    move-result v4

    new-instance v5, Lo6/i;

    const-wide v6, -0x19d81f79daedL

    invoke-static {v6, v7, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v11, -0x19df1f79daedL

    invoke-static {v11, v12, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, v3, v4, v5}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {v10, v1}, Lcom/zjx/jyandroid/ForegroundService/a$m0;->a(Lo6/g;)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    invoke-static {}, LR5/f;->d()LR5/f;

    move-result-object v0

    iget-object v0, v0, LR5/f;->a:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$W;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/zjx/jyandroid/ForegroundService/a$W;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/zjx/jyandroid/ForegroundService/a;->j(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$W;)V

    return-void
.end method

.method public f(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$W;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/zjx/jyandroid/ForegroundService/a$W;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_1

    if-eqz p4, :cond_0

    new-instance p1, Lo6/g;

    const-wide p2, -0x1a431f79daedL

    invoke-static {p2, p3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lo6/i;

    sget-object v2, Led/a;->a:[Ljava/lang/String;

    const-wide v3, -0x1a541f79daedL

    invoke-static {v3, v4, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x1a5b1f79daedL

    invoke-static {v4, v5, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v3, v2}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v1, p3}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p4, p1, v0}, Lcom/zjx/jyandroid/ForegroundService/a$W;->a(Lo6/g;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-nez p3, :cond_3

    if-eqz p4, :cond_2

    new-instance p1, Lo6/g;

    const-wide p2, -0x1a611f79daedL

    invoke-static {p2, p3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lo6/i;

    sget-object v2, Led/a;->a:[Ljava/lang/String;

    const-wide v3, -0x1a721f79daedL

    invoke-static {v3, v4, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x1a791f79daedL

    invoke-static {v4, v5, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v3, v2}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v1, p3}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p4, p1, v0}, Lcom/zjx/jyandroid/ForegroundService/a$W;->a(Lo6/g;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/b;->d()Lcom/zjx/jyandroid/ForegroundService/b;

    move-result-object v2

    iget-boolean v2, v2, Lcom/zjx/jyandroid/ForegroundService/b;->c:Z

    if-nez v2, :cond_5

    if-eqz p4, :cond_4

    new-instance p1, Lo6/g;

    const-wide p2, -0x1a831f79daedL

    invoke-static {p2, p3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lo6/i;

    sget-object v2, Led/a;->a:[Ljava/lang/String;

    const-wide v3, -0x1a911f79daedL

    invoke-static {v3, v4, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x1a981f79daedL

    invoke-static {v4, v5, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v3, v2}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v1, p3}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p4, p1, v0}, Lcom/zjx/jyandroid/ForegroundService/a$W;->a(Lo6/g;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/ForegroundService/a;->j(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$W;)V

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$W;)V
    .locals 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    new-instance p1, Lo6/g;

    const-wide v2, -0x1b8d1f79daedL

    invoke-static {v2, v3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lo6/i;

    sget-object v3, Led/a;->a:[Ljava/lang/String;

    const-wide v4, -0x1b9e1f79daedL

    invoke-static {v4, v5, v3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x1ba51f79daedL

    invoke-static {v5, v6, v3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v0, v2}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p1, v1}, Lcom/zjx/jyandroid/ForegroundService/a$W;->a(Lo6/g;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-nez p2, :cond_3

    if-eqz p3, :cond_2

    new-instance p1, Lo6/g;

    const-wide v2, -0x1bab1f79daedL

    invoke-static {v2, v3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lo6/i;

    sget-object v3, Led/a;->a:[Ljava/lang/String;

    const-wide v4, -0x1bbc1f79daedL

    invoke-static {v4, v5, v3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x1bc31f79daedL

    invoke-static {v5, v6, v3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v0, v2}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p1, v1}, Lcom/zjx/jyandroid/ForegroundService/a$W;->a(Lo6/g;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/b;->d()Lcom/zjx/jyandroid/ForegroundService/b;

    move-result-object v2

    iget-boolean v2, v2, Lcom/zjx/jyandroid/ForegroundService/b;->c:Z

    if-nez v2, :cond_5

    if-eqz p3, :cond_4

    new-instance p1, Lo6/g;

    const-wide v2, -0x1bcd1f79daedL

    invoke-static {v2, v3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lo6/i;

    sget-object v3, Led/a;->a:[Ljava/lang/String;

    const-wide v4, -0x1bdb1f79daedL

    invoke-static {v4, v5, v3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x1be21f79daedL

    invoke-static {v5, v6, v3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v0, v2}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p1, v1}, Lcom/zjx/jyandroid/ForegroundService/a$W;->a(Lo6/g;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v2, -0x1be71f79daedL

    invoke-static {v2, v3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :try_start_0
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/a$j;

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/a$h;

    invoke-direct {v7, p0, p3, p2}, Lcom/zjx/jyandroid/ForegroundService/a$h;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$W;Ljava/lang/String;)V

    new-instance v8, Lcom/zjx/jyandroid/ForegroundService/a$i;

    invoke-direct {v8, p0, p3}, Lcom/zjx/jyandroid/ForegroundService/a$i;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$W;)V

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/zjx/jyandroid/ForegroundService/a$j;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-static {}, LR5/f;->d()LR5/f;

    move-result-object p2

    const/16 v0, 0x1b58

    invoke-virtual {p2, p1, v0, p0}, LR5/f;->b(Lcom/android/volley/Request;ILjava/lang/Object;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lo6/g;

    sget-object v0, Led/a;->a:[Ljava/lang/String;

    const-wide v2, -0x1bfb1f79daedL

    invoke-static {v2, v3, v0}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zjx/jyandroid/e$g;->c:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->w(I)I

    move-result v3

    new-instance v4, Lo6/i;

    const-wide v5, -0x1c081f79daedL

    invoke-static {v5, v6, v0}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v7, -0x1c0f1f79daedL

    invoke-static {v7, v8, v0}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v5, p1}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p2, v2, v3, v4}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p2, v1}, Lcom/zjx/jyandroid/ForegroundService/a$W;->a(Lo6/g;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$W;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    new-instance p1, Lo6/g;

    const-wide v2, -0x18f81f79daedL

    invoke-static {v2, v3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lo6/i;

    sget-object v3, Led/a;->a:[Ljava/lang/String;

    const-wide v4, -0x19091f79daedL

    invoke-static {v4, v5, v3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x19101f79daedL

    invoke-static {v5, v6, v3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v1, v2}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p1, v0}, Lcom/zjx/jyandroid/ForegroundService/a$W;->a(Lo6/g;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-nez p2, :cond_3

    if-eqz p3, :cond_2

    new-instance p1, Lo6/g;

    const-wide v2, -0x19161f79daedL

    invoke-static {v2, v3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lo6/i;

    sget-object v3, Led/a;->a:[Ljava/lang/String;

    const-wide v4, -0x19271f79daedL

    invoke-static {v4, v5, v3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x192e1f79daedL

    invoke-static {v5, v6, v3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v1, v2}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p1, v0}, Lcom/zjx/jyandroid/ForegroundService/a$W;->a(Lo6/g;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/b;->d()Lcom/zjx/jyandroid/ForegroundService/b;

    move-result-object v2

    iget-boolean v2, v2, Lcom/zjx/jyandroid/ForegroundService/b;->c:Z

    if-nez v2, :cond_5

    if-eqz p3, :cond_4

    new-instance p1, Lo6/g;

    const-wide v2, -0x19341f79daedL

    invoke-static {v2, v3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lo6/i;

    sget-object v3, Led/a;->a:[Ljava/lang/String;

    const-wide v4, -0x19421f79daedL

    invoke-static {v4, v5, v3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x19491f79daedL

    invoke-static {v5, v6, v3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v1, v2}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p1, v0}, Lcom/zjx/jyandroid/ForegroundService/a$W;->a(Lo6/g;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/zjx/jyandroid/ForegroundService/a;->i(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$W;)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$W;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x194e1f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Led/a;->a:[Ljava/lang/String;

    const-wide v1, -0x195a1f79daedL

    invoke-static {v1, v2, p2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, LE/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/a$G;

    new-instance v5, Lcom/zjx/jyandroid/ForegroundService/a$k;

    invoke-direct {v5, p0, p3}, Lcom/zjx/jyandroid/ForegroundService/a$k;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$W;)V

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/a$v;

    invoke-direct {v6, p0, p3}, Lcom/zjx/jyandroid/ForegroundService/a$v;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$W;)V

    const/4 v3, 0x1

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/zjx/jyandroid/ForegroundService/a$G;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-static {}, LR5/f;->d()LR5/f;

    move-result-object p2

    const/16 v0, 0x1b58

    invoke-virtual {p2, p1, v0, p0}, LR5/f;->b(Lcom/android/volley/Request;ILjava/lang/Object;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lo6/g;

    sget-object v0, Led/a;->a:[Ljava/lang/String;

    const-wide v1, -0x19671f79daedL

    invoke-static {v1, v2, v0}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/e$g;->c:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->w(I)I

    move-result v2

    new-instance v3, Lo6/i;

    const-wide v4, -0x19741f79daedL

    invoke-static {v4, v5, v0}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v6, -0x197b1f79daedL

    invoke-static {v6, v7, v0}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p2, v1, v2, v3}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    const/4 p1, 0x0

    invoke-interface {p3, p2, p1}, Lcom/zjx/jyandroid/ForegroundService/a$W;->a(Lo6/g;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public j(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$W;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/zjx/jyandroid/ForegroundService/a$W;",
            ")V"
        }
    .end annotation

    move-object v9, p0

    move-object/from16 v10, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x1a9d1f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v11, Lcom/zjx/jyandroid/ForegroundService/a$c;

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/a$a;

    move-object v1, v7

    move-object v2, p0

    move-object/from16 v3, p4

    move-object v4, p1

    move-object/from16 v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/zjx/jyandroid/ForegroundService/a$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$W;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/a$b;

    invoke-direct {v6, p0, v10}, Lcom/zjx/jyandroid/ForegroundService/a$b;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$W;)V

    const/4 v3, 0x1

    move-object v1, v11

    move-object v2, p0

    move-object v4, v0

    move-object v5, v7

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/zjx/jyandroid/ForegroundService/a$c;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {}, LR5/f;->d()LR5/f;

    move-result-object v0

    const/16 v1, 0x1b58

    invoke-virtual {v0, v11, v1, p0}, LR5/f;->b(Lcom/android/volley/Request;ILjava/lang/Object;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lo6/g;

    sget-object v2, Led/a;->a:[Ljava/lang/String;

    const-wide v3, -0x1aa91f79daedL

    invoke-static {v3, v4, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/zjx/jyandroid/e$g;->c:I

    invoke-static {v4}, Lcom/zjx/jyandroid/base/util/b;->w(I)I

    move-result v4

    new-instance v5, Lo6/i;

    const-wide v6, -0x1ab61f79daedL

    invoke-static {v6, v7, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v11, -0x1abd1f79daedL

    invoke-static {v11, v12, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, v3, v4, v5}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    const/4 v0, 0x0

    invoke-interface {v10, v1, v0}, Lcom/zjx/jyandroid/ForegroundService/a$W;->a(Lo6/g;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public k(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$X;)V
    .locals 9

    const/4 v0, -0x1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    new-instance p1, Lo6/g;

    const-wide v1, -0x19e41f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lo6/i;

    sget-object v3, Led/a;->a:[Ljava/lang/String;

    const-wide v4, -0x19f51f79daedL

    invoke-static {v4, v5, v3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x19fc1f79daedL

    invoke-static {v5, v6, v3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, v1, v0, v2}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p2, p1}, Lcom/zjx/jyandroid/ForegroundService/a$X;->a(Lo6/g;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/b;->d()Lcom/zjx/jyandroid/ForegroundService/b;

    move-result-object v1

    iget-boolean v1, v1, Lcom/zjx/jyandroid/ForegroundService/b;->c:Z

    if-nez v1, :cond_3

    if-eqz p2, :cond_2

    new-instance p1, Lo6/g;

    const-wide v1, -0x1a041f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lo6/i;

    sget-object v3, Led/a;->a:[Ljava/lang/String;

    const-wide v4, -0x1a121f79daedL

    invoke-static {v4, v5, v3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x1a191f79daedL

    invoke-static {v5, v6, v3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, v1, v0, v2}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p2, p1}, Lcom/zjx/jyandroid/ForegroundService/a$X;->a(Lo6/g;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x1a1e1f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/a$T;

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/a$R;

    invoke-direct {v6, p0, p2, p1}, Lcom/zjx/jyandroid/ForegroundService/a$R;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$X;Ljava/lang/String;)V

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/a$S;

    invoke-direct {v7, p0, p2}, Lcom/zjx/jyandroid/ForegroundService/a$S;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$X;)V

    const/4 v4, 0x3

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/zjx/jyandroid/ForegroundService/a$T;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-static {}, LR5/f;->d()LR5/f;

    move-result-object p1

    const/16 v1, 0x1b58

    invoke-virtual {p1, v0, v1, p0}, LR5/f;->b(Lcom/android/volley/Request;ILjava/lang/Object;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lo6/g;

    sget-object v1, Led/a;->a:[Ljava/lang/String;

    const-wide v2, -0x1a2a1f79daedL

    invoke-static {v2, v3, v1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zjx/jyandroid/e$g;->c:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->w(I)I

    move-result v3

    new-instance v4, Lo6/i;

    const-wide v5, -0x1a371f79daedL

    invoke-static {v5, v6, v1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v7, -0x1a3e1f79daedL

    invoke-static {v7, v8, v1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v5, p1}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v2, v3, v4}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p2, v0}, Lcom/zjx/jyandroid/ForegroundService/a$X;->a(Lo6/g;)V

    :goto_0
    return-void
.end method

.method public l()Lcom/zjx/jyandroid/ForegroundService/a$e0;
    .locals 2
    .annotation build Li/S;
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/a;->c:Lcom/zjx/jyandroid/ForegroundService/a$e0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/a$e0;->a:Lcom/zjx/jyandroid/ForegroundService/a$f0;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/a$f0;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/a;->c:Lcom/zjx/jyandroid/ForegroundService/a$e0;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public m(Ljava/lang/String;)Lcom/zjx/jyandroid/ForegroundService/a$f0;
    .locals 4

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/ForegroundService/a$V;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/a$V;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/ForegroundService/a$f0;

    iget-object v3, v2, Lcom/zjx/jyandroid/ForegroundService/a$f0;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public n(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$Y;)V
    .locals 2

    const-wide v0, -0x1e731f79daedL

    invoke-static {v0, v1}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/zjx/jyandroid/ForegroundService/a;->o(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$Y;)V

    return-void
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$Y;)V
    .locals 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    new-instance p1, Lo6/g;

    const-wide v2, -0x1e861f79daedL

    invoke-static {v2, v3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lo6/i;

    sget-object v3, Led/a;->a:[Ljava/lang/String;

    const-wide v4, -0x1e971f79daedL

    invoke-static {v4, v5, v3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x1e9e1f79daedL

    invoke-static {v5, v6, v3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v0, v2}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p1, v1}, Lcom/zjx/jyandroid/ForegroundService/a$Y;->a(Lo6/g;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/b;->d()Lcom/zjx/jyandroid/ForegroundService/b;

    move-result-object v2

    iget-boolean v2, v2, Lcom/zjx/jyandroid/ForegroundService/b;->c:Z

    if-nez v2, :cond_3

    if-eqz p3, :cond_2

    new-instance p1, Lo6/g;

    const-wide v2, -0x1ea41f79daedL

    invoke-static {v2, v3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lo6/i;

    sget-object v3, Led/a;->a:[Ljava/lang/String;

    const-wide v4, -0x1eb21f79daedL

    invoke-static {v4, v5, v3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x1eb91f79daedL

    invoke-static {v5, v6, v3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v0, v2}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p1, v1}, Lcom/zjx/jyandroid/ForegroundService/a$Y;->a(Lo6/g;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v2, -0x1ebe1f79daedL

    invoke-static {v2, v3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Led/a;->a:[Ljava/lang/String;

    const-wide v2, -0x1ec91f79daedL

    invoke-static {v2, v3, p1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, LE/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/a$K;

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/a$I;

    invoke-direct {v6, p0, p3}, Lcom/zjx/jyandroid/ForegroundService/a$I;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$Y;)V

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/a$J;

    invoke-direct {v7, p0, p3}, Lcom/zjx/jyandroid/ForegroundService/a$J;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$Y;)V

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/zjx/jyandroid/ForegroundService/a$K;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-static {}, LR5/f;->d()LR5/f;

    move-result-object p2

    const/16 v0, 0x1b58

    invoke-virtual {p2, p1, v0, p0}, LR5/f;->b(Lcom/android/volley/Request;ILjava/lang/Object;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lo6/g;

    sget-object v0, Led/a;->a:[Ljava/lang/String;

    const-wide v2, -0x1eda1f79daedL

    invoke-static {v2, v3, v0}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zjx/jyandroid/e$g;->c:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->w(I)I

    move-result v3

    new-instance v4, Lo6/i;

    const-wide v5, -0x1ee71f79daedL

    invoke-static {v5, v6, v0}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v7, -0x1eee1f79daedL

    invoke-static {v7, v8, v0}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v5, p1}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p2, v2, v3, v4}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p2, v1}, Lcom/zjx/jyandroid/ForegroundService/a$Y;->a(Lo6/g;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public p(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$i0;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x1e451f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/a$H;

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/a$E;

    invoke-direct {v6, p0, p2}, Lcom/zjx/jyandroid/ForegroundService/a$E;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$i0;)V

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/a$F;

    invoke-direct {v7, p0, p2}, Lcom/zjx/jyandroid/ForegroundService/a$F;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$i0;)V

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/zjx/jyandroid/ForegroundService/a$H;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-static {}, LR5/f;->d()LR5/f;

    move-result-object v0

    const/16 v1, 0x1b58

    invoke-virtual {v0, p1, v1, p0}, LR5/f;->b(Lcom/android/volley/Request;ILjava/lang/Object;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lo6/g;

    sget-object v1, Led/a;->a:[Ljava/lang/String;

    const-wide v2, -0x1e5a1f79daedL

    invoke-static {v2, v3, v1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zjx/jyandroid/e$g;->c:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->w(I)I

    move-result v3

    new-instance v4, Lo6/i;

    const-wide v5, -0x1e671f79daedL

    invoke-static {v5, v6, v1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v7, -0x1e6e1f79daedL

    invoke-static {v7, v8, v1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v5, p1}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v2, v3, v4}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    invoke-interface {p2, v0, p1, v1, v1}, Lcom/zjx/jyandroid/ForegroundService/a$i0;->a(Lo6/g;ZLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public q(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$Z;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x1e1d1f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/a$D;

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/a$B;

    invoke-direct {v6, p0, p2}, Lcom/zjx/jyandroid/ForegroundService/a$B;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$Z;)V

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/a$C;

    invoke-direct {v7, p0, p2}, Lcom/zjx/jyandroid/ForegroundService/a$C;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$Z;)V

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/zjx/jyandroid/ForegroundService/a$D;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-static {}, LR5/f;->d()LR5/f;

    move-result-object v0

    const/16 v1, 0x1b58

    invoke-virtual {v0, p1, v1, p0}, LR5/f;->b(Lcom/android/volley/Request;ILjava/lang/Object;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lo6/g;

    sget-object v1, Led/a;->a:[Ljava/lang/String;

    const-wide v2, -0x1e2c1f79daedL

    invoke-static {v2, v3, v1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zjx/jyandroid/e$g;->c:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->w(I)I

    move-result v3

    new-instance v4, Lo6/i;

    const-wide v5, -0x1e391f79daedL

    invoke-static {v5, v6, v1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v7, -0x1e401f79daedL

    invoke-static {v7, v8, v1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v5, p1}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v2, v3, v4}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    const/4 p1, 0x0

    invoke-interface {p2, v0, p1}, Lcom/zjx/jyandroid/ForegroundService/a$Z;->a(Lo6/g;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public r(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$a0;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/a;->m(Ljava/lang/String;)Lcom/zjx/jyandroid/ForegroundService/a$f0;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/a;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/a$e0;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/ForegroundService/a$e0;-><init>(Lcom/zjx/jyandroid/ForegroundService/a$f0;Ljava/util/Map;)V

    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Lcom/zjx/jyandroid/ForegroundService/a$a0;->a(Lo6/g;Lcom/zjx/jyandroid/ForegroundService/a$e0;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/a;->s(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$a0;)V

    return-void
.end method

.method public final s(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$a0;)V
    .locals 10

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    new-instance p1, Lo6/g;

    const-wide v2, -0x1d721f79daedL

    invoke-static {v2, v3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lo6/i;

    sget-object v4, Led/a;->a:[Ljava/lang/String;

    const-wide v5, -0x1d831f79daedL

    invoke-static {v5, v6, v4}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide v6, -0x1d8a1f79daedL

    invoke-static {v6, v7, v4}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, v2, v0, v3}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p2, p1, v1}, Lcom/zjx/jyandroid/ForegroundService/a$a0;->a(Lo6/g;Lcom/zjx/jyandroid/ForegroundService/a$e0;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/b;->d()Lcom/zjx/jyandroid/ForegroundService/b;

    move-result-object v2

    iget-boolean v2, v2, Lcom/zjx/jyandroid/ForegroundService/b;->c:Z

    if-nez v2, :cond_3

    if-eqz p2, :cond_2

    new-instance p1, Lo6/g;

    const-wide v2, -0x1d921f79daedL

    invoke-static {v2, v3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lo6/i;

    sget-object v4, Led/a;->a:[Ljava/lang/String;

    const-wide v5, -0x1da01f79daedL

    invoke-static {v5, v6, v4}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide v6, -0x1da71f79daedL

    invoke-static {v6, v7, v4}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, v2, v0, v3}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p2, p1, v1}, Lcom/zjx/jyandroid/ForegroundService/a$a0;->a(Lo6/g;Lcom/zjx/jyandroid/ForegroundService/a$e0;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v2, -0x1dac1f79daedL

    invoke-static {v2, v3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :try_start_0
    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/a$w;

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/a$t;

    invoke-direct {v7, p0, p2, p1}, Lcom/zjx/jyandroid/ForegroundService/a$t;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$a0;Ljava/lang/String;)V

    new-instance v8, Lcom/zjx/jyandroid/ForegroundService/a$u;

    invoke-direct {v8, p0, p2}, Lcom/zjx/jyandroid/ForegroundService/a$u;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$a0;)V

    const/4 v5, 0x0

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/zjx/jyandroid/ForegroundService/a$w;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-static {}, LR5/f;->d()LR5/f;

    move-result-object p1

    const/16 v2, 0x1b58

    invoke-virtual {p1, v0, v2, p0}, LR5/f;->b(Lcom/android/volley/Request;ILjava/lang/Object;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lo6/g;

    sget-object v2, Led/a;->a:[Ljava/lang/String;

    const-wide v3, -0x1db81f79daedL

    invoke-static {v3, v4, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/zjx/jyandroid/e$g;->c:I

    invoke-static {v4}, Lcom/zjx/jyandroid/base/util/b;->w(I)I

    move-result v4

    new-instance v5, Lo6/i;

    const-wide v6, -0x1dc51f79daedL

    invoke-static {v6, v7, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v8, -0x1dcc1f79daedL

    invoke-static {v8, v9, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, v6, p1}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v3, v4, v5}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p2, v0, v1}, Lcom/zjx/jyandroid/ForegroundService/a$a0;->a(Lo6/g;Lcom/zjx/jyandroid/ForegroundService/a$e0;)V

    :goto_0
    return-void
.end method

.method public t(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$b0;)V
    .locals 2

    const-wide v0, -0x1ac21f79daedL

    invoke-static {v0, v1}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/zjx/jyandroid/ForegroundService/a;->u(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$b0;)V

    return-void
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$b0;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/a$V;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    iget-object p1, v0, Lcom/zjx/jyandroid/ForegroundService/a$V;->b:Ljava/util/LinkedList;

    iget-object p2, v0, Lcom/zjx/jyandroid/ForegroundService/a$V;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p3, v0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/a$b0;->a(Lo6/g;Ljava/util/LinkedList;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/zjx/jyandroid/ForegroundService/a;->v(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$b0;)V

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$b0;)V
    .locals 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    new-instance p1, Lo6/g;

    const-wide v2, -0x1acd1f79daedL

    invoke-static {v2, v3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lo6/i;

    sget-object v3, Led/a;->a:[Ljava/lang/String;

    const-wide v4, -0x1ade1f79daedL

    invoke-static {v4, v5, v3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x1ae51f79daedL

    invoke-static {v5, v6, v3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v0, v2}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p1, v1, v1}, Lcom/zjx/jyandroid/ForegroundService/a$b0;->a(Lo6/g;Ljava/util/LinkedList;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/b;->d()Lcom/zjx/jyandroid/ForegroundService/b;

    move-result-object v2

    iget-boolean v2, v2, Lcom/zjx/jyandroid/ForegroundService/b;->c:Z

    if-nez v2, :cond_3

    if-eqz p3, :cond_2

    new-instance p1, Lo6/g;

    const-wide v2, -0x1aeb1f79daedL

    invoke-static {v2, v3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lo6/i;

    sget-object v3, Led/a;->a:[Ljava/lang/String;

    const-wide v4, -0x1af91f79daedL

    invoke-static {v4, v5, v3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x1b001f79daedL

    invoke-static {v5, v6, v3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v0, v2}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p1, v1, v1}, Lcom/zjx/jyandroid/ForegroundService/a$b0;->a(Lo6/g;Ljava/util/LinkedList;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v2, -0x1b051f79daedL

    invoke-static {v2, v3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Led/a;->a:[Ljava/lang/String;

    const-wide v3, -0x1b161f79daedL

    invoke-static {v3, v4, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, LE/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    new-instance p2, Lcom/zjx/jyandroid/ForegroundService/a$f;

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/a$d;

    invoke-direct {v7, p0, p3, p1}, Lcom/zjx/jyandroid/ForegroundService/a$d;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$b0;Ljava/lang/String;)V

    new-instance v8, Lcom/zjx/jyandroid/ForegroundService/a$e;

    invoke-direct {v8, p0, p3}, Lcom/zjx/jyandroid/ForegroundService/a$e;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$b0;)V

    const/4 v5, 0x0

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/zjx/jyandroid/ForegroundService/a$f;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-static {}, LR5/f;->d()LR5/f;

    move-result-object p1

    const/16 v0, 0x1b58

    invoke-virtual {p1, p2, v0, p0}, LR5/f;->b(Lcom/android/volley/Request;ILjava/lang/Object;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lo6/g;

    sget-object v0, Led/a;->a:[Ljava/lang/String;

    const-wide v2, -0x1b1c1f79daedL

    invoke-static {v2, v3, v0}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zjx/jyandroid/e$g;->c:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->w(I)I

    move-result v3

    new-instance v4, Lo6/i;

    const-wide v5, -0x1b291f79daedL

    invoke-static {v5, v6, v0}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v7, -0x1b301f79daedL

    invoke-static {v7, v8, v0}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v5, p1}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p2, v2, v3, v4}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p2, v1, v1}, Lcom/zjx/jyandroid/ForegroundService/a$b0;->a(Lo6/g;Ljava/util/LinkedList;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public w(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$c0;)V
    .locals 8

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    new-instance p1, Lo6/g;

    const-wide v2, -0x1c641f79daedL

    invoke-static {v2, v3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lo6/i;

    sget-object v4, Led/a;->a:[Ljava/lang/String;

    const-wide v5, -0x1c751f79daedL

    invoke-static {v5, v6, v4}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide v6, -0x1c7c1f79daedL

    invoke-static {v6, v7, v4}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, v2, v0, v3}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p2, p1, v1, v1}, Lcom/zjx/jyandroid/ForegroundService/a$c0;->a(Lo6/g;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/b;->d()Lcom/zjx/jyandroid/ForegroundService/b;

    move-result-object v2

    iget-boolean v2, v2, Lcom/zjx/jyandroid/ForegroundService/b;->c:Z

    if-nez v2, :cond_3

    if-eqz p2, :cond_2

    new-instance p1, Lo6/g;

    const-wide v2, -0x1c821f79daedL

    invoke-static {v2, v3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lo6/i;

    sget-object v4, Led/a;->a:[Ljava/lang/String;

    const-wide v5, -0x1c901f79daedL

    invoke-static {v5, v6, v4}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide v6, -0x1c971f79daedL

    invoke-static {v6, v7, v4}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, v2, v0, v3}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p2, p1, v1, v1}, Lcom/zjx/jyandroid/ForegroundService/a$c0;->a(Lo6/g;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/a$m;

    invoke-direct {v0, p0, p2}, Lcom/zjx/jyandroid/ForegroundService/a$m;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$c0;)V

    invoke-virtual {p0, p1, v0}, Lcom/zjx/jyandroid/ForegroundService/a;->n(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/a$Y;)V

    return-void
.end method

.method public x(Lcom/zjx/jyandroid/ForegroundService/a$d0;)V
    .locals 11

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/b;->d()Lcom/zjx/jyandroid/ForegroundService/b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zjx/jyandroid/ForegroundService/b;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lo6/g;

    const-wide v2, -0x1c9c1f79daedL

    invoke-static {v2, v3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lo6/i;

    sget-object v4, Led/a;->a:[Ljava/lang/String;

    const-wide v5, -0x1caa1f79daedL

    invoke-static {v5, v6, v4}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide v6, -0x1cb11f79daedL

    invoke-static {v6, v7, v4}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, -0x1

    invoke-direct {v0, v2, v4, v3}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p1, v0, v1}, Lcom/zjx/jyandroid/ForegroundService/a$d0;->a(Lo6/g;Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v2, -0x1cb61f79daedL

    invoke-static {v2, v3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ForegroundService/MainService;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Led/a;->a:[Ljava/lang/String;

    const-wide v3, -0x1cc91f79daedL

    invoke-static {v3, v4, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :try_start_0
    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/a$p;

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/a$n;

    invoke-direct {v7, p0, p1}, Lcom/zjx/jyandroid/ForegroundService/a$n;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$d0;)V

    new-instance v8, Lcom/zjx/jyandroid/ForegroundService/a$o;

    invoke-direct {v8, p0, p1}, Lcom/zjx/jyandroid/ForegroundService/a$o;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;Lcom/zjx/jyandroid/ForegroundService/a$d0;)V

    const/4 v5, 0x0

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/zjx/jyandroid/ForegroundService/a$p;-><init>(Lcom/zjx/jyandroid/ForegroundService/a;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-static {}, LR5/f;->d()LR5/f;

    move-result-object v2

    const/16 v3, 0x1b58

    invoke-virtual {v2, v0, v3, p0}, LR5/f;->b(Lcom/android/volley/Request;ILjava/lang/Object;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lo6/g;

    sget-object v3, Led/a;->a:[Ljava/lang/String;

    const-wide v4, -0x1cd61f79daedL

    invoke-static {v4, v5, v3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/zjx/jyandroid/e$g;->c:I

    invoke-static {v5}, Lcom/zjx/jyandroid/base/util/b;->w(I)I

    move-result v5

    new-instance v6, Lo6/i;

    const-wide v7, -0x1ce31f79daedL

    invoke-static {v7, v8, v3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v9, -0x1cea1f79daedL

    invoke-static {v9, v10, v3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2, v4, v5, v6}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p1, v2, v1}, Lcom/zjx/jyandroid/ForegroundService/a$d0;->a(Lo6/g;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final z(Lcom/zjx/jyandroid/ForegroundService/a$e0;)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/a;->d:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/ForegroundService/a$U;

    invoke-interface {v2, p1}, Lcom/zjx/jyandroid/ForegroundService/a$U;->c(Lcom/zjx/jyandroid/ForegroundService/a$e0;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
