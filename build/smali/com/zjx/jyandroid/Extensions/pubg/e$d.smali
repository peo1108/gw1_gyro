.class public Lcom/zjx/jyandroid/Extensions/pubg/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Interfaces/OnFrameChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/e;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/e;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$d;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameChanged(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$d;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/e;->z:Lj/g;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getOnFrameChangedListener()Lcom/zjx/jyandroid/base/Interfaces/OnFrameChangedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$d;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->z:Lj/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setOnFrameChangedListener(Lcom/zjx/jyandroid/base/Interfaces/OnFrameChangedListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$d;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->z:Lj/g;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$d;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/e;->z:Lj/g;

    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr v0, p2

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lj/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$d;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    iget-object p2, p2, Lcom/zjx/jyandroid/Extensions/pubg/e;->z:Lj/g;

    invoke-virtual {p2, p1}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setOnFrameChangedListener(Lcom/zjx/jyandroid/base/Interfaces/OnFrameChangedListener;)V

    return-void
.end method
