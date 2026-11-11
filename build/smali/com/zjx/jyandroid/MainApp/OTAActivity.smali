.class public Lcom/zjx/jyandroid/MainApp/OTAActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# instance fields
.field public a:Landroid/bluetooth/BluetoothAdapter;

.field public final b:Landroid/bluetooth/le/BluetoothLeScanner;

.field public c:Lcom/zjx/jyandroid/databinding/ActivityOtaBinding;

.field public d:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

.field public e:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;

.field public f:Landroid/widget/Button;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/ProgressBar;

.field public k:Lcom/liulishuo/filedownloader/BaseDownloadTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->b:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getHardwareManager()Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->d:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->k:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    return-void
.end method

.method public static synthetic c(Lcom/zjx/jyandroid/MainApp/OTAActivity;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/zjx/jyandroid/MainApp/OTAActivity;)Lcom/zjx/jyandroid/databinding/ActivityOtaBinding;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->c:Lcom/zjx/jyandroid/databinding/ActivityOtaBinding;

    return-object p0
.end method

.method public static synthetic e(Lcom/zjx/jyandroid/MainApp/OTAActivity;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->j(I)V

    return-void
.end method

.method public static synthetic f(Lcom/zjx/jyandroid/MainApp/OTAActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->n()V

    return-void
.end method

.method public static synthetic g(Lcom/zjx/jyandroid/MainApp/OTAActivity;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic h(Lcom/zjx/jyandroid/MainApp/OTAActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->m()V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->i:Landroid/widget/TextView;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final j(I)V
    .locals 6

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/ 4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "/bt.ufw"

    const/4 v1, 0x0

    const-string v2, "\u641c\u5bfb\u84dd\u7259\u4e2d\u3002\u3002\u3002\u84dd\u7259\u540d\u79f0\uff1a"

    const-string v3, "\u83b7\u53d6\u82af\u7247\u540d\u79f0\u5931\u8d25\u3002"

    if-eqz p1, :cond_6

    const/4 v4, 0x1

    if-eq p1, v4, :cond_4

    const/4 v0, 0x2

    const-string v5, "/mcu.ufw"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p1, "\u7b2c\u56db\u9636\u6bb5\u5f00\u59cb"

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->i(Ljava/lang/String;)V

    new-instance p1, Lv/e;

    invoke-direct {p1}, Lv/e;-><init>()V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->e:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;

    iget-object v0, v0, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    sget-object v1, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;->MCU:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    invoke-static {v0, v1, v4}, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager;->getOTABluetoothName(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->n()V

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->i(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->e:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;

    iget-object v3, v2, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    iget v2, v2, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->updateVersionCode:I

    invoke-static {v3, v2}, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager;->getFirmwareSavePath(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zjx/jyandroid/MainApp/OTAActivity$a;

    invoke-direct {v2, p0, p1}, Lcom/zjx/jyandroid/MainApp/OTAActivity$a;-><init>(Lcom/zjx/jyandroid/MainApp/OTAActivity;Lv/e;)V

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->o(Lv/e;Ljava/lang/String;Ljava/lang/String;Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;)V

    goto/16 :goto_0

    :cond_2
    const-string p1, "\u7b2c\u4e09\u9636\u6bb5\u5f00\u59cb"

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->i(Ljava/lang/String;)V

    new-instance p1, Lv/e;

    invoke-direct {p1}, Lv/e;-><init>()V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->e:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;

    iget-object v0, v0, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    sget-object v4, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;->MCU:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    invoke-static {v0, v4, v1}, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager;->getOTABluetoothName(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->n()V

    return-void

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->i(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->e:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;

    iget-object v3, v2, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    iget v2, v2, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->updateVersionCode:I

    invoke-static {v3, v2}, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager;->getFirmwareSavePath(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zjx/jyandroid/MainApp/OTAActivity$j;

    invoke-direct {v2, p0, p1}, Lcom/zjx/jyandroid/MainApp/OTAActivity$j;-><init>(Lcom/zjx/jyandroid/MainApp/OTAActivity;Lv/e;)V

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->o(Lv/e;Ljava/lang/String;Ljava/lang/String;Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;)V

    goto/16 :goto_0

    :cond_4
    const-string p1, "\u7b2c\u4e8c\u9636\u6bb5\u5f00\u59cb"

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->i(Ljava/lang/String;)V

    new-instance p1, Lv/e;

    invoke-direct {p1}, Lv/e;-><init>()V

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->e:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;

    iget-object v1, v1, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    sget-object v5, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;->BT:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    invoke-static {v1, v5, v4}, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager;->getOTABluetoothName(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->n()V

    return-void

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->i(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->e:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;

    iget-object v4, v3, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    iget v3, v3, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->updateVersionCode:I

    invoke-static {v4, v3}, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager;->getFirmwareSavePath(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/zjx/jyandroid/MainApp/OTAActivity$i;

    invoke-direct {v2, p0, p1}, Lcom/zjx/jyandroid/MainApp/OTAActivity$i;-><init>(Lcom/zjx/jyandroid/MainApp/OTAActivity;Lv/e;)V

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->o(Lv/e;Ljava/lang/String;Ljava/lang/String;Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;)V

    goto :goto_0

    :cond_6
    const-string p1, "\u7b2c\u4e00\u9636\u6bb5 - \u5347\u7ea7\u4ece\u82af\u7247"

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->i(Ljava/lang/String;)V

    new-instance p1, Lv/e;

    invoke-direct {p1}, Lv/e;-><init>()V

    iget-object v4, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->e:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;

    iget-object v4, v4, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    sget-object v5, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;->BT:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    invoke-static {v4, v5, v1}, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager;->getOTABluetoothName(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->n()V

    return-void

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->i(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->e:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;

    iget-object v4, v3, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    iget v3, v3, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->updateVersionCode:I

    invoke-static {v4, v3}, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager;->getFirmwareSavePath(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/zjx/jyandroid/MainApp/OTAActivity$h;

    invoke-direct {v2, p0, p1}, Lcom/zjx/jyandroid/MainApp/OTAActivity$h;-><init>(Lcom/zjx/jyandroid/MainApp/OTAActivity;Lv/e;)V

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->o(Lv/e;Ljava/lang/String;Ljava/lang/String;Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;)V

    :goto_0
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/zjx/jyandroid/base/Components/Alert;

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->c:Lcom/zjx/jyandroid/databinding/ActivityOtaBinding;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/databinding/ActivityOtaBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/R$string;->prompt:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/zjx/jyandroid/base/Components/Alert;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v1, Lcom/zjx/jyandroid/R$string;->ok:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v3, Lcom/zjx/jyandroid/MainApp/OTAActivity$c;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/MainApp/OTAActivity$c;-><init>(Lcom/zjx/jyandroid/MainApp/OTAActivity;)V

    invoke-direct {p1, v1, v2, v3}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/base/Components/Alert;->show(Z)V

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/zjx/jyandroid/base/Components/Alert;

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->c:Lcom/zjx/jyandroid/databinding/ActivityOtaBinding;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/databinding/ActivityOtaBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/R$string;->prompt:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/zjx/jyandroid/base/Components/Alert;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v1, Lcom/zjx/jyandroid/R$string;->ok:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v3, Lcom/zjx/jyandroid/MainApp/OTAActivity$b;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/MainApp/OTAActivity$b;-><init>(Lcom/zjx/jyandroid/MainApp/OTAActivity;)V

    invoke-direct {p1, v1, v2, v3}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/base/Components/Alert;->show(Z)V

    return-void
.end method

.method public final m()V
    .locals 1

    const-string v0, "\u5347\u7ea7\u6210\u529f"

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->i(Ljava/lang/String;)V

    const-string v0, "\u5347\u7ea7\u6210\u529f\uff01"

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->l(Ljava/lang/String;)V

    return-void
.end method

.method public final n()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->f:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final o(Lv/e;Ljava/lang/String;Ljava/lang/String;Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;)V
    .locals 9

    new-instance v6, Lcom/zjx/jyandroid/MainApp/OTAActivity$d;

    invoke-direct {v6, p0, p1, p4}, Lcom/zjx/jyandroid/MainApp/OTAActivity$d;-><init>(Lcom/zjx/jyandroid/MainApp/OTAActivity;Lv/e;Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;)V

    invoke-static {}, Lcom/jieli/jl_bt_ota/model/BluetoothOTAConfigure;->createDefault()Lcom/jieli/jl_bt_ota/model/BluetoothOTAConfigure;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jieli/jl_bt_ota/model/BluetoothOTAConfigure;->setPriority(I)Lcom/jieli/jl_bt_ota/model/BluetoothOTAConfigure;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jieli/jl_bt_ota/model/BluetoothOTAConfigure;->setUseAuthDevice(Z)Lcom/jieli/jl_bt_ota/model/BluetoothOTAConfigure;

    move-result-object v2

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Lcom/jieli/jl_bt_ota/model/BluetoothOTAConfigure;->setBleIntervalMs(I)Lcom/jieli/jl_bt_ota/model/BluetoothOTAConfigure;

    move-result-object v2

    const/16 v4, 0xbb8

    invoke-virtual {v2, v4}, Lcom/jieli/jl_bt_ota/model/BluetoothOTAConfigure;->setTimeoutMs(I)Lcom/jieli/jl_bt_ota/model/BluetoothOTAConfigure;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/jieli/jl_bt_ota/model/BluetoothOTAConfigure;->setMtu(I)Lcom/jieli/jl_bt_ota/model/BluetoothOTAConfigure;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jieli/jl_bt_ota/model/BluetoothOTAConfigure;->setNeedChangeMtu(Z)Lcom/jieli/jl_bt_ota/model/BluetoothOTAConfigure;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jieli/jl_bt_ota/model/BluetoothOTAConfigure;->setUseReconnect(Z)Lcom/jieli/jl_bt_ota/model/BluetoothOTAConfigure;

    invoke-virtual {v0, p3}, Lcom/jieli/jl_bt_ota/model/BluetoothOTAConfigure;->setFirmwareFilePath(Ljava/lang/String;)Lcom/jieli/jl_bt_ota/model/BluetoothOTAConfigure;

    invoke-virtual {p1, v0}, Lcom/jieli/jl_bt_ota/impl/BluetoothBase;->configure(Lcom/jieli/jl_bt_ota/model/BluetoothOTAConfigure;)V

    invoke-virtual {p1, p2}, Lv/e;->y(Ljava/lang/String;)V

    const-wide/16 v7, 0x3a98

    invoke-virtual {p1, v7, v8}, Lcom/jieli/jl_bt_ota/impl/BluetoothDiscovery;->startBLEScan(J)I

    new-instance p3, Lcom/zjx/jyandroid/MainApp/OTAActivity$e;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/zjx/jyandroid/MainApp/OTAActivity$e;-><init>(Lcom/zjx/jyandroid/MainApp/OTAActivity;Lv/e;Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p3}, Lcom/jieli/jl_bt_ota/impl/BluetoothBase;->registerBluetoothCallback(Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)Z

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->c:Lcom/zjx/jyandroid/databinding/ActivityOtaBinding;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/databinding/ActivityOtaBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "bluetooth started"

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "no ble permission"

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/zjx/jyandroid/databinding/ActivityOtaBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/zjx/jyandroid/databinding/ActivityOtaBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->c:Lcom/zjx/jyandroid/databinding/ActivityOtaBinding;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/databinding/ActivityOtaBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "updateInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->e:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;

    sget p1, Lcom/zjx/jyandroid/R$id;->stageTextView:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->g:Landroid/widget/TextView;

    sget p1, Lcom/zjx/jyandroid/R$id;->progressTextView:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->h:Landroid/widget/TextView;

    sget p1, Lcom/zjx/jyandroid/R$id;->progressBar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->j:Landroid/widget/ProgressBar;

    sget p1, Lcom/zjx/jyandroid/R$id;->outputTextView:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->i:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    sget p1, Lcom/zjx/jyandroid/R$id;->finishButton:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/zjx/jyandroid/MainApp/OTAActivity$f;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/MainApp/OTAActivity$f;-><init>(Lcom/zjx/jyandroid/MainApp/OTAActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/zjx/jyandroid/R$id;->startOTAUpdateButton:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->f:Landroid/widget/Button;

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->d:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->getConnectionState()Lcom/zjx/jyandroid/Hardware/ConnectionState;

    move-result-object p1

    iget-boolean p1, p1, Lcom/zjx/jyandroid/Hardware/ConnectionState;->connected:Z

    if-nez p1, :cond_0

    const-string p1, "\u8bf7\u5148\u8fde\u63a5\u738b\u5ea7"

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->l(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.bluetooth_le"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "\u672c\u7cfb\u7edf\u4e0d\u652f\u6301\u84dd\u7259BLE"

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->l(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->a:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "\u8bf7\u5148\u5728\u7cfb\u7edf\u8bbe\u7f6e\u4e2d\u5f00\u542f\u84dd\u7259"

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->l(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getHardwareManager()Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->getDeviceVersionMode()Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;->btVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " . "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;->mcuVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    sget v0, Lcom/zjx/jyandroid/R$id;->BtVersionTextView:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/zjx/jyandroid/R$id;->McuVersionTextView:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, p1, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;->btVersion:I

    const-string v3, "\u672a\u77e5"

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget p1, p1, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;->mcuVersion:I

    if-ne p1, v4, :cond_4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const-string p1, "\u65e5\u5fd7\uff1a"

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->i(Ljava/lang/String;)V

    const-string p1, "\u6253\u5f00\u4e3b\u82af\u7247OTA\u84dd\u7259\u4e2d\u3002\u3002\u3002"

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->d:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    sget-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;->MCU:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->setBluetoothOnState(Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;Z)V

    const-string p1, "\u6253\u5f00\u4e3b\u82af\u7247\u84dd\u7259\u6210\u529f"

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->i(Ljava/lang/String;)V

    const-string p1, "\u6253\u5f00\u4ece\u82af\u7247OTA\u84dd\u7259\u4e2d\u3002\u3002\u3002"

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->d:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    sget-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;->BT:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    invoke-virtual {p1, v0, v1}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->setBluetoothOnState(Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;Z)V

    const-string p1, "\u6253\u5f00\u4ece\u82af\u7247\u84dd\u7259\u6210\u529f"

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->f:Landroid/widget/Button;

    new-instance v0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;-><init>(Lcom/zjx/jyandroid/MainApp/OTAActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->d:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    sget-object v1, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;->MCU:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->setBluetoothOnState(Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->d:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    sget-object v1, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;->BT:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    invoke-virtual {v0, v1, v2}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->setBluetoothOnState(Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->k:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->k:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method
