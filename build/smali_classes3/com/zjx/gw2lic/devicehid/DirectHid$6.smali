.class Lcom/zjx/gw2lic/devicehid/DirectHid$6;
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
.field final synthetic val$keys:[B

.field final synthetic val$mod:I


# direct methods
.method constructor <init>(I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 585
    iput p1, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$6;->val$mod:I

    iput-object p2, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$6;->val$keys:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 585
    iget v0, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$6;->val$mod:I

    iget-object v1, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$6;->val$keys:[B

    invoke-static {v0, v1}, Lcom/zjx/gw2lic/devicehid/DirectHid;->access$1000(I[B)V

    return-void
.end method
