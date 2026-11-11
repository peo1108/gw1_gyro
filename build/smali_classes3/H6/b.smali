.class public LH6/b;
.super LH6/a;
.source "SourceFile"


# instance fields
.field public final P6:Landroid/graphics/Point;

.field public final Q6:Landroid/graphics/Rect;

.field public R6:Lcom/zjx/jyandroid/ForegroundService/UI/a;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .locals 1

    invoke-direct {p0, p1, p2}, LH6/a;-><init>(Landroid/graphics/Rect;Landroid/graphics/Point;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->F()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v0

    iput-object v0, p0, LH6/b;->R6:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    iput-object p2, p0, LH6/b;->P6:Landroid/graphics/Point;

    iput-object p1, p0, LH6/b;->Q6:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public B()V
    .locals 4

    iget-object v0, p0, LH6/b;->R6:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->u()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$h;->j()Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, LH6/b;->R6:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->m()Landroid/graphics/Point;

    move-result-object v1

    const/4 v2, -0x3

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Point;->offset(II)V

    invoke-virtual {p0, v1}, LH6/a;->E(Landroid/graphics/Point;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1}, LH6/a;->G(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LH6/a;->Q(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LH6/b;->P6:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, LH6/a;->E(Landroid/graphics/Point;)V

    iget-object v0, p0, LH6/b;->Q6:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, LH6/a;->G(Landroid/graphics/Rect;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, LH6/a;->Q(I)V

    :goto_0
    invoke-super {p0}, LH6/a;->B()V

    return-void
.end method

.method public f(II)V
    .locals 0

    invoke-super {p0, p1, p2}, LH6/a;->f(II)V

    return-void
.end method
