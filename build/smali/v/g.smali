.class public final Lv/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv/g$b;,
        Lv/g$a;
    }
.end annotation


# static fields
.field public static final g:Lv/g$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:Ljava/lang/String;

.field public static final i:J

.field public static final j:J = 0x4e20L

.field public static final k:J = 0xbb8L

.field public static final l:I = 0x1

.field public static final m:I = 0x2


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lv/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv/g$b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jieli/jl_bt_ota/model/BleScanMessage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lw/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lv/g;->g:Lv/g$a;

    const-class v0, Lv/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lv/g;->h:Ljava/lang/String;

    sget-wide v0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->RECONNECT_TIMEOUT:J

    sput-wide v0, Lv/g;->i:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lv/d;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lv/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mBtManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lv/g;->b:Lv/d;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lv/g;->c:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lv/g;->d:Ljava/util/Map;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lv/f;

    invoke-direct {v1, p0}, Lv/f;-><init>(Lv/g;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lv/g;->e:Landroid/os/Handler;

    new-instance p1, Lv/g$c;

    invoke-direct {p1, p0}, Lv/g$c;-><init>(Lv/g;)V

    iput-object p1, p0, Lv/g;->f:Lw/a;

    invoke-virtual {p2, p1}, Lv/d;->l0(Lw/a;)V

    return-void
.end method

.method public static synthetic a(Lv/g;Landroid/os/Message;)Z
    .locals 0

    invoke-static {p0, p1}, Lv/g;->o(Lv/g;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lv/g;Ljava/lang/String;)Lv/g$b;
    .locals 0

    invoke-virtual {p0, p1}, Lv/g;->j(Ljava/lang/String;)Lv/g$b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lv/g;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lv/g;->d:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic d(Lv/g;)Lv/d;
    .locals 0

    iget-object p0, p0, Lv/g;->b:Lv/d;

    return-object p0
.end method

.method public static final synthetic e(Lv/g;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lv/g;->e:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lv/g;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic g(Lv/g;Landroid/bluetooth/BluetoothDevice;Lcom/jieli/jl_bt_ota/model/BleScanMessage;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lv/g;->m(Landroid/bluetooth/BluetoothDevice;Lcom/jieli/jl_bt_ota/model/BleScanMessage;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic h(Lv/g;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lv/g;->s(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic i(Lv/g;)V
    .locals 0

    invoke-virtual {p0}, Lv/g;->t()V

    return-void
.end method

.method public static final o(Lv/g;Landroid/os/Message;)Z
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lv/g;->s(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lv/g;->p()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lv/g;->t()V

    iget-object p0, p0, Lv/g;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public final j(Ljava/lang/String;)Lv/g$b;
    .locals 6

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lv/g;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/jl_bt_ota/model/BleScanMessage;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lv/g;->c:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv/g$b;

    invoke-virtual {v3}, Lv/g$b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lv/g$b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/jieli/jl_bt_ota/model/BleScanMessage;->getOldBleAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_2
    return-object v3

    :cond_3
    return-object v1
.end method

.method public final k()Landroid/bluetooth/BluetoothDevice;
    .locals 4

    iget-object v0, p0, Lv/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/jieli/jl_bt_ota/util/BluetoothUtil;->getSystemConnectedBtDeviceList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v2, v1}, Lv/g;->m(Landroid/bluetooth/BluetoothDevice;Lcom/jieli/jl_bt_ota/model/BleScanMessage;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "srcAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lv/g;->j(Ljava/lang/String;)Lv/g$b;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lv/g$b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lv/g$b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public final m(Landroid/bluetooth/BluetoothDevice;Lcom/jieli/jl_bt_ota/model/BleScanMessage;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lv/g;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lv/g;->c:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/g$b;

    invoke-virtual {v0}, Lv/g$b;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/jieli/jl_bt_ota/model/BleScanMessage;->isOTA()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lv/g$b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jieli/jl_bt_ota/model/BleScanMessage;->getOldBleAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lv/g$b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    :cond_3
    :goto_1
    return v0
.end method

.method public final n()Z
    .locals 2

    iget-object v0, p0, Lv/g;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public final p()V
    .locals 6

    iget-object v0, p0, Lv/g;->b:Lv/d;

    invoke-virtual {v0}, Lv/d;->X()Z

    move-result v0

    const-wide/16 v1, 0xbb8

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv/g;->e:Landroid/os/Handler;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lv/g;->k()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "connectedDevice.address"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lv/g;->j(Ljava/lang/String;)Lv/g$b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lv/g$b;->d(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lv/g;->b:Lv/d;

    invoke-virtual {v1, v0}, Lv/d;->F(Landroid/bluetooth/BluetoothDevice;)Z

    return-void

    :cond_2
    iget-object v0, p0, Lv/g;->b:Lv/d;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v0, v4, v5}, Lv/d;->t0(J)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lv/g;->h:Ljava/lang/String;

    const-string v4, "processReconnectTask : start Le scan failed."

    invoke-static {v0, v4}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lv/g;->e:Landroid/os/Handler;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method

.method public final q(Lv/g$b;)Z
    .locals 7
    .param p1    # Lv/g$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lv/g;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Lv/g;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lv/g;->e:Landroid/os/Handler;

    iget-object v1, p0, Lv/g;->c:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sget-wide v3, Lv/g;->i:J

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0}, Lv/g;->n()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lv/g;->e:Landroid/os/Handler;

    invoke-virtual {p1}, Lv/g$b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const/16 v1, 0x2710

    int-to-long v5, v1

    add-long/2addr v3, v5

    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lv/g;->e:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return v2

    :cond_2
    return v0

    :cond_3
    return v2
.end method

.method public final r()V
    .locals 2

    iget-object v0, p0, Lv/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lv/g;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lv/g;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lv/g;->b:Lv/d;

    iget-object v1, p0, Lv/g;->f:Lw/a;

    invoke-virtual {v0, v1}, Lv/d;->z0(Lw/a;)V

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lv/g;->j(Ljava/lang/String;)Lv/g$b;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lv/g;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lv/g;->e:Landroid/os/Handler;

    invoke-virtual {p1}, Lv/g$b;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lv/g;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lv/g;->e:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_1
    iget-object p1, p0, Lv/g;->e:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final t()V
    .locals 1

    iget-object v0, p0, Lv/g;->b:Lv/d;

    invoke-virtual {v0}, Lv/d;->w0()V

    return-void
.end method
