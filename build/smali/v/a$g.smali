.class public Lv/a$g;
.super Lv/a$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv/a;->h(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic b:Ljava/util/UUID;

.field public final synthetic c:Ljava/util/UUID;

.field public final synthetic d:I

.field public final synthetic e:Lv/a;


# direct methods
.method public constructor <init>(Lv/a;Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;I)V
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

    iput-object p1, p0, Lv/a$g;->e:Lv/a;

    iput-object p2, p0, Lv/a$g;->a:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lv/a$g;->b:Ljava/util/UUID;

    iput-object p4, p0, Lv/a$g;->c:Ljava/util/UUID;

    iput p5, p0, Lv/a$g;->d:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lv/a$k;-><init>(Lv/a$b;)V

    return-void
.end method


# virtual methods
.method public a(Lw/a;)V
    .locals 4

    iget-object v0, p0, Lv/a$g;->a:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lv/a$g;->b:Ljava/util/UUID;

    iget-object v2, p0, Lv/a$g;->c:Ljava/util/UUID;

    iget v3, p0, Lv/a$g;->d:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lw/a;->h(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;I)V

    return-void
.end method
