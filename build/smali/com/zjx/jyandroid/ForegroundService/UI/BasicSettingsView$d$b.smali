.class public Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;->onPositionChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d$b;->a:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionTriggered(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d$b;->a:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;->a:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    sget-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->RATE_1000_HZ:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->setCommunicationRate(Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;)V

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->switch_success:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->b:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void
.end method
