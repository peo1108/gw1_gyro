.class public Lcom/zjx/jyandroid/MainApp/OTAActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/MainApp/OTAActivity;->o(Lv/e;Ljava/lang/String;Ljava/lang/String;Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv/e;

.field public final synthetic b:Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;

.field public final synthetic c:Lcom/zjx/jyandroid/MainApp/OTAActivity;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/OTAActivity;Lv/e;Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$d;->c:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    iput-object p2, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$d;->a:Lv/e;

    iput-object p3, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$d;->b:Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$d;->a:Lv/e;

    invoke-virtual {v0}, Lcom/jieli/jl_bt_ota/impl/BluetoothDiscovery;->stopBLEScan()I

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$d;->b:Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;

    new-instance v1, Lcom/jieli/jl_bt_ota/model/base/BaseError;

    const/4 v2, 0x1

    const-string v3, "\u65e0\u6cd5\u641c\u5bfb\u5230OTA\u84dd\u7259"

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lcom/jieli/jl_bt_ota/model/base/BaseError;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;->onError(Lcom/jieli/jl_bt_ota/model/base/BaseError;)V

    return-void
.end method
