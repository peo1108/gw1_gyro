.class public Lr/e0;
.super Lr/d;
.source "SourceFile"

# interfaces
.implements Ls/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr/e0$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lr/e0$a;

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public f:Z

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lr/d;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr/e0;->a:Ljava/util/List;

    sget-object v0, Lr/e0$a;->a:Lr/e0$a;

    iput-object v0, p0, Lr/e0;->b:Lr/e0$a;

    const/16 v0, 0x32

    iput v0, p0, Lr/e0;->c:I

    iput v0, p0, Lr/e0;->d:I

    sget v0, Lcom/zjx/jyandroid/R$string;->shadow:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr/e0;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr/e0;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr/e0;->g:Ljava/util/List;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->j:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr/e0;->g:Ljava/util/List;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->k:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr/e0;->g:Ljava/util/List;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->m:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr/e0;->g:Ljava/util/List;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->r:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr/e0;->g:Ljava/util/List;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->B:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr/e0;->g:Ljava/util/List;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->Q:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr/e0;->g:Ljava/util/List;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->y:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr/e0;->g:Ljava/util/List;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->A:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr/e0;->g:Ljava/util/List;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->E:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr/e0;->a:Ljava/util/List;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x64

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic b(Lr/e0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/e0;->r(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic c(Lr/e0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/e0;->q(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic d(Lr/e0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/e0;->lambda$loadFromMap$0(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic e(Lr/e0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/e0;->o(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic f(Lr/e0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/e0;->n(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic g(Lr/e0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/e0;->p(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$loadFromMap$0(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lr/e0$a;->values()[Lr/e0$a;

    move-result-object v0

    const-string v1, "type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lr/e0;->y(Lr/e0$a;)V

    return-void
.end method

.method private synthetic n(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "clickDuration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lr/e0;->s(I)V

    return-void
.end method

.method private synthetic o(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "clickInterval"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lr/e0;->t(I)V

    return-void
.end method

.method private synthetic p(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "crazyTapWeapons"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lr/e0;->v(Ljava/util/List;)V

    const-string v0, "conditionalCrazyTap"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lr/e0;->u(Z)V

    return-void
.end method

.method private synthetic q(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lr/e0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "pressPointsListData"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lr/e0;->a:Ljava/util/List;

    new-instance v2, Landroid/graphics/Point;

    const-string v3, "x"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "y"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {v2, v3, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic r(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lr/e0;->x(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lr/e0;->c:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lr/e0;->d:I

    return v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr/e0;->g:Ljava/util/List;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr/e0;->e:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lr/e0$a;
    .locals 1

    iget-object v0, p0, Lr/e0;->b:Lr/e0$a;

    return-object v0
.end method

.method public loadFromMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    new-instance v0, Lr/Y;

    invoke-direct {v0, p0, p1}, Lr/Y;-><init>(Lr/e0;Ljava/util/Map;)V

    invoke-static {v0}, Lr/d;->ignoringExc(Lr/d$a;)V

    new-instance v0, Lr/Z;

    invoke-direct {v0, p0, p1}, Lr/Z;-><init>(Lr/e0;Ljava/util/Map;)V

    invoke-static {v0}, Lr/d;->ignoringExc(Lr/d$a;)V

    new-instance v0, Lr/a0;

    invoke-direct {v0, p0, p1}, Lr/a0;-><init>(Lr/e0;Ljava/util/Map;)V

    invoke-static {v0}, Lr/d;->ignoringExc(Lr/d$a;)V

    new-instance v0, Lr/b0;

    invoke-direct {v0, p0, p1}, Lr/b0;-><init>(Lr/e0;Ljava/util/Map;)V

    invoke-static {v0}, Lr/d;->ignoringExc(Lr/d$a;)V

    new-instance v0, Lr/c0;

    invoke-direct {v0, p0, p1}, Lr/c0;-><init>(Lr/e0;Ljava/util/Map;)V

    invoke-static {v0}, Lr/d;->ignoringExc(Lr/d$a;)V

    new-instance v0, Lr/d0;

    invoke-direct {v0, p0, p1}, Lr/d0;-><init>(Lr/e0;Ljava/util/Map;)V

    invoke-static {v0}, Lr/d;->ignoringExc(Lr/d$a;)V

    return-void
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lr/e0;->f:Z

    return v0
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lr/e0;->c:I

    return-void
.end method

.method public t(I)V
    .locals 0

    iput p1, p0, Lr/e0;->d:I

    return-void
.end method

.method public toMap()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/Integer;

    sget-object v2, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->NORMAL_TOUCH_POINT_SC:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "data"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lr/e0;->b:Lr/e0$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lr/e0;->b:Lr/e0$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "clickDuration"

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lr/e0;->c:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lr/e0;->d:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "clickInterval"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lr/e0;->c:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-boolean v2, p0, Lr/e0;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "conditionalCrazyTap"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, p0, Lr/e0;->f:Z

    if-eqz v2, :cond_2

    const-string v2, "crazyTapWeapons"

    iget-object v3, p0, Lr/e0;->g:Ljava/util/List;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lr/e0;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget v6, v4, Landroid/graphics/Point;->x:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "x"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "y"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v3, "pressPointsListData"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "name"

    iget-object v3, p0, Lr/e0;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public u(Z)V
    .locals 0

    iput-boolean p1, p0, Lr/e0;->f:Z

    return-void
.end method

.method public v(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lr/e0;->g:Ljava/util/List;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "crazy tap weapons cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w(Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    sget p1, Lcom/zjx/jyandroid/R$string;->shadow:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lr/e0;->e:Ljava/lang/String;

    return-void
.end method

.method public y(Lr/e0$a;)V
    .locals 0

    iput-object p1, p0, Lr/e0;->b:Lr/e0$a;

    return-void
.end method
