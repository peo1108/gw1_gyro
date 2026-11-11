.class Lcom/zjx/gw2lic/devicehid/DirectHid$7;
.super Ljava/lang/Object;
.source "DirectHid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/gw2lic/devicehid/DirectHid;->deviceReadLoop(Landroid/hardware/usb/UsbDeviceConnection;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$m:[I


# direct methods
.method constructor <init>([I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 589
    iput-object p1, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$7;->val$m:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 589
    iget-object v0, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$7;->val$m:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Lcom/zjx/gw2lic/devicehid/DirectHid;->access$1100(IIII)V

    return-void
.end method
