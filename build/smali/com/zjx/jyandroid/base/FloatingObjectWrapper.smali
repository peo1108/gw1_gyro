.class public abstract Lcom/zjx/jyandroid/base/FloatingObjectWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Interfaces/DisplayManagable;


# instance fields
.field protected baseView:Lcom/zjx/jyandroid/base/BaseFloatingView;

.field protected context:Landroid/content/Context;

.field protected dragEventHandler:Landroid/view/View$OnTouchListener;

.field protected draggable:Z

.field protected layoutParams:Landroid/view/WindowManager$LayoutParams;

.field protected onTouchCallback:Z

.field protected windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper;->context:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper;->windowManager:Landroid/view/WindowManager;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper;->draggable:Z

    return-void
.end method


# virtual methods
.method public addViewToWindow()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper;->baseView:Lcom/zjx/jyandroid/base/BaseFloatingView;

    iget-object v2, p0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public removeViewFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper;->baseView:Lcom/zjx/jyandroid/base/BaseFloatingView;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setBaseViewDraggable(Z)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper$1;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/base/FloatingObjectWrapper$1;-><init>(Lcom/zjx/jyandroid/base/FloatingObjectWrapper;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper;->dragEventHandler:Landroid/view/View$OnTouchListener;

    iget-object v1, p0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper;->baseView:Lcom/zjx/jyandroid/base/BaseFloatingView;

    iput-object v0, v1, Lcom/zjx/jyandroid/base/BaseFloatingView;->onTouchEventReceiver:Landroid/view/View$OnTouchListener;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper;->baseView:Lcom/zjx/jyandroid/base/BaseFloatingView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/zjx/jyandroid/base/BaseFloatingView;->onTouchEventReceiver:Landroid/view/View$OnTouchListener;

    :goto_0
    iput-boolean p1, p0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper;->draggable:Z

    return-void
.end method
