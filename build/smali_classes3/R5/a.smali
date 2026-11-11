.class public LR5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static sNoDevice:Z

.field public static sNoDeviceInited:Z

.field public static volatile w:LR5/a;


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Landroid/os/HandlerThread;

.field public c:Ljava/lang/String;

.field public d:I

.field public dragHorizontalRandomScalePct:I

.field public dragRandomScalePct:I

.field public e:I

.field public endpointRandomScalePct:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:I

.field public k:I

.field public l:I

.field public loaded:Z

.field public m:I

.field public n:Z

.field public o:I

.field public p:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public q:LA6/i;

.field public r:F

.field public randomScalePct:I

.field public s:I

.field public startRandomScalePct:I

.field public t:Z

.field public u:I

.field public v:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LR5/a;->a:Landroid/os/Handler;

    iput-object v0, p0, LR5/a;->b:Landroid/os/HandlerThread;

    iput-object v0, p0, LR5/a;->c:Ljava/lang/String;

    const/16 v0, 0x14

    iput v0, p0, LR5/a;->v:I

    const/4 v0, 0x0

    iput v0, p0, LR5/a;->randomScalePct:I

    const/4 v0, 0x0

    iput v0, p0, LR5/a;->endpointRandomScalePct:I

    iput v0, p0, LR5/a;->dragRandomScalePct:I

    iput v0, p0, LR5/a;->dragHorizontalRandomScalePct:I

    iput v0, p0, LR5/a;->startRandomScalePct:I

    return-void
.end method

.method public static A()Z
    .locals 1

    invoke-static {}, LR5/a;->w()LR5/a;

    move-result-object v0

    invoke-virtual {v0}, LR5/a;->a()Z

    move-result v0

    return v0
.end method

.method public static gw2hidPresent()Z
    .locals 8

    :try_start_0
    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v7, 0x1

    return v7

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    return v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v7, 0x0

    return v7
.end method

.method public static gw2logApp(Ljava/lang/String;)V
    .locals 1

    return-void
.end method

.method public static isNoDevice()Z
    .locals 1

    sget-boolean v0, LR5/a;->sNoDeviceInited:Z

    if-nez v0, :cond_0

    invoke-static {}, LR5/a;->refreshNoDevice()V

    :cond_0
    sget-boolean v0, LR5/a;->sNoDevice:Z

    return v0
.end method

.method public static refreshNoDevice()V
    .locals 1

    invoke-static {}, Lcom/zjx/gw2lic/Gw2NoDevice;->isOn()Z

    move-result v0

    sput-boolean v0, LR5/a;->sNoDevice:Z

    const/4 v0, 0x1

    sput-boolean v0, LR5/a;->sNoDeviceInited:Z

    return-void
.end method

.method public static refreshNoRandom()V
    .locals 0

    return-void
.end method

.method public static w()LR5/a;
    .locals 2

    sget-object v0, LR5/a;->w:LR5/a;

    if-nez v0, :cond_1

    const-class v0, LR5/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, LR5/a;->w:LR5/a;

    if-nez v1, :cond_0

    new-instance v1, LR5/a;

    invoke-direct {v1}, LR5/a;-><init>()V

    sput-object v1, LR5/a;->w:LR5/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, LR5/a;->w:LR5/a;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, LR5/a;->t:Z

    return v0
.end method

.method public b()LA6/i;
    .locals 1

    iget-object v0, p0, LR5/a;->q:LA6/i;

    return-object v0
.end method

.method public c()Landroid/util/Range;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, LR5/a;->ensureLoaded()V

    iget-object v0, p0, LR5/a;->p:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, LR5/a;->endpointRandomScalePct:I

    if-lez v3, :cond_1

    const/16 v4, 0x64

    if-lt v3, v4, :cond_0

    goto :goto_0

    :cond_0
    mul-int v5, v1, v3

    add-int/lit8 v5, v5, 0x63

    div-int/2addr v5, v4

    move v1, v5

    mul-int v5, v2, v3

    add-int/lit8 v5, v5, 0x63

    div-int/2addr v5, v4

    move v2, v5

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    new-instance v0, Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, LR5/a;->r:F

    return v0
.end method

.method public e()I
    .locals 3

    invoke-virtual {p0}, LR5/a;->ensureLoaded()V

    iget v0, p0, LR5/a;->l:I

    if-lez v0, :cond_1

    iget v1, p0, LR5/a;->randomScalePct:I

    if-lez v1, :cond_1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x63

    div-int/2addr v0, v2

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public ensureLoaded()V
    .locals 7

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v1, "gamwing_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "joystick_random_pct"

    iget v2, p0, LR5/a;->randomScalePct:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, LR5/a;->setRandomScalePct(I)V

    const-string v1, "joystick_start_random_pct"

    iget v2, p0, LR5/a;->startRandomScalePct:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    const/16 v2, 0x64

    if-gt v1, v2, :cond_1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x64

    :goto_0
    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, LR5/a;->startRandomScalePct:I

    const-string v1, "joystick_endpoint_random_pct"

    iget v2, p0, LR5/a;->endpointRandomScalePct:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "joystick_drag_random_pct"

    iget v3, p0, LR5/a;->dragRandomScalePct:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_2

    const/16 v3, 0x64

    if-gt v2, v3, :cond_3

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/16 v2, 0x64

    :goto_1
    iput v2, p0, LR5/a;->dragRandomScalePct:I

    const-string v2, "joystick_drag_horizontal_random_pct"

    iget v3, p0, LR5/a;->dragHorizontalRandomScalePct:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_4

    const/16 v3, 0x64

    if-gt v2, v3, :cond_5

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    const/16 v2, 0x64

    :goto_2
    iput v2, p0, LR5/a;->dragHorizontalRandomScalePct:I

    goto :goto_3

    :goto_3
    if-ltz v1, :cond_6

    const/16 v2, 0x64

    if-gt v1, v2, :cond_7

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    goto :goto_4

    :cond_7
    const/16 v1, 0x64

    :goto_4
    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, LR5/a;->endpointRandomScalePct:I

    goto/16 :goto_d

    :cond_8
    :try_start_0
    const-string v0, "/data/data/com.gg2.dcruz/shared_prefs/gamwing_prefs.xml"

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "joystick_random_pct"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_9

    goto :goto_5

    :cond_9
    const-string v2, "value=\""

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v2, v2, 0x7

    const-string v3, "\""

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-lt v3, v2, :cond_b

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, LR5/a;->setRandomScalePct(I)V

    :cond_b
    :goto_5
    const-string v1, "joystick_start_random_pct"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_c

    goto :goto_7

    :cond_c
    const-string v2, "value=\""

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_d

    goto :goto_7

    :cond_d
    add-int/lit8 v2, v2, 0x7

    const-string v3, "\""

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-lt v3, v2, :cond_10

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_e

    const/16 v1, 0x64

    if-gt v4, v1, :cond_f

    goto :goto_6

    :cond_e
    const/4 v4, 0x0

    goto :goto_6

    :cond_f
    const/16 v4, 0x64

    :goto_6
    mul-int/lit8 v4, v4, 0x2

    iput v4, p0, LR5/a;->startRandomScalePct:I

    :cond_10
    :goto_7
    const-string v1, "joystick_endpoint_random_pct"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_11

    goto :goto_9

    :cond_11
    const-string v2, "value=\""

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_12

    goto :goto_9

    :cond_12
    add-int/lit8 v2, v2, 0x7

    const-string v3, "\""

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-lt v3, v2, :cond_15

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v1, :cond_13

    const/16 v2, 0x64

    if-gt v1, v2, :cond_14

    goto :goto_8

    :cond_13
    const/4 v1, 0x0

    goto :goto_8

    :cond_14
    const/16 v1, 0x64

    :goto_8
    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, LR5/a;->endpointRandomScalePct:I

    goto :goto_9

    :cond_15
    :goto_9
    const-string v1, "joystick_drag_random_pct"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_16

    goto :goto_b

    :cond_16
    const-string v2, "value=\""

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_17

    goto :goto_b

    :cond_17
    add-int/lit8 v2, v2, 0x7

    const-string v3, "\""

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-lt v3, v2, :cond_1a

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_18

    const/16 v2, 0x64

    if-gt v1, v2, :cond_19

    goto :goto_a

    :cond_18
    const/4 v1, 0x0

    goto :goto_a

    :cond_19
    const/16 v1, 0x64

    :goto_a
    iput v1, p0, LR5/a;->dragRandomScalePct:I

    :cond_1a
    :goto_b
    const-string v1, "joystick_drag_horizontal_random_pct"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1b

    goto :goto_d

    :cond_1b
    const-string v2, "value=\""

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_1c

    goto :goto_d

    :cond_1c
    add-int/lit8 v2, v2, 0x7

    const-string v3, "\""

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-lt v3, v2, :cond_1f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1d

    const/16 v2, 0x64

    if-gt v1, v2, :cond_1e

    goto :goto_c

    :cond_1d
    const/4 v1, 0x0

    goto :goto_c

    :cond_1e
    const/16 v1, 0x64

    :goto_c
    iput v1, p0, LR5/a;->dragHorizontalRandomScalePct:I

    :catch_0
    :cond_1f
    :goto_d
    return-void
.end method

.method public f()I
    .locals 3

    invoke-virtual {p0}, LR5/a;->ensureLoaded()V

    iget v0, p0, LR5/a;->m:I

    if-lez v0, :cond_1

    iget v1, p0, LR5/a;->randomScalePct:I

    if-lez v1, :cond_1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x63

    div-int/2addr v0, v2

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, LR5/a;->e:I

    return v0
.end method

.method public getRandomScalePct()I
    .locals 1

    iget v0, p0, LR5/a;->randomScalePct:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, LR5/a;->k:I

    return v0
.end method

.method public i()I
    .locals 3

    invoke-virtual {p0}, LR5/a;->ensureLoaded()V

    iget v0, p0, LR5/a;->o:I

    if-lez v0, :cond_1

    iget v1, p0, LR5/a;->randomScalePct:I

    if-lez v1, :cond_1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x63

    div-int/2addr v0, v2

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, LR5/a;->s:I

    return v0
.end method

.method public k()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, LR5/a;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, LR5/a;->j:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, LR5/a;->d:I

    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, LR5/a;->v:I

    return v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, LR5/a;->u:I

    return v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, LR5/a;->h:Z

    return v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, LR5/a;->i:Z

    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, LR5/a;->g:Z

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, LR5/a;->f:Z

    return v0
.end method

.method public setRandomScalePct(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x64

    :goto_0
    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, LR5/a;->randomScalePct:I

    return-void
.end method

.method public t()Z
    .locals 1

    invoke-virtual {p0}, LR5/a;->ensureLoaded()V

    iget-boolean v0, p0, LR5/a;->n:Z

    return v0
.end method

.method public u(I)V
    .locals 0

    iput p1, p0, LR5/a;->l:I

    return-void
.end method

.method public v(I)V
    .locals 0

    iput p1, p0, LR5/a;->m:I

    return-void
.end method

.method public declared-synchronized x(Ljava/lang/String;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    iput-object v0, v1, LR5/a;->c:Ljava/lang/String;

    const/4 v2, 0x5

    iput v2, v1, LR5/a;->d:I

    const/4 v3, 0x3

    iput v3, v1, LR5/a;->e:I

    const/16 v3, 0x8

    iput v3, v1, LR5/a;->k:I

    const/16 v4, 0xa

    iput v4, v1, LR5/a;->o:I

    const v5, 0x3dcccccd    # 0.1f

    iput v5, v1, LR5/a;->r:F

    new-instance v6, Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0xf

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v6, v1, LR5/a;->p:Landroid/util/Range;

    const/4 v6, 0x1

    iput-boolean v6, v1, LR5/a;->t:Z

    const/4 v7, 0x0

    iput v7, v1, LR5/a;->s:I

    const/16 v8, 0x3e8

    iput v8, v1, LR5/a;->j:I

    const/16 v8, 0x1e

    iput v8, v1, LR5/a;->u:I

    iput v7, v1, LR5/a;->v:I

    iput-boolean v6, v1, LR5/a;->f:Z

    iput-boolean v6, v1, LR5/a;->i:Z

    iput-boolean v6, v1, LR5/a;->h:Z

    iput-boolean v6, v1, LR5/a;->g:Z

    iput-boolean v7, v1, LR5/a;->n:Z

    iput v2, v1, LR5/a;->l:I

    iput v2, v1, LR5/a;->m:I

    invoke-static {}, LA6/e;->a0()LA6/e;

    move-result-object v9

    invoke-virtual {v9}, LA6/e;->z()Z

    move-result v9

    const v10, 0x3f4ccccd    # 0.8f

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    const/4 v13, 0x0

    if-nez v9, :cond_0

    new-instance v9, LA6/i;

    invoke-direct {v9, v13, v10}, LA6/i;-><init>(FF)V

    invoke-virtual {v9, v13, v10, v11, v12}, LA6/i;->a(FFD)LA6/i;

    move-result-object v9

    invoke-virtual {v9}, LA6/i;->b()LA6/i;

    iput-object v9, v1, LR5/a;->q:LA6/i;

    iput-boolean v7, v1, LR5/a;->n:Z

    new-instance v9, Landroid/util/Range;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v9, v14, v15}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v9, v1, LR5/a;->p:Landroid/util/Range;

    iput v7, v1, LR5/a;->l:I

    iput v7, v1, LR5/a;->m:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    new-instance v9, LA6/i;

    const/high16 v14, 0x40600000    # 3.5f

    invoke-direct {v9, v13, v14}, LA6/i;-><init>(FF)V

    invoke-virtual {v9, v13, v14, v11, v12}, LA6/i;->a(FFD)LA6/i;

    move-result-object v9

    invoke-virtual {v9}, LA6/i;->b()LA6/i;

    iput-object v9, v1, LR5/a;->q:LA6/i;

    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/zjx/jyandroid/base/util/b$c;->d(Ljava/lang/String;)Z

    move-result v9

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    const-wide/high16 v11, 0x4032000000000000L    # 18.0

    const/16 v14, 0x1f4

    const/16 v16, 0x3c

    const/high16 v8, 0x41600000    # 14.0f

    const/high16 v10, 0x41000000    # 8.0f

    const/high16 v15, 0x40400000    # 3.0f

    const/high16 v7, 0x41b40000    # 22.5f

    if-nez v9, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/zjx/jyandroid/base/util/b$c;->c(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/zjx/jyandroid/base/util/b$c;->g(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.tencent.tmgp.cf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v9

    invoke-virtual {v9}, Lcom/zjx/jyandroid/ForegroundService/MainService;->l()Lj6/h$a;

    move-result-object v9

    sget-object v2, Lj6/h$a;->r6:Lj6/h$a;

    if-eq v9, v2, :cond_7

    sget-object v2, Lcom/zjx/jyandroid/ForegroundService/MainService;->y6:Lcom/zjx/jyandroid/ForegroundService/MainService;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ForegroundService/MainService;->l()Lj6/h$a;

    move-result-object v2

    sget-object v3, Lj6/h$a;->s6:Lj6/h$a;

    if-eq v2, v3, :cond_7

    sget-object v2, Lcom/zjx/jyandroid/ForegroundService/MainService;->y6:Lcom/zjx/jyandroid/ForegroundService/MainService;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ForegroundService/MainService;->l()Lj6/h$a;

    move-result-object v2

    sget-object v3, Lj6/h$a;->p6:Lj6/h$a;

    if-eq v2, v3, :cond_7

    sget-object v2, Lcom/zjx/jyandroid/ForegroundService/MainService;->y6:Lcom/zjx/jyandroid/ForegroundService/MainService;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ForegroundService/MainService;->l()Lj6/h$a;

    move-result-object v2

    sget-object v3, Lj6/h$a;->q6:Lj6/h$a;

    if-ne v2, v3, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/zjx/jyandroid/Extensions/pubg/c;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Landroid/os/HandlerThread;

    const-wide v19, -0x29e5f8924e0eL

    invoke-static/range {v19 .. v20}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, LR5/a;->b:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    iput v14, v1, LR5/a;->j:I

    new-instance v2, Landroid/os/Handler;

    iget-object v3, v1, LR5/a;->b:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v1, LR5/a;->a:Landroid/os/Handler;

    const/16 v2, 0x96

    iput v2, v1, LR5/a;->u:I

    iput-boolean v6, v1, LR5/a;->n:Z

    new-instance v2, LA6/i;

    invoke-direct {v2, v13, v7}, LA6/i;-><init>(FF)V

    invoke-virtual {v2, v13, v15, v11, v12}, LA6/i;->a(FFD)LA6/i;

    move-result-object v2

    invoke-virtual {v2, v15, v10, v4, v5}, LA6/i;->a(FFD)LA6/i;

    move-result-object v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v10, v8, v3, v4}, LA6/i;->a(FFD)LA6/i;

    move-result-object v2

    invoke-virtual {v2, v8, v7, v3, v4}, LA6/i;->a(FFD)LA6/i;

    move-result-object v2

    invoke-virtual {v2}, LA6/i;->b()LA6/i;

    move-result-object v2

    iput-object v2, v1, LR5/a;->q:LA6/i;

    const/4 v2, 0x0

    iput-boolean v2, v1, LR5/a;->h:Z

    iput-boolean v2, v1, LR5/a;->i:Z

    iput-boolean v2, v1, LR5/a;->t:Z

    new-instance v3, Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v3, v1, LR5/a;->p:Landroid/util/Range;

    const/16 v2, 0x8

    iput v2, v1, LR5/a;->k:I

    const/16 v2, 0x14

    iput v2, v1, LR5/a;->v:I

    const/16 v2, 0x32

    iput v2, v1, LR5/a;->o:I

    iput v14, v1, LR5/a;->j:I

    invoke-static {}, LA6/e;->a0()LA6/e;

    move-result-object v2

    invoke-virtual {v2}, LA6/e;->z()Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, LA6/i;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v13, v3}, LA6/i;-><init>(FF)V

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-virtual {v2, v13, v3, v4, v5}, LA6/i;->a(FFD)LA6/i;

    move-result-object v2

    invoke-virtual {v2}, LA6/i;->b()LA6/i;

    iput-object v2, v1, LR5/a;->q:LA6/i;

    const/4 v2, 0x0

    iput-boolean v2, v1, LR5/a;->n:Z

    new-instance v3, Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v3, v1, LR5/a;->p:Landroid/util/Range;

    iput v2, v1, LR5/a;->l:I

    iput v2, v1, LR5/a;->m:I

    goto/16 :goto_2

    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/zjx/jyandroid/base/util/b$c;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x8

    iput v2, v1, LR5/a;->e:I

    const/4 v2, 0x5

    iput v2, v1, LR5/a;->k:I

    const/16 v2, 0x32

    iput v2, v1, LR5/a;->s:I

    goto/16 :goto_2

    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/zjx/jyandroid/base/util/b$c;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    iput v2, v1, LR5/a;->o:I

    goto/16 :goto_2

    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/zjx/jyandroid/base/util/b$c;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/zjx/jyandroid/base/util/b$c;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_6
    iput-boolean v6, v1, LR5/a;->n:Z

    new-instance v2, Landroid/util/Range;

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v9, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v2, v1, LR5/a;->p:Landroid/util/Range;

    new-instance v2, LA6/i;

    invoke-direct {v2, v13, v7}, LA6/i;-><init>(FF)V

    invoke-virtual {v2, v13, v15, v11, v12}, LA6/i;->a(FFD)LA6/i;

    move-result-object v2

    invoke-virtual {v2, v15, v10, v4, v5}, LA6/i;->a(FFD)LA6/i;

    move-result-object v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v10, v8, v3, v4}, LA6/i;->a(FFD)LA6/i;

    move-result-object v2

    invoke-virtual {v2, v8, v7, v3, v4}, LA6/i;->a(FFD)LA6/i;

    move-result-object v2

    invoke-virtual {v2}, LA6/i;->b()LA6/i;

    move-result-object v2

    iput-object v2, v1, LR5/a;->q:LA6/i;

    const/16 v2, 0x1e

    iput v2, v1, LR5/a;->o:I

    const v2, 0x3e99999a    # 0.3f

    iput v2, v1, LR5/a;->r:F

    invoke-static {}, LA6/e;->a0()LA6/e;

    move-result-object v2

    invoke-virtual {v2}, LA6/e;->z()Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, LA6/i;

    const/high16 v3, 0x40000000    # 2.0f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v2, v4, v3}, LA6/i;-><init>(FF)V

    const/high16 v3, 0x40000000    # 2.0f

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    invoke-virtual {v2, v4, v3, v7, v8}, LA6/i;->a(FFD)LA6/i;

    move-result-object v2

    invoke-virtual {v2}, LA6/i;->b()LA6/i;

    move-result-object v2

    iput-object v2, v1, LR5/a;->q:LA6/i;

    goto/16 :goto_2

    :cond_7
    :goto_1
    new-instance v2, Landroid/os/HandlerThread;

    const-wide v17, -0x29e4f8924e0eL

    invoke-static/range {v17 .. v18}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, LR5/a;->b:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    new-instance v2, Landroid/os/Handler;

    iget-object v3, v1, LR5/a;->b:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v1, LR5/a;->a:Landroid/os/Handler;

    const/16 v2, 0x1e

    iput v2, v1, LR5/a;->d:I

    const/16 v3, 0x18

    iput v3, v1, LR5/a;->e:I

    const/4 v3, 0x6

    iput v3, v1, LR5/a;->k:I

    iput v2, v1, LR5/a;->o:I

    const v2, 0x3e99999a    # 0.3f

    iput v2, v1, LR5/a;->r:F

    const/4 v2, 0x0

    iput-boolean v2, v1, LR5/a;->t:Z

    const/16 v3, 0x64

    iput v3, v1, LR5/a;->u:I

    iput-boolean v2, v1, LR5/a;->f:Z

    iput-boolean v2, v1, LR5/a;->i:Z

    iput-boolean v2, v1, LR5/a;->h:Z

    const/16 v2, 0x2bc

    iput v2, v1, LR5/a;->j:I

    iput-boolean v6, v1, LR5/a;->n:Z

    new-instance v2, Landroid/util/Range;

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v9, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v2, v1, LR5/a;->p:Landroid/util/Range;

    new-instance v2, LA6/i;

    invoke-direct {v2, v13, v7}, LA6/i;-><init>(FF)V

    invoke-virtual {v2, v13, v15, v11, v12}, LA6/i;->a(FFD)LA6/i;

    move-result-object v2

    invoke-virtual {v2, v15, v10, v4, v5}, LA6/i;->a(FFD)LA6/i;

    move-result-object v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v10, v8, v3, v4}, LA6/i;->a(FFD)LA6/i;

    move-result-object v2

    invoke-virtual {v2, v8, v7, v3, v4}, LA6/i;->a(FFD)LA6/i;

    move-result-object v2

    invoke-virtual {v2}, LA6/i;->b()LA6/i;

    move-result-object v2

    iput-object v2, v1, LR5/a;->q:LA6/i;

    invoke-static/range {p1 .. p1}, Lcom/zjx/jyandroid/base/util/b$c;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x1e

    iput v2, v1, LR5/a;->d:I

    iput v2, v1, LR5/a;->e:I

    const/16 v2, 0xa

    iput v2, v1, LR5/a;->k:I

    const/16 v2, 0x32

    iput v2, v1, LR5/a;->o:I

    const v2, 0x3e99999a    # 0.3f

    iput v2, v1, LR5/a;->r:F

    const/4 v2, 0x0

    iput-boolean v2, v1, LR5/a;->t:Z

    const/16 v3, 0x82

    iput v3, v1, LR5/a;->u:I

    iput-boolean v2, v1, LR5/a;->f:Z

    iput-boolean v2, v1, LR5/a;->i:Z

    iput-boolean v2, v1, LR5/a;->h:Z

    iput v14, v1, LR5/a;->j:I

    iput-boolean v6, v1, LR5/a;->n:Z

    new-instance v3, Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v3, v1, LR5/a;->p:Landroid/util/Range;

    const/16 v2, 0x19

    iput v2, v1, LR5/a;->v:I

    :cond_8
    invoke-static {}, LA6/e;->a0()LA6/e;

    move-result-object v2

    invoke-virtual {v2}, LA6/e;->z()Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, LA6/i;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-direct {v2, v3, v4}, LA6/i;-><init>(FF)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40e00000    # 7.0f

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    invoke-virtual {v2, v3, v4, v7, v8}, LA6/i;->a(FFD)LA6/i;

    move-result-object v2

    invoke-virtual {v2}, LA6/i;->b()LA6/i;

    move-result-object v2

    iput-object v2, v1, LR5/a;->q:LA6/i;

    :cond_9
    :goto_2
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ForegroundService/MainService;->l()Lj6/h$a;

    move-result-object v2

    sget-object v3, Lj6/h$a;->r6:Lj6/h$a;

    if-eq v2, v3, :cond_a

    sget-object v2, Lcom/zjx/jyandroid/ForegroundService/MainService;->y6:Lcom/zjx/jyandroid/ForegroundService/MainService;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ForegroundService/MainService;->l()Lj6/h$a;

    move-result-object v2

    sget-object v3, Lj6/h$a;->s6:Lj6/h$a;

    if-ne v2, v3, :cond_c

    :cond_a
    const/4 v2, 0x0

    iput-boolean v2, v1, LR5/a;->g:Z

    iput-boolean v2, v1, LR5/a;->f:Z

    sget-object v2, Lj6/h$a;->s6:Lj6/h$a;

    if-ne v3, v2, :cond_b

    iput-boolean v6, v1, LR5/a;->f:Z

    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/zjx/jyandroid/Extensions/pubg/c;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget v0, Lcom/zjx/jyandroid/e$k;->r7:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->B(I)Ljava/lang/String;

    move-result-object v0

    const-wide v2, -0x29e6f8924e0eL

    invoke-static {v2, v3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iput-boolean v6, v1, LR5/a;->g:Z

    iput-boolean v6, v1, LR5/a;->f:Z

    :cond_c
    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/MainService;->y6:Lcom/zjx/jyandroid/ForegroundService/MainService;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->k()Ljava/lang/String;

    move-result-object v0

    const-wide v2, -0x29ecf8924e0eL

    invoke-static {v2, v3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    iput-boolean v0, v1, LR5/a;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_d
    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized y()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LR5/a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, LR5/a;->a:Landroid/os/Handler;

    iget-object v0, p0, LR5/a;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, LR5/a;->b:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
