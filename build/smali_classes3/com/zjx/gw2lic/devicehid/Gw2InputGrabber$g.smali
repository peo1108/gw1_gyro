.class public final Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Z

.field public f:Lv5/b;

.field public g:Lv5/c;

.field public final i:Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;


# direct methods
.method public constructor <init>(Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->i:Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 0

    iget p0, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->d:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b(I)Z
    .locals 0

    iget p0, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->c:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c(IZ)V
    .locals 1

    iget v0, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->d:I

    if-eqz p2, :cond_0

    or-int/2addr v0, p1

    iput v0, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->d:I

    return-void

    :cond_0
    not-int p1, p1

    and-int/2addr v0, p1

    iput v0, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->d:I

    return-void
.end method

.method public d(IZ)V
    .locals 1

    iget v0, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->c:I

    if-eqz p2, :cond_0

    or-int/2addr v0, p1

    iput v0, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->c:I

    return-void

    :cond_0
    not-int p1, p1

    and-int/2addr v0, p1

    iput v0, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->c:I

    return-void
.end method
