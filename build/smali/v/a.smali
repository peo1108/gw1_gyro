.class public Lv/a;
.super Lw/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv/a$k;,
        Lv/a$l;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lw/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lw/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lv/a;->a:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lv/a;->b:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic j(Lv/a;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lv/a;->a:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "I",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lv/a$f;

    invoke-direct {v0, p0, p1, p2, p3}, Lv/a$f;-><init>(Lv/a;Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V

    invoke-virtual {p0, v0}, Lv/a;->k(Lv/a$k;)V

    return-void
.end method

.method public b(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    new-instance v0, Lv/a$e;

    invoke-direct {v0, p0, p1, p2}, Lv/a$e;-><init>(Lv/a;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {p0, v0}, Lv/a;->k(Lv/a$k;)V

    return-void
.end method

.method public c(Landroid/bluetooth/BluetoothDevice;Lx/b;)V
    .locals 1

    new-instance v0, Lv/a$d;

    invoke-direct {v0, p0, p1, p2}, Lv/a$d;-><init>(Lv/a;Landroid/bluetooth/BluetoothDevice;Lx/b;)V

    invoke-virtual {p0, v0}, Lv/a;->k(Lv/a$k;)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    new-instance v0, Lv/a$c;

    invoke-direct {v0, p0, p1}, Lv/a$c;-><init>(Lv/a;Z)V

    invoke-virtual {p0, v0}, Lv/a;->k(Lv/a$k;)V

    return-void
.end method

.method public e(Z)V
    .locals 1

    new-instance v0, Lv/a$b;

    invoke-direct {v0, p0, p1}, Lv/a$b;-><init>(Lv/a;Z)V

    invoke-virtual {p0, v0}, Lv/a;->k(Lv/a$k;)V

    return-void
.end method

.method public f(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;[BI)V
    .locals 8

    new-instance v7, Lv/a$j;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lv/a$j;-><init>(Lv/a;Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;[BI)V

    invoke-virtual {p0, v7}, Lv/a;->k(Lv/a$k;)V

    return-void
.end method

.method public g(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;[B)V
    .locals 7

    new-instance v6, Lv/a$i;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lv/a$i;-><init>(Lv/a;Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;[B)V

    invoke-virtual {p0, v6}, Lv/a;->k(Lv/a$k;)V

    return-void
.end method

.method public h(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;I)V
    .locals 7

    new-instance v6, Lv/a$g;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lv/a$g;-><init>(Lv/a;Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;I)V

    invoke-virtual {p0, v6}, Lv/a;->k(Lv/a$k;)V

    return-void
.end method

.method public i(Landroid/bluetooth/BluetoothDevice;IIII)V
    .locals 8

    new-instance v7, Lv/a$a;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lv/a$a;-><init>(Lv/a;Landroid/bluetooth/BluetoothDevice;IIII)V

    invoke-virtual {p0, v7}, Lv/a;->k(Lv/a$k;)V

    return-void
.end method

.method public final k(Lv/a$k;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lv/a$l;

    invoke-direct {v0, p0, p1}, Lv/a$l;-><init>(Lv/a;Lv/a$k;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lv/a$l;->run()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lv/a;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public l(Lw/a;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lv/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lv/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lv/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lv/a;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public n(Lw/a;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lv/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lv/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onBleDataBlockChanged(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 1

    new-instance v0, Lv/a$h;

    invoke-direct {v0, p0, p1, p2, p3}, Lv/a$h;-><init>(Lv/a;Landroid/bluetooth/BluetoothDevice;II)V

    invoke-virtual {p0, v0}, Lv/a;->k(Lv/a$k;)V

    return-void
.end method
