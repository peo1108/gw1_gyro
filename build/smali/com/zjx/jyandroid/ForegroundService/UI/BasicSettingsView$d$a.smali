.class public Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d$a;
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionTriggered(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;

    iget-object v0, p1, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;->e:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;->d:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    invoke-static {v0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->a(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;)V

    return-void
.end method
