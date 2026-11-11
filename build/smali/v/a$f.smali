.class public Lv/a$f;
.super Lv/a$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv/a;->a(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lv/a;


# direct methods
.method public constructor <init>(Lv/a;Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V
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

    iput-object p1, p0, Lv/a$f;->d:Lv/a;

    iput-object p2, p0, Lv/a$f;->a:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Lv/a$f;->b:I

    iput-object p4, p0, Lv/a$f;->c:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lv/a$k;-><init>(Lv/a$b;)V

    return-void
.end method


# virtual methods
.method public a(Lw/a;)V
    .locals 3

    iget-object v0, p0, Lv/a$f;->a:Landroid/bluetooth/BluetoothDevice;

    iget v1, p0, Lv/a$f;->b:I

    iget-object v2, p0, Lv/a$f;->c:Ljava/util/List;

    invoke-virtual {p1, v0, v1, v2}, Lw/a;->a(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V

    return-void
.end method
