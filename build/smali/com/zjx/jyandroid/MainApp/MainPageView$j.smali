.class public Lcom/zjx/jyandroid/MainApp/MainPageView$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/MainApp/MainPageView;->onFinishInflate()V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$j;->a:Lcom/zjx/jyandroid/MainApp/MainPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$j;->a:Lcom/zjx/jyandroid/MainApp/MainPageView;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/MainPageView;->j:Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getHardwareManager()Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/zjx/jyandroid/Hardware/IHardwareManageable;->getDeviceVersionMode()Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$j;->a:Lcom/zjx/jyandroid/MainApp/MainPageView;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lcom/zjx/jyandroid/R$string;->prompt:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u56fa\u4ef6\u7248\u672c\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;->mcuVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;->btVersion:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "\u786e\u5b9a"

    invoke-static {v0, v1, p1, v2}, Lcom/zjx/jyandroid/base/util/b;->W(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
