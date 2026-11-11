.class public LD7/a;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LD7/a$a;
    }
.end annotation


# instance fields
.field public R6:Landroid/view/View$OnTouchListener;

.field public S6:Landroid/view/WindowManager;

.field public T6:Z

.field public U6:I

.field public V6:I

.field public W6:F

.field public X6:F

.field public Y6:LD7/a$a;

.field public Z6:I

.field public a7:I

.field public b7:I

.field public c7:I

.field public d7:LD7/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Li/P;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const p1, -0xf423f

    .line 2
    iput p1, p0, LD7/a;->Z6:I

    iput p1, p0, LD7/a;->a7:I

    const p1, 0xf423f

    iput p1, p0, LD7/a;->b7:I

    iput p1, p0, LD7/a;->c7:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Li/P;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Li/S;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, -0xf423f

    .line 4
    iput p1, p0, LD7/a;->Z6:I

    iput p1, p0, LD7/a;->a7:I

    const p1, 0xf423f

    iput p1, p0, LD7/a;->b7:I

    iput p1, p0, LD7/a;->c7:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Li/P;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Li/S;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, -0xf423f

    .line 6
    iput p1, p0, LD7/a;->Z6:I

    iput p1, p0, LD7/a;->a7:I

    const p1, 0xf423f

    iput p1, p0, LD7/a;->b7:I

    iput p1, p0, LD7/a;->c7:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Li/P;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Li/S;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, -0xf423f

    .line 8
    iput p1, p0, LD7/a;->Z6:I

    iput p1, p0, LD7/a;->a7:I

    const p1, 0xf423f

    iput p1, p0, LD7/a;->b7:I

    iput p1, p0, LD7/a;->c7:I

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean v0, p0, LD7/a;->T6:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, LD7/a;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_4

    :cond_0
    iget v1, p0, LD7/a;->U6:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    add-float/2addr v2, v1

    iget v1, p0, LD7/a;->W6:F

    sub-float/2addr v2, v1

    float-to-int v1, v2

    iget v2, p0, LD7/a;->V6:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    add-float/2addr v3, v2

    iget v2, p0, LD7/a;->X6:F

    sub-float/2addr v3, v2

    float-to-int v2, v3

    iget v3, p0, LD7/a;->Z6:I

    if-ge v1, v3, :cond_1

    :goto_0
    move v1, v3

    goto :goto_1

    :cond_1
    iget v3, p0, LD7/a;->b7:I

    if-le v1, v3, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iget v3, p0, LD7/a;->a7:I

    if-ge v2, v3, :cond_3

    :goto_2
    move v2, v3

    goto :goto_3

    :cond_3
    iget v3, p0, LD7/a;->c7:I

    if-le v2, v3, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, v2

    invoke-direct {v3, v1, v2, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v3}, LD7/a;->setFrame(Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_5
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, LD7/a;->U6:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, LD7/a;->V6:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, LD7/a;->W6:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, LD7/a;->X6:F

    :cond_6
    :goto_4
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getFrame()Landroid/graphics/Rect;
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v4, v2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v0, v3

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "6\u00a6M\u00ce{\u000f\u00b84\u00b0N\u00f1zV\u008a#\u009dD\u00f8pQ\u00ad.\u00cc\u000b\u00b2\u00ab\u0004\u00b05\u0093V\u00e4\u009f\u0010\u00f4,\u00cfb\u00a8\u009b\r\u00bb\u001c\u00cbs\u00a3\u00919\u00aeR\u00c01\u001c\u0092x\u00b2[\u00f1h\u0016\u0091s\u00adL\u00f4f\u0013\u0084<\u009bQ\u00f0vP"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOnFrameChangedListener()LD7/c;
    .locals 1

    iget-object v0, p0, LD7/a;->d7:LD7/c;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, LD7/a;->S6:Landroid/view/WindowManager;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, LD7/a;->Y6:LD7/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, LD7/a$a;->a(Landroid/view/View;Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public s0()Z
    .locals 1

    iget-boolean v0, p0, LD7/a;->T6:Z

    return v0
.end method

.method public setDraggable(Z)V
    .locals 0

    iput-boolean p1, p0, LD7/a;->T6:Z

    return-void
.end method

.method public setFrame(Landroid/graphics/Rect;)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Li/P;
        .end annotation
    .end param

    iget-object v0, p0, LD7/a;->S6:Landroid/view/WindowManager;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, LD7/a;->S6:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0}, Lcom/zjx/gw2lic/SkipShot;->reapply(Landroid/view/View;)V

    iget-object v0, p0, LD7/a;->d7:LD7/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, LD7/c;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "<\u00b5U\u00cck[\u008b4\u00acA\u00f3}V\u00815\u009dD\u00e2h\u001d"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "-\u00aeZ\u00c5a\u000c\u00c88\u00a3A\u00fdn\u0013\u0091p\u00d4Y\u00b7j\u001e\u00aak\u00cb@\u00e6\u00d1L\u008d.\u00daS\u00ad\u008c\u000e\u00b16\u008ev\u00e9\u008cB\u00a1S\u00dd6\u00e1\u0095}\u00abS\u00c0t\u001a\u00cb:\u00bc\u0012\u00e8e\u0017\u0082<\u00b7\r\u00f7f\u001a\u0080)\u00deZ\u00b5{\n\u00a8v"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    instance-of v0, p1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u0015\u00a9X\u00d8.,\u0081;\u00a6@\u00ebD\u0017\u008d1\u00daO\u00e5*=\u00bf2\u00d7P\u00e6\u00af\r\u00ab\'\u00deS\u00ad\u0093\u0014\u00f4 \u00cdx\u00ed\u0085\u0016\u00aaX\u0089e\u00ea\u009e>\u00af\u0017\u00d0y\u0017\u0098x\u00aa\\\u00f3uY\u0091<\u00b2F\u00e9\'\u0003\u0088:\u00d3\u0008\u00c2k\u0001\u00b8&\u00c1n\u00f1\u0093\u000b\u00b0!\u00c3"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnFrameChangedListener(LD7/c;)V
    .locals 0

    iput-object p1, p0, LD7/a;->d7:LD7/c;

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object p1, p0, LD7/a;->R6:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setOnViewConfigurationChangedListener(LD7/a$a;)V
    .locals 0

    iput-object p1, p0, LD7/a;->Y6:LD7/a$a;

    return-void
.end method

.method public setWindowManager(Landroid/view/WindowManager;)V
    .locals 0

    iput-object p1, p0, LD7/a;->S6:Landroid/view/WindowManager;

    return-void
.end method
