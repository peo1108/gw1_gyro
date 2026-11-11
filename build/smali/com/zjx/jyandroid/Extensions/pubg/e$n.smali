.class public Lcom/zjx/jyandroid/Extensions/pubg/e$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/e;->l()V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$n;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$n;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    iget-boolean v1, p1, Lcom/zjx/jyandroid/Extensions/pubg/e;->c:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/zjx/jyandroid/Extensions/pubg/e;->w(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$n;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    iput-boolean v0, p1, Lcom/zjx/jyandroid/Extensions/pubg/e;->c:Z

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$n;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/e;->d:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v0
.end method
