.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Interfaces/MView$OnTouchHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:F

.field public e:F

.field public final synthetic f:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;->f:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;->a:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;->b:I

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;->c:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;->d:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;->e:F

    return-void
.end method

.method public touchOccurred(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 4

    check-cast p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    invoke-static {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->access$000(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    const/4 p1, 0x6

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;->a:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v3, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;->a:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;->a(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;Landroid/view/MotionEvent;)V

    iput-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;->a:Z

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;->b:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;->d:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;->c:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    add-float/2addr v1, p2

    iget p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;->e:F

    sub-float/2addr v1, p2

    float-to-int p2, v1

    invoke-virtual {p1, v0, p2}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setOrigin(II)V

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->deleteButtonView:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/a;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;->f:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->updateDeleteButtonViewPosition()V

    goto :goto_0

    :cond_4
    iput-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;->a:Z

    invoke-virtual {p0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;->a(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;Landroid/view/MotionEvent;)V

    :cond_5
    :goto_0
    return-void
.end method
