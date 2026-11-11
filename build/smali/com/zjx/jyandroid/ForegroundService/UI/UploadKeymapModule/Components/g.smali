.class public abstract Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;
.super Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;
    }
.end annotation


# instance fields
.field baseComponentProperty:Lr/a;

.field public deleteButtonClickedCallback:Lcom/zjx/jyandroid/base/Interfaces/ObjectRunnable;

.field public deleteButtonView:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/a;

.field public disableDeleteButton:Z

.field private draggable:Z

.field onTouchEventHandlerUploadKeymapComponent:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;

.field public onTouchEventReceiver:Landroid/view/View$OnTouchListener;

.field protected selected:Z

.field shouldIgnoreDrag:Z

.field protected touchListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/zjx/jyandroid/base/Interfaces/MView$OnTouchHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lr/a;

    invoke-direct {p1}, Lr/a;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->baseComponentProperty:Lr/a;

    .line 3
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$a;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->onTouchEventHandlerUploadKeymapComponent:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->disableDeleteButton:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->draggable:Z

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->touchListeners:Ljava/util/HashSet;

    .line 7
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->shouldIgnoreDrag:Z

    .line 8
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->deleteButtonView:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/a;

    .line 9
    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$a;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    new-instance p1, Lr/a;

    invoke-direct {p1}, Lr/a;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->baseComponentProperty:Lr/a;

    .line 12
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$a;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->onTouchEventHandlerUploadKeymapComponent:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->disableDeleteButton:Z

    const/4 p2, 0x1

    .line 14
    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->draggable:Z

    .line 15
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->touchListeners:Ljava/util/HashSet;

    .line 16
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->shouldIgnoreDrag:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p1, Lr/a;

    invoke-direct {p1}, Lr/a;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->baseComponentProperty:Lr/a;

    .line 19
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$a;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->onTouchEventHandlerUploadKeymapComponent:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->disableDeleteButton:Z

    const/4 p2, 0x1

    .line 21
    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->draggable:Z

    .line 22
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->touchListeners:Ljava/util/HashSet;

    .line 23
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->shouldIgnoreDrag:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 25
    new-instance p1, Lr/a;

    invoke-direct {p1}, Lr/a;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->baseComponentProperty:Lr/a;

    .line 26
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$a;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->onTouchEventHandlerUploadKeymapComponent:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->disableDeleteButton:Z

    const/4 p2, 0x1

    .line 28
    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->draggable:Z

    .line 29
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->touchListeners:Ljava/util/HashSet;

    .line 30
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->shouldIgnoreDrag:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->draggable:Z

    return p0
.end method


# virtual methods
.method public addOnTouchHandler(Lcom/zjx/jyandroid/base/Interfaces/MView$OnTouchHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->touchListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getComponentViews()[Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->deleteButtonView:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/a;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    return-object v1
.end method

.method public getUUID()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->baseComponentProperty:Lr/a;

    invoke-virtual {v0}, Lr/a;->c()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->selected:Z

    return v0
.end method

.method public loadFromMap(Ljava/util/Map;)V
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

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->baseComponentProperty:Lr/a;

    invoke-virtual {v0, p1}, Lr/a;->loadFromMap(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->baseComponentProperty:Lr/a;

    invoke-virtual {p1}, Lr/a;->b()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onDelete()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->onTouchEventReceiver:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->onTouchEventHandlerUploadKeymapComponent:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;

    invoke-virtual {v0, p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$b;->touchOccurred(Landroid/view/View;Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->touchListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/base/Interfaces/MView$OnTouchHandler;

    invoke-interface {v1, p0, p1}, Lcom/zjx/jyandroid/base/Interfaces/MView$OnTouchHandler;->touchOccurred(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public removeOnTouchHandler(Lcom/zjx/jyandroid/base/Interfaces/MView$OnTouchHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->touchListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setFrame(Landroid/graphics/Rect;)V
    .locals 7

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v3

    if-gt v1, v3, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p1, Landroid/graphics/Rect;->right:I

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v2

    if-gt v1, v2, :cond_1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->right:I

    const/4 v2, 0x0

    const/16 v3, 0x14

    if-ge v1, v3, :cond_2

    new-instance v1, Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v4, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, v1

    goto :goto_0

    :cond_2
    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    if-le v1, v4, :cond_3

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int v5, v1, v5

    iget v6, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v5, v6, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, v4

    :cond_3
    :goto_0
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    if-le v1, v4, :cond_4

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, v0, v3

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {v1, v2, v3, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, v1

    goto :goto_1

    :cond_4
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v3, :cond_5

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, v0

    :cond_5
    :goto_1
    invoke-super {p0, p1}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->isSelected()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->selected:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->disableDeleteButton:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->deleteButtonView:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/a;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->updateDeleteButtonViewPosition()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->disableDeleteButton:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->deleteButtonView:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/a;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public toMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->baseComponentProperty:Lr/a;

    invoke-virtual {p0}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr/a;->d(Landroid/graphics/Rect;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->baseComponentProperty:Lr/a;

    invoke-virtual {v1}, Lr/a;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/util/b;->M(Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public updateDeleteButtonViewPosition()V
    .locals 2

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/a;->a(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->deleteButtonView:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/a;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/base/CustomViews/MImageView;->setFrame(Landroid/graphics/Rect;)V

    return-void
.end method
