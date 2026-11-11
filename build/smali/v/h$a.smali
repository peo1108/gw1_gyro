.class public Lv/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/bluetooth/BluetoothGatt;

.field public b:Ljava/util/UUID;

.field public c:Ljava/util/UUID;

.field public d:[B

.field public e:I

.field public f:Lw/e;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;Ljava/util/UUID;[BLw/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lv/h$a;->e:I

    iput-object p1, p0, Lv/h$a;->a:Landroid/bluetooth/BluetoothGatt;

    iput-object p2, p0, Lv/h$a;->b:Ljava/util/UUID;

    iput-object p3, p0, Lv/h$a;->c:Ljava/util/UUID;

    iput-object p4, p0, Lv/h$a;->d:[B

    iput-object p5, p0, Lv/h$a;->f:Lw/e;

    return-void
.end method

.method public static synthetic a(Lv/h$a;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    iget-object p0, p0, Lv/h$a;->a:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method


# virtual methods
.method public b()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    iget-object v0, p0, Lv/h$a;->a:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public c()Lw/e;
    .locals 1

    iget-object v0, p0, Lv/h$a;->f:Lw/e;

    return-object v0
.end method

.method public d()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lv/h$a;->c:Ljava/util/UUID;

    return-object v0
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, Lv/h$a;->d:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lv/h$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lv/h$a;

    iget-object v0, p0, Lv/h$a;->a:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lv/h$a;->b:Ljava/util/UUID;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lv/h$a;->c:Ljava/util/UUID;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lv/h$a;->b()Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv/h$a;->b:Ljava/util/UUID;

    invoke-virtual {p1}, Lv/h$a;->f()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv/h$a;->c:Ljava/util/UUID;

    invoke-virtual {p1}, Lv/h$a;->d()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public f()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lv/h$a;->b:Ljava/util/UUID;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lv/h$a;->e:I

    return v0
.end method

.method public h(Lw/e;)V
    .locals 0

    iput-object p1, p0, Lv/h$a;->f:Lw/e;

    return-void
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lv/h$a;->a:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lv/h$a;->b:Ljava/util/UUID;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lv/h$a;->c:Ljava/util/UUID;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lv/h$a;->b:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lv/h$a;->c:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i(Ljava/util/UUID;)V
    .locals 0

    iput-object p1, p0, Lv/h$a;->c:Ljava/util/UUID;

    return-void
.end method

.method public j([B)V
    .locals 0

    iput-object p1, p0, Lv/h$a;->d:[B

    return-void
.end method

.method public k(Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    iput-object p1, p0, Lv/h$a;->a:Landroid/bluetooth/BluetoothGatt;

    return-void
.end method

.method public l(Ljava/util/UUID;)V
    .locals 0

    iput-object p1, p0, Lv/h$a;->b:Ljava/util/UUID;

    return-void
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, Lv/h$a;->e:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BleSendTask{mGatt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lv/h$a;->a:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceUUID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lv/h$a;->b:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", characteristicUUID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lv/h$a;->c:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lv/h$a;->d:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lv/h$a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lv/h$a;->f:Lw/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
