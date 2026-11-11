.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y$b;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y$b;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    add-float/2addr v0, p2

    float-to-int p2, v0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p2

    sget-object v0, Lr/F0;->g:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p2, v0, :cond_1

    return v1

    :cond_1
    iget-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y$b;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;

    invoke-virtual {p2, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y$b;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->updateDeleteButtonViewPosition()V

    :goto_0
    return v1
.end method
