.class public Lv/a$h;
.super Lv/a$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv/a;->onBleDataBlockChanged(Landroid/bluetooth/BluetoothDevice;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lv/a;


# direct methods
.method public constructor <init>(Lv/a;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lv/a$h;->d:Lv/a;

    iput-object p2, p0, Lv/a$h;->a:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Lv/a$h;->b:I

    iput p4, p0, Lv/a$h;->c:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lv/a$k;-><init>(Lv/a$b;)V

    return-void
.end method


# virtual methods
.method public a(Lw/a;)V
    .locals 3

    iget-object v0, p0, Lv/a$h;->a:Landroid/bluetooth/BluetoothDevice;

    iget v1, p0, Lv/a$h;->b:I

    iget v2, p0, Lv/a$h;->c:I

    invoke-virtual {p1, v0, v1, v2}, Lw/a;->onBleDataBlockChanged(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method
