.class public Lcom/zjx/jyandroid/MainApp/MainPageView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$GetUpdateInfoCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/MainApp/MainPageView;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/MainApp/MainPageView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/MainPageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$c;->a:Lcom/zjx/jyandroid/MainApp/MainPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to get firmware update info: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$c;->a:Lcom/zjx/jyandroid/MainApp/MainPageView;

    iput-object p2, p1, Lcom/zjx/jyandroid/MainApp/MainPageView;->k:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;

    iget-boolean p2, p2, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->hasUpdate:Z

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/zjx/jyandroid/MainApp/MainPageView;->h(Lcom/zjx/jyandroid/MainApp/MainPageView;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/zjx/jyandroid/MainApp/MainPageView;->h(Lcom/zjx/jyandroid/MainApp/MainPageView;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
