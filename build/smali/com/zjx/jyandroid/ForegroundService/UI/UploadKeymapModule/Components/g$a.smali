.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    iget-object v0, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->deleteButtonClickedCallback:Lcom/zjx/jyandroid/base/Interfaces/ObjectRunnable;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->deleteButtonView:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/a;

    invoke-interface {v0, p1}, Lcom/zjx/jyandroid/base/Interfaces/ObjectRunnable;->run(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->onDelete()V

    :cond_1
    return p2
.end method
