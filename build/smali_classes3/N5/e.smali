.class public LN5/e;
.super Lt7/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LN5/e$a;
    }
.end annotation


# instance fields
.field public X:LN5/e$a;

.field public Y:Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$q;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LN5/e$a;->X:LN5/e$a;

    iput-object v0, p0, LN5/e;->X:LN5/e$a;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$q;->X:Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$q;

    iput-object v0, p0, LN5/e;->Y:Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$q;

    return-void
.end method


# virtual methods
.method public F()Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$q;
    .locals 1

    iget-object v0, p0, LN5/e;->Y:Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$q;

    return-object v0
.end method

.method public H()LN5/e$a;
    .locals 1

    iget-object v0, p0, LN5/e;->X:LN5/e$a;

    return-object v0
.end method

.method public I(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$q;)V
    .locals 0

    iput-object p1, p0, LN5/e;->Y:Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$q;

    return-void
.end method

.method public L(LN5/e$a;)V
    .locals 0

    iput-object p1, p0, LN5/e;->X:LN5/e$a;

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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, LN5/e;->X:LN5/e$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "triggerMode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, LN5/e;->Y:Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$q;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "switchZoomingType"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public d(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, LN5/e$a;->values()[LN5/e$a;

    move-result-object v0

    const-string v1, "triggerMode"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, LN5/e;->L(LN5/e$a;)V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$q;->values()[Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$q;

    move-result-object v0

    const-string v1, "switchZoomingType"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, LN5/e;->I(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$q;)V

    return-void
.end method
