.class public LB6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile c:LB6/a;


# instance fields
.field public a:Ln7/a;

.field public b:LH6/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LB6/a;->a:Ln7/a;

    iput-object v0, p0, LB6/a;->b:LH6/a;

    return-void
.end method

.method public static e()LB6/a;
    .locals 2

    sget-object v0, LB6/a;->c:LB6/a;

    if-nez v0, :cond_1

    const-class v0, LB6/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, LB6/a;->c:LB6/a;

    if-nez v1, :cond_0

    new-instance v1, LB6/a;

    invoke-direct {v1}, LB6/a;-><init>()V

    sput-object v1, LB6/a;->c:LB6/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, LB6/a;->c:LB6/a;

    return-object v0
.end method


# virtual methods
.method public a()Ln7/a;
    .locals 1

    iget-object v0, p0, LB6/a;->a:Ln7/a;

    return-object v0
.end method

.method public b()LH6/a;
    .locals 1

    iget-object v0, p0, LB6/a;->b:LH6/a;

    return-object v0
.end method

.method public c(Ln7/a;)V
    .locals 0

    iput-object p1, p0, LB6/a;->a:Ln7/a;

    return-void
.end method

.method public d(LH6/a;)V
    .locals 0

    iput-object p1, p0, LB6/a;->b:LH6/a;

    return-void
.end method
