.class public Lcom/zjx/jyandroid/MainApp/MainPageView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/MainApp/MainPageView;->onAttachedToWindow()V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$b;->a:Lcom/zjx/jyandroid/MainApp/MainPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$b;->a:Lcom/zjx/jyandroid/MainApp/MainPageView;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-static {v0}, Lcom/gamwing/security/GamwingSoftwareModeEnforcer;->syncConnectionForUi(Lcom/zjx/jyandroid/ForegroundService/MainService;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getConnectedDeviceType()Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$b;->a:Lcom/zjx/jyandroid/MainApp/MainPageView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/zjx/jyandroid/MainApp/MainPageView;->a(Lcom/zjx/jyandroid/MainApp/MainPageView;ZLcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$b;->a:Lcom/zjx/jyandroid/MainApp/MainPageView;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/zjx/jyandroid/MainApp/MainPageView;->a(Lcom/zjx/jyandroid/MainApp/MainPageView;ZLcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)V

    :goto_0
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$b;->a:Lcom/zjx/jyandroid/MainApp/MainPageView;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->registerHardwareConnectionStateChangedListener(Lcom/zjx/jyandroid/Hardware/IHardwareConnectionStateChangedListener;)V

    invoke-static {v0}, Lcom/gamwing/security/GamwingSoftwareModeEnforcer;->syncConnectionForUi(Lcom/zjx/jyandroid/ForegroundService/MainService;)V

    :cond_1
    return-void
.end method
