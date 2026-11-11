.class public Lv/a$d;
.super Lv/a$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv/a;->c(Landroid/bluetooth/BluetoothDevice;Lx/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic b:Lx/b;

.field public final synthetic c:Lv/a;


# direct methods
.method public constructor <init>(Lv/a;Landroid/bluetooth/BluetoothDevice;Lx/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lv/a$d;->c:Lv/a;

    iput-object p2, p0, Lv/a$d;->a:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lv/a$d;->b:Lx/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lv/a$k;-><init>(Lv/a$b;)V

    return-void
.end method


# virtual methods
.method public a(Lw/a;)V
    .locals 2

    iget-object v0, p0, Lv/a$d;->a:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lv/a$d;->b:Lx/b;

    invoke-virtual {p1, v0, v1}, Lw/a;->c(Landroid/bluetooth/BluetoothDevice;Lx/b;)V

    return-void
.end method
