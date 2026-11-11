.class public Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

.field public final synthetic b:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

.field public final synthetic c:Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;

.field public final synthetic d:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

.field public final synthetic e:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;->e:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;->a:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    iput-object p3, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;->b:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    iput-object p4, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;->c:Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;

    iput-object p5, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;->d:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositionChanged(I)V
    .locals 4

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;->b:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    sget-object v1, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->MO_XIE_MX_200_SX:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;->c:Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;

    iget p1, p1, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;->mcuVersion:I

    const/16 v1, 0xa

    if-ge p1, v1, :cond_1

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    const-string v1, "\u8bf7\u66f4\u65b0\u56fa\u4ef6\u52301104\u6216\u4ee5\u4e0a\uff0c\u5426\u5219\u65e0\u6cd5\u751f\u6548"

    sget-object v2, Lcom/zjx/jyandroid/base/util/ToastView$a;->d:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v1, v2}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;->e:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->f:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setOnPositionChangedListener(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;->e:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->f:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setPosition(IZ)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;->e:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->f:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    invoke-virtual {p1, p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setOnPositionChangedListener(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;)V

    return-void

    :cond_1
    new-instance p1, Lcom/zjx/jyandroid/base/Components/Alert;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;->e:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;

    sget v1, Lcom/zjx/jyandroid/R$string;->prompt:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/R$string;->basic_settings_text15:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/zjx/jyandroid/base/Components/Alert;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v1, Lcom/zjx/jyandroid/R$string;->cancel:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d$a;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    new-instance v0, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v1, Lcom/zjx/jyandroid/R$string;->ok:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d$b;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d$b;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/Components/Alert;->show()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;->a:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    sget-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->RATE_500_HZ:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->setCommunicationRate(Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;)V

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->switch_success:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->b:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;->a:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    sget-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->RATE_250_HZ:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->setCommunicationRate(Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;)V

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->switch_success:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->b:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;->a:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    sget-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->RATE_125_HZ:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->setCommunicationRate(Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;)V

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->switch_success:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->b:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    :goto_0
    return-void
.end method
