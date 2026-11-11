.class public LR6/f;
.super Ly7/c;
.source "SourceFile"

# interfaces
.implements LS6/d;


# instance fields
.field public X:I

.field public Y:LS6/d$a;

.field public Z:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, LR6/f;->X:I

    sget-object v0, LS6/d$a;->X:LS6/d$a;

    iput-object v0, p0, LR6/f;->Y:LS6/d$a;

    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0xc8

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, LR6/f;->Z:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 0

    iput p1, p0, LR6/f;->X:I

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

    invoke-virtual {p0}, LR6/f;->getEndPosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "moswipe:toX"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, LR6/f;->getEndPosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "moswipe:toY"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, LR6/f;->getDuration()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "moswipe:duration"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, LR6/f;->getType()LS6/d$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "moswipe:swipeType"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public d(Ljava/util/Map;)V
    .locals 3
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

    const-string v0, "moswipe:duration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LR6/f;->b(I)V

    new-instance v0, Landroid/graphics/Point;

    const-string v1, "moswipe:toX"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const-string v2, "moswipe:toY"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v0}, LR6/f;->setEndPosition(Landroid/graphics/Point;)V

    invoke-static {}, LS6/d$a;->values()[LS6/d$a;

    move-result-object v0

    const-string v1, "moswipe:swipeType"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, LR6/f;->e(LS6/d$a;)V

    return-void
.end method

.method public e(LS6/d$a;)V
    .locals 0

    iput-object p1, p0, LR6/f;->Y:LS6/d$a;

    return-void
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, LR6/f;->X:I

    return v0
.end method

.method public getEndPosition()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, LR6/f;->Z:Landroid/graphics/Point;

    return-object v0
.end method

.method public getType()LS6/d$a;
    .locals 1

    iget-object v0, p0, LR6/f;->Y:LS6/d$a;

    return-object v0
.end method

.method public setEndPosition(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, LR6/f;->Z:Landroid/graphics/Point;

    return-void
.end method
