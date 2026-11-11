.class public final Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$h;
.super Landroid/os/FileObserver;


# instance fields
.field public final a:Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;


# direct methods
.method public constructor <init>(Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;)V
    .locals 2

    iput-object p1, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$h;->a:Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;

    const-string v0, "u\u00a3Q\u00d7!\u0012\u0086%\u00b7["

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x300

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_1

    const-string v0, "?\u00b1Q\u00cfz"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "u\u00a3Q\u00d7!\u0012\u0086%\u00b7[\u00b3"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$h;->a:Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;

    invoke-virtual {v1, v0}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->C(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    and-int/lit16 v1, p1, 0x200

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$h;->a:Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;

    invoke-virtual {v1, v0}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->l(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
