.class public Lv/a$a;
.super Lv/a$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv/a;->i(Landroid/bluetooth/BluetoothDevice;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Lv/a;


# direct methods
.method public constructor <init>(Lv/a;Landroid/bluetooth/BluetoothDevice;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lv/a$a;->f:Lv/a;

    iput-object p2, p0, Lv/a$a;->a:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Lv/a$a;->b:I

    iput p4, p0, Lv/a$a;->c:I

    iput p5, p0, Lv/a$a;->d:I

    iput p6, p0, Lv/a$a;->e:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lv/a$k;-><init>(Lv/a$b;)V

    return-void
.end method


# virtual methods
.method public a(Lw/a;)V
    .locals 6

    iget-object v1, p0, Lv/a$a;->a:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Lv/a$a;->b:I

    iget v3, p0, Lv/a$a;->c:I

    iget v4, p0, Lv/a$a;->d:I

    iget v5, p0, Lv/a$a;->e:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lw/a;->i(Landroid/bluetooth/BluetoothDevice;IIII)V

    return-void
.end method
