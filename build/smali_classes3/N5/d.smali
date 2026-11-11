.class public LN5/d;
.super Lt7/b;
.source "SourceFile"


# instance fields
.field public X:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field public Y:F

.field public Z:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LN5/d;->X:Ljava/util/List;

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, LN5/d;->Y:F

    const/high16 v2, 0x41700000    # 15.0f

    iput v2, p0, LN5/d;->Z:F

    sget-object v2, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->p6:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LN5/d;->X:Ljava/util/List;

    sget-object v2, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->q6:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-static {v2, v0}, LN5/c;->a(Lcom/zjx/jyandroid/Extensions/pubg/c$l;Ljava/util/List;)V

    iget-object v0, p0, LN5/d;->X:Ljava/util/List;

    sget-object v2, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->s6:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-static {v2, v0}, LN5/c;->a(Lcom/zjx/jyandroid/Extensions/pubg/c$l;Ljava/util/List;)V

    iget-object v0, p0, LN5/d;->X:Ljava/util/List;

    sget-object v2, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->x6:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-static {v2, v0}, LN5/c;->a(Lcom/zjx/jyandroid/Extensions/pubg/c$l;Ljava/util/List;)V

    iget-object v0, p0, LN5/d;->X:Ljava/util/List;

    sget-object v2, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->H6:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-static {v2, v0}, LN5/c;->a(Lcom/zjx/jyandroid/Extensions/pubg/c$l;Ljava/util/List;)V

    iget-object v0, p0, LN5/d;->X:Ljava/util/List;

    sget-object v2, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->W6:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-static {v2, v0}, LN5/c;->a(Lcom/zjx/jyandroid/Extensions/pubg/c$l;Ljava/util/List;)V

    iget-object v0, p0, LN5/d;->X:Ljava/util/List;

    sget-object v2, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->E6:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-static {v2, v0}, LN5/c;->a(Lcom/zjx/jyandroid/Extensions/pubg/c$l;Ljava/util/List;)V

    iget-object v0, p0, LN5/d;->X:Ljava/util/List;

    sget-object v2, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->G6:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-static {v2, v0}, LN5/c;->a(Lcom/zjx/jyandroid/Extensions/pubg/c$l;Ljava/util/List;)V

    iget-object v0, p0, LN5/d;->X:Ljava/util/List;

    sget-object v2, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->K6:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-static {v2, v0}, LN5/c;->a(Lcom/zjx/jyandroid/Extensions/pubg/c$l;Ljava/util/List;)V

    iget-object v0, p0, LN5/d;->X:Ljava/util/List;

    sget-object v2, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->o6:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-static {v2, v0}, LN5/c;->a(Lcom/zjx/jyandroid/Extensions/pubg/c$l;Ljava/util/List;)V

    iget-object v0, p0, LN5/d;->X:Ljava/util/List;

    sget-object v2, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->v6:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ForegroundService/MainService;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p0, v0}, LN5/d;->p(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, LN5/d;->u(F)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p0, v0}, LN5/d;->p(F)V

    invoke-virtual {p0, v1}, LN5/d;->u(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public C()F
    .locals 1

    iget v0, p0, LN5/d;->Z:F

    return v0
.end method

.method public F()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LN5/d;->X:Ljava/util/List;

    return-object v0
.end method

.method public H(Ljava/util/List;)V
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

    iput-object p1, p0, LN5/d;->X:Ljava/util/List;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "crazy tap weapons cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Ljava/util/Map;
    .locals 3
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

    const-string v1, "crazyTapWeapons"

    iget-object v2, p0, LN5/d;->X:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, LN5/d;->Y:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "ClickDuration"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, LN5/d;->Z:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "ClickInterval"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public d(Ljava/util/Map;)V
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

    const-string v0, "crazyTapWeapons"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LN5/d;->H(Ljava/util/List;)V

    :try_start_0
    const-string v0, "ClickDuration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, LN5/d;->p(F)V

    const-string v0, "ClickInterval"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, LN5/d;->u(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public p(F)V
    .locals 0

    iput p1, p0, LN5/d;->Y:F

    return-void
.end method

.method public u(F)V
    .locals 0

    iput p1, p0, LN5/d;->Z:F

    return-void
.end method

.method public w()F
    .locals 1

    iget v0, p0, LN5/d;->Y:F

    return v0
.end method
