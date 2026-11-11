.class public Lf/b;
.super Lr/c;
.source "SourceFile"

# interfaces
.implements Ls/a;
.implements Ls/b;


# instance fields
.field public a:Lr/e;

.field public b:Lr/t;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr/c;-><init>()V

    new-instance v0, Lr/e;

    invoke-direct {v0}, Lr/e;-><init>()V

    iput-object v0, p0, Lf/b;->a:Lr/e;

    new-instance v0, Lr/t;

    invoke-direct {v0}, Lr/t;-><init>()V

    iput-object v0, p0, Lf/b;->b:Lr/t;

    const/4 v0, 0x1

    iput v0, p0, Lf/b;->c:I

    return-void
.end method

.method public static synthetic g(Lf/b;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Lf/b;->i(Ljava/util/Map;)V

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

    iget-object v0, p0, Lf/b;->b:Lr/t;

    invoke-virtual {v0}, Lr/t;->a()Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lf/b;->a:Lr/e;

    invoke-virtual {v0}, Lr/e;->b()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 1

    iget-object v0, p0, Lf/b;->a:Lr/e;

    invoke-virtual {v0, p1}, Lr/e;->d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget-object v0, p0, Lf/b;->b:Lr/t;

    invoke-virtual {v0, p1}, Lr/t;->d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    check-cast p1, Li/a;

    invoke-virtual {p1}, Li/a;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lf/b;->j(I)V

    return-void
.end method

.method public e(Ljava/util/Map;)V
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

    iget-object v0, p0, Lf/b;->a:Lr/e;

    invoke-virtual {v0, p1}, Lr/e;->e(Ljava/util/Map;)V

    const-string v0, "data"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lf/b;->b:Lr/t;

    invoke-virtual {v0, p1}, Lr/t;->e(Ljava/util/Map;)V

    new-instance v0, Lf/a;

    invoke-direct {v0, p0, p1}, Lf/a;-><init>(Lf/b;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    return-void
.end method

.method public f()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lf/b;->a:Lr/e;

    invoke-virtual {v0}, Lr/e;->f()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/lang/Integer;

    sget-object v3, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->ADJUST_RECOIL_VALUE:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "type"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "data"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lf/b;->b:Lr/t;

    invoke-virtual {v2}, Lr/t;->f()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget v2, p0, Lf/b;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "value"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lf/b;->c:I

    return v0
.end method

.method public final synthetic i(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "value"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lf/b;->j(I)V

    return-void
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lf/b;->c:I

    return-void
.end method
