.class public Lcom/jieli/jl_bt_ota/tool/UpgradeCbHelper;
.super Lcom/jieli/jl_bt_ota/tool/BaseCallbackHelper;
.source "SourceFile"

# interfaces
.implements Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jieli/jl_bt_ota/tool/BaseCallbackHelper<",
        "Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;",
        ">;",
        "Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jieli/jl_bt_ota/tool/BaseCallbackHelper;-><init>()V

    return-void
.end method

.method private static synthetic a(IFLcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;)V
    .locals 0

    .line 2
    invoke-interface {p2, p0, p1}, Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;->onProgress(IF)V

    return-void
.end method

.method private static synthetic a(Lcom/jieli/jl_bt_ota/model/base/BaseError;Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;)V
    .locals 0

    .line 3
    invoke-interface {p1, p0}, Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;->onError(Lcom/jieli/jl_bt_ota/model/base/BaseError;)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;ZLcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;->onNeedReconnect(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;ZLcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jieli/jl_bt_ota/tool/UpgradeCbHelper;->a(Ljava/lang/String;ZLcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;)V

    return-void
.end method

.method public static synthetic c(IFLcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jieli/jl_bt_ota/tool/UpgradeCbHelper;->a(IFLcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;)V

    return-void
.end method

.method public static synthetic d(Lcom/jieli/jl_bt_ota/model/base/BaseError;Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jieli/jl_bt_ota/tool/UpgradeCbHelper;->a(Lcom/jieli/jl_bt_ota/model/base/BaseError;Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;)V

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;
    .locals 2

    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/BaseCallbackHelper;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/BaseCallbackHelper;->callbacks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;

    return-object v0
.end method

.method public onCancelOTA()V
    .locals 1

    new-instance v0, Lcom/jieli/jl_bt_ota/tool/u;

    invoke-direct {v0}, Lcom/jieli/jl_bt_ota/tool/u;-><init>()V

    invoke-virtual {p0, v0}, Lcom/jieli/jl_bt_ota/tool/BaseCallbackHelper;->callbackEvent(Lcom/jieli/jl_bt_ota/tool/ICallbackHandler;)V

    return-void
.end method

.method public onError(Lcom/jieli/jl_bt_ota/model/base/BaseError;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/jieli/jl_bt_ota/tool/x;

    invoke-direct {v0, p1}, Lcom/jieli/jl_bt_ota/tool/x;-><init>(Lcom/jieli/jl_bt_ota/model/base/BaseError;)V

    invoke-virtual {p0, v0}, Lcom/jieli/jl_bt_ota/tool/BaseCallbackHelper;->callbackEvent(Lcom/jieli/jl_bt_ota/tool/ICallbackHandler;)V

    return-void
.end method

.method public onNeedReconnect(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/jieli/jl_bt_ota/tool/w;

    invoke-direct {v0, p1, p2}, Lcom/jieli/jl_bt_ota/tool/w;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/jieli/jl_bt_ota/tool/BaseCallbackHelper;->callbackEvent(Lcom/jieli/jl_bt_ota/tool/ICallbackHandler;)V

    return-void
.end method

.method public onProgress(IF)V
    .locals 1

    new-instance v0, Lcom/jieli/jl_bt_ota/tool/y;

    invoke-direct {v0, p1, p2}, Lcom/jieli/jl_bt_ota/tool/y;-><init>(IF)V

    invoke-virtual {p0, v0}, Lcom/jieli/jl_bt_ota/tool/BaseCallbackHelper;->callbackEvent(Lcom/jieli/jl_bt_ota/tool/ICallbackHandler;)V

    return-void
.end method

.method public onStartOTA()V
    .locals 1

    new-instance v0, Lcom/jieli/jl_bt_ota/tool/v;

    invoke-direct {v0}, Lcom/jieli/jl_bt_ota/tool/v;-><init>()V

    invoke-virtual {p0, v0}, Lcom/jieli/jl_bt_ota/tool/BaseCallbackHelper;->callbackEvent(Lcom/jieli/jl_bt_ota/tool/ICallbackHandler;)V

    return-void
.end method

.method public onStopOTA()V
    .locals 1

    new-instance v0, Lcom/jieli/jl_bt_ota/tool/z;

    invoke-direct {v0}, Lcom/jieli/jl_bt_ota/tool/z;-><init>()V

    invoke-virtual {p0, v0}, Lcom/jieli/jl_bt_ota/tool/BaseCallbackHelper;->callbackEvent(Lcom/jieli/jl_bt_ota/tool/ICallbackHandler;)V

    return-void
.end method

.method public setUpgradeCallback(Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/BaseCallbackHelper;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/jieli/jl_bt_ota/tool/BaseCallbackHelper;->addCallback(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
