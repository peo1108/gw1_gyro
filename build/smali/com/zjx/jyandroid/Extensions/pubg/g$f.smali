.class public Lcom/zjx/jyandroid/Extensions/pubg/g$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/pubg/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public a:Z

.field public b:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zjx/jyandroid/Extensions/pubg/g$f;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field public g:S

.field public h:S

.field public i:S

.field public j:S

.field public k:S

.field public l:S

.field public m:Lcom/zjx/jyandroid/Extensions/pubg/g$g;

.field public n:Lcom/zjx/jyandroid/Extensions/pubg/g$d;

.field public final synthetic o:Lcom/zjx/jyandroid/Extensions/pubg/g;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->o:Lcom/zjx/jyandroid/Extensions/pubg/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->a:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Lcom/zjx/jyandroid/Extensions/pubg/g$f;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()D
    .locals 5

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->f:Ljava/util/Map;

    if-eqz v0, :cond_c

    iget-short v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->i:S

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$d;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->f:Ljava/util/Map;

    const-string v1, "compensatorMuzzle"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :goto_0
    double-to-float v0, v0

    mul-float/2addr v0, v2

    goto :goto_1

    :cond_0
    iget-short v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->i:S

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$d;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->f:Ljava/util/Map;

    const-string v1, "flashHidderMuzzle"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-short v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->i:S

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$d;->d:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->f:Ljava/util/Map;

    const-string v1, "suppressorMuzzle"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_1
    iget-short v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->j:S

    sget-object v3, Lcom/zjx/jyandroid/Extensions/pubg/c$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->f:Ljava/util/Map;

    const-string v3, "verticalGrip"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    :goto_2
    double-to-float v1, v3

    mul-float/2addr v0, v1

    goto/16 :goto_3

    :cond_3
    iget-short v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->j:S

    sget-object v3, Lcom/zjx/jyandroid/Extensions/pubg/c$c;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->f:Ljava/util/Map;

    const-string v3, "horizontalGrip"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    goto :goto_2

    :cond_4
    iget-short v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->j:S

    sget-object v3, Lcom/zjx/jyandroid/Extensions/pubg/c$c;->d:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->f:Ljava/util/Map;

    const-string v3, "halfGrip"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    goto :goto_2

    :cond_5
    iget-short v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->j:S

    sget-object v3, Lcom/zjx/jyandroid/Extensions/pubg/c$c;->e:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->f:Ljava/util/Map;

    const-string v3, "lightGrip"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    goto :goto_2

    :cond_6
    iget-short v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->j:S

    sget-object v3, Lcom/zjx/jyandroid/Extensions/pubg/c$c;->f:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->f:Ljava/util/Map;

    const-string v3, "thumbGrip"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    goto :goto_2

    :cond_7
    iget-short v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->j:S

    sget-object v3, Lcom/zjx/jyandroid/Extensions/pubg/c$c;->g:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->f:Ljava/util/Map;

    const-string v3, "laserGrip"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    goto/16 :goto_2

    :cond_8
    :goto_3
    iget-short v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->k:S

    sget-object v3, Lcom/zjx/jyandroid/Extensions/pubg/c$h;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_9

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->f:Ljava/util/Map;

    const-string v3, "generalStock"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    double-to-float v1, v3

    mul-float/2addr v0, v1

    :cond_9
    iget-short v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->g:S

    sget-object v3, Lcom/zjx/jyandroid/Extensions/pubg/c$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_a

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->f:Ljava/util/Map;

    const-string v2, "crouch"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    :goto_4
    double-to-float v1, v1

    mul-float/2addr v0, v1

    goto :goto_5

    :cond_a
    iget-short v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->g:S

    sget-object v3, Lcom/zjx/jyandroid/Extensions/pubg/c$b;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_b

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->f:Ljava/util/Map;

    const-string v2, "prone"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    goto :goto_4

    :cond_b
    mul-float/2addr v0, v2

    :goto_5
    float-to-double v0, v0

    return-wide v0

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "coefficient map is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->m:Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    :goto_0
    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-wide v3, v1, Lcom/zjx/jyandroid/Extensions/pubg/g$g;->a:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v3, v1, Lcom/zjx/jyandroid/Extensions/pubg/g$g;->b:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/g$g;->c:Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public declared-synchronized d()Lcom/zjx/jyandroid/Extensions/pubg/g$g;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->e()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->m:Lcom/zjx/jyandroid/Extensions/pubg/g$g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->b()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/g;->a(Ljava/util/ArrayList;D)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/g;->g(Ljava/util/ArrayList;)Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->m:Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/g;->g(Ljava/util/ArrayList;)Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->m:Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->a:Z
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

.method public f(Lcom/zjx/jyandroid/Extensions/pubg/g$f;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public g(Lcom/zjx/jyandroid/Extensions/pubg/g$f;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->b:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    return-void
.end method
