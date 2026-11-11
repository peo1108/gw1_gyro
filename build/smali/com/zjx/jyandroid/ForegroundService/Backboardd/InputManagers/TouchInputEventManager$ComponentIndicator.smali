.class public Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;
.super Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ComponentIndicator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;->this$0:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;

    invoke-direct {p0, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setBackgroundColor(I)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBorderColor(I)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;->updateBorderDashStyle()V

    return-void
.end method


# virtual methods
.method public onKeyEvent(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public updateBorderDashStyle()V
    .locals 3

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object v0

    invoke-virtual {v0}, Ly/d;->f()I

    move-result v1

    invoke-virtual {v0}, Ly/d;->e()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setBorderDashWidthAndGap(II)V

    invoke-virtual {v0}, Ly/d;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBorderWidth(I)V

    return-void
.end method
