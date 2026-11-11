.class Lcom/zjx/gw2lic/devicehid/DirectHid$5;
.super Ljava/lang/Object;
.source "DirectHid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/gw2lic/devicehid/DirectHid;->startDeviceReader(Landroid/hardware/usb/UsbDeviceConnection;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$conn:Landroid/hardware/usb/UsbDeviceConnection;

.field final synthetic val$devName:Ljava/lang/String;

.field final synthetic val$ins:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/hardware/usb/UsbDeviceConnection;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 553
    iput-object p1, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$5;->val$conn:Landroid/hardware/usb/UsbDeviceConnection;

    iput-object p2, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$5;->val$ins:Ljava/util/List;

    iput-object p3, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$5;->val$devName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 554
    iget-object v0, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$5;->val$conn:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$5;->val$ins:Ljava/util/List;

    iget-object v2, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$5;->val$devName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/zjx/gw2lic/devicehid/DirectHid;->access$900(Landroid/hardware/usb/UsbDeviceConnection;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
