.class final Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;
.super Ljava/lang/Object;
.source "DirectHid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/gw2lic/devicehid/DirectHid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InEp"
.end annotation


# instance fields
.field buf:Ljava/nio/ByteBuffer;

.field ep:Landroid/hardware/usb/UsbEndpoint;

.field kind:I

.field ml:Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;

.field req:Landroid/hardware/usb/UsbRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zjx/gw2lic/devicehid/DirectHid$1;)V
    .locals 0

    .line 538
    invoke-direct {p0}, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;-><init>()V

    return-void
.end method
