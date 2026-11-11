.class public Lr/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr/y;->e(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Lr/y;


# direct methods
.method public constructor <init>(Lr/y;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lr/y$a;->b:Lr/y;

    iput-object p2, p0, Lr/y$a;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lr/y$a;->b:Lr/y;

    iget-object v1, p0, Lr/y$a;->a:Ljava/util/Map;

    const-string v2, "touchTerminate"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lr/y;->h:Z

    iget-object v0, p0, Lr/y$a;->a:Ljava/util/Map;

    const-string v1, "touchTerminateRect"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "x"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const-string v2, "y"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const-string v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "height"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v4, p0, Lr/y$a;->b:Lr/y;

    new-instance v5, Landroid/graphics/Rect;

    int-to-float v1, v1

    int-to-float v3, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    sub-float v7, v1, v3

    float-to-int v7, v7

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v0, v6

    sub-float v6, v2, v0

    float-to-int v6, v6

    add-float/2addr v1, v3

    float-to-int v1, v1

    add-float/2addr v2, v0

    float-to-int v0, v2

    invoke-direct {v5, v7, v6, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, v4, Lr/y;->i:Landroid/graphics/Rect;

    return-void
.end method
