.class public Lv/a$i;
.super Lv/a$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv/a;->g(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic b:Ljava/util/UUID;

.field public final synthetic c:Ljava/util/UUID;

.field public final synthetic d:[B

.field public final synthetic e:Lv/a;


# direct methods
.method public constructor <init>(Lv/a;Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    iput-object p1, p0, Lv/a$i;->e:Lv/a;

    iput-object p2, p0, Lv/a$i;->a:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lv/a$i;->b:Ljava/util/UUID;

    iput-object p4, p0, Lv/a$i;->c:Ljava/util/UUID;

    iput-object p5, p0, Lv/a$i;->d:[B

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lv/a$k;-><init>(Lv/a$b;)V

    return-void
.end method


# virtual methods
.method public a(Lw/a;)V
    .locals 4

    iget-object v0, p0, Lv/a$i;->a:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lv/a$i;->b:Ljava/util/UUID;

    iget-object v2, p0, Lv/a$i;->c:Ljava/util/UUID;

    iget-object v3, p0, Lv/a$i;->d:[B

    invoke-virtual {p1, v0, v1, v2, v3}, Lw/a;->g(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;[B)V

    return-void
.end method
