.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$k;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$k;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    iget-boolean v2, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->d:Z

    if-nez v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->R(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$k;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->d:Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$k;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->c:Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;

    invoke-virtual {v0, p1, p2}, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;->touchOccurred(Landroid/view/View;Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$k;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->b:Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveDoubleClickEventParser;

    invoke-virtual {v0, p1, p2}, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveClickEventParser;->touchOccurred(Landroid/view/View;Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$k;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->e:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1
.end method
