.class public Lcom/zjx/jyandroid/MainApp/OTAActivity$e;
.super Lcom/jieli/jl_bt_ota/interfaces/BtEventCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/MainApp/OTAActivity;->o(Lv/e;Ljava/lang/String;Ljava/lang/String;Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lv/e;

.field public final synthetic c:Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/Runnable;

.field public final synthetic f:Lcom/zjx/jyandroid/MainApp/OTAActivity;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/OTAActivity;Lv/e;Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$e;->f:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    iput-object p2, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$e;->b:Lv/e;

    iput-object p3, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$e;->c:Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;

    iput-object p4, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$e;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$e;->e:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/jieli/jl_bt_ota/interfaces/BtEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnection(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$e;->b:Lv/e;

    invoke-virtual {p1}, Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;->isOTA()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$e;->b:Lv/e;

    iget-object p2, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$e;->c:Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;

    invoke-virtual {p1, p2}, Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;->startOTA(Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;)V

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$e;->b:Lv/e;

    invoke-virtual {p1, p0}, Lcom/jieli/jl_bt_ota/impl/BluetoothBase;->unregisterBluetoothCallback(Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)Z

    :cond_1
    return-void
.end method

.method public onDiscovery(Landroid/bluetooth/BluetoothDevice;Lcom/jieli/jl_bt_ota/model/BleScanMessage;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    iget-object p2, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$e;->f:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u65b0\u641c\u5bfb\u5230\u84dd\u7259\u540d\u79f0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->c(Lcom/zjx/jyandroid/MainApp/OTAActivity;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$e;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$e;->f:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    invoke-static {p2}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->d(Lcom/zjx/jyandroid/MainApp/OTAActivity;)Lcom/zjx/jyandroid/databinding/ActivityOtaBinding;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zjx/jyandroid/databinding/ActivityOtaBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$e;->e:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p2, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$e;->b:Lv/e;

    invoke-virtual {p2, p1}, Lv/e;->connectBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    :cond_0
    return-void
.end method
