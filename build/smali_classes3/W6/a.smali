.class public LW6/a;
.super Lt7/b;
.source "SourceFile"


# instance fields
.field public V1:Lh7/b;

.field public X:Lh7/b;

.field public Y:Lh7/b;

.field public Z:Lh7/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh7/b;

    invoke-direct {v0}, Lh7/b;-><init>()V

    iput-object v0, p0, LW6/a;->X:Lh7/b;

    new-instance v0, Lh7/b;

    invoke-direct {v0}, Lh7/b;-><init>()V

    iput-object v0, p0, LW6/a;->Y:Lh7/b;

    new-instance v0, Lh7/b;

    invoke-direct {v0}, Lh7/b;-><init>()V

    iput-object v0, p0, LW6/a;->Z:Lh7/b;

    new-instance v0, Lh7/b;

    invoke-direct {v0}, Lh7/b;-><init>()V

    iput-object v0, p0, LW6/a;->V1:Lh7/b;

    return-void
.end method


# virtual methods
.method public F()Lh7/b;
    .locals 1

    iget-object v0, p0, LW6/a;->Z:Lh7/b;

    return-object v0
.end method

.method public H()Lh7/b;
    .locals 1

    iget-object v0, p0, LW6/a;->X:Lh7/b;

    return-object v0
.end method

.method public I()Lh7/b;
    .locals 1

    iget-object v0, p0, LW6/a;->V1:Lh7/b;

    return-object v0
.end method

.method public L()Lh7/b;
    .locals 1

    iget-object v0, p0, LW6/a;->Y:Lh7/b;

    return-object v0
.end method

.method public M(Lh7/b;)V
    .locals 0

    iput-object p1, p0, LW6/a;->Z:Lh7/b;

    return-void
.end method

.method public N(Lh7/b;)V
    .locals 0

    iput-object p1, p0, LW6/a;->X:Lh7/b;

    return-void
.end method

.method public O(Lh7/b;)V
    .locals 0

    iput-object p1, p0, LW6/a;->V1:Lh7/b;

    return-void
.end method

.method public P(Lh7/b;)V
    .locals 0

    iput-object p1, p0, LW6/a;->Y:Lh7/b;

    return-void
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

    .annotation build Li/P;
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, LW6/a;->H()Lh7/b;

    move-result-object v1

    invoke-virtual {v1}, Lh7/b;->u()[I

    move-result-object v1

    const-string v2, "northHotkey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, LW6/a;->I()Lh7/b;

    move-result-object v1

    invoke-virtual {v1}, Lh7/b;->u()[I

    move-result-object v1

    const-string v2, "southHotkey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, LW6/a;->L()Lh7/b;

    move-result-object v1

    invoke-virtual {v1}, Lh7/b;->u()[I

    move-result-object v1

    const-string v2, "westHotkey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, LW6/a;->F()Lh7/b;

    move-result-object v1

    invoke-virtual {v1}, Lh7/b;->u()[I

    move-result-object v1

    const-string v2, "eastHotkey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public d(Ljava/util/Map;)V
    .locals 2
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
            ">;)V"
        }
    .end annotation

    new-instance v0, Lh7/b;

    const-string v1, "northHotkey"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v1}, Lh7/b;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, LW6/a;->N(Lh7/b;)V

    new-instance v0, Lh7/b;

    const-string v1, "eastHotkey"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v1}, Lh7/b;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, LW6/a;->M(Lh7/b;)V

    new-instance v0, Lh7/b;

    const-string v1, "westHotkey"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v1}, Lh7/b;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, LW6/a;->P(Lh7/b;)V

    new-instance v0, Lh7/b;

    const-string v1, "southHotkey"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {v0, p1}, Lh7/b;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, LW6/a;->O(Lh7/b;)V

    return-void
.end method
