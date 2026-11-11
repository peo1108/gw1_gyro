.class public Lv/a$j;
.super Lv/a$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv/a;->f(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;[BI)V
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

.field public final synthetic e:I

.field public final synthetic f:Lv/a;


# direct methods
.method public constructor <init>(Lv/a;Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;[BI)V
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

    iput-object p1, p0, Lv/a$j;->f:Lv/a;

    iput-object p2, p0, Lv/a$j;->a:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lv/a$j;->b:Ljava/util/UUID;

    iput-object p4, p0, Lv/a$j;->c:Ljava/util/UUID;

    iput-object p5, p0, Lv/a$j;->d:[B

    iput p6, p0, Lv/a$j;->e:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lv/a$k;-><init>(Lv/a$b;)V

    return-void
.end method


# virtual methods
.method public a(Lw/a;)V
    .locals 6

    iget-object v1, p0, Lv/a$j;->a:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lv/a$j;->b:Ljava/util/UUID;

    iget-object v3, p0, Lv/a$j;->c:Ljava/util/UUID;

    iget-object v4, p0, Lv/a$j;->d:[B

    iget v5, p0, Lv/a$j;->e:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lw/a;->f(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;[BI)V

    return-void
.end method
