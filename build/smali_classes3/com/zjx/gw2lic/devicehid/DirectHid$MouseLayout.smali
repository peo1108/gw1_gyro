.class final Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;
.super Ljava/lang/Object;
.source "DirectHid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/gw2lic/devicehid/DirectHid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MouseLayout"
.end annotation


# instance fields
.field btnBit:I

.field btnCount:I

.field reportId:I

.field wBit:I

.field wSize:I

.field xBit:I

.field xSize:I

.field yBit:I

.field ySize:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 635
    iput v0, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->reportId:I

    const/4 v1, -0x1

    .line 636
    iput v1, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->btnBit:I

    iput v0, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->btnCount:I

    .line 637
    iput v1, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->xBit:I

    iput v0, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->xSize:I

    .line 638
    iput v1, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->yBit:I

    iput v0, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->ySize:I

    .line 639
    iput v1, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->wBit:I

    iput v0, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->wSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/zjx/gw2lic/devicehid/DirectHid$1;)V
    .locals 0

    .line 634
    invoke-direct {p0}, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "3\u00a3\t"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->reportId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "z\u00a5@\u00cfN"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->btnBit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->btnCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "z\u009ft"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->xBit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "u"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->xSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "z\u009et"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->yBit:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->ySize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "z\u0090t"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->wBit:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->wSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
