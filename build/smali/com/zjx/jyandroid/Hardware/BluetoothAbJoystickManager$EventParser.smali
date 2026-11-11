.class Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$EventParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventParser"
.end annotation


# instance fields
.field joystickLocation:Landroid/graphics/Point;

.field lastMask:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$EventParser;->lastMask:I

    .line 3
    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x80

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$EventParser;->joystickLocation:Landroid/graphics/Point;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$EventParser;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized parse([B)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/zjx/jyandroid/base/InputEvents/InputEvent;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x3

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_4

    aget-byte v3, p1, v2

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x7

    if-eq v3, v4, :cond_3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    const/16 v4, 0xe

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    or-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    or-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_3
    or-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    :goto_2
    iget v2, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$EventParser;->lastMask:I

    if-eq v2, v1, :cond_5

    new-instance v2, Lcom/zjx/jyandroid/base/InputEvents/GameControllerButtonEvent;

    invoke-direct {v2, v1}, Lcom/zjx/jyandroid/base/InputEvents/GameControllerButtonEvent;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v1, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$EventParser;->lastMask:I

    :cond_5
    const/16 v1, 0xd

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xf

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    iget-object v2, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$EventParser;->joystickLocation:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    if-ne v3, v1, :cond_6

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-eq v2, p1, :cond_7

    :cond_6
    new-instance v2, Lcom/zjx/jyandroid/base/InputEvents/GameControllerMoveEvent;

    add-int/lit8 v3, v1, -0x80

    int-to-float v3, v3

    const/high16 v4, 0x43000000    # 128.0f

    div-float/2addr v3, v4

    add-int/lit8 v5, p1, -0x80

    int-to-float v5, v5

    div-float/2addr v5, v4

    const/4 v4, 0x0

    invoke-direct {v2, v3, v5, v4}, Lcom/zjx/jyandroid/base/InputEvents/GameControllerMoveEvent;-><init>(FFF)V

    iget-object v3, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$EventParser;->joystickLocation:Landroid/graphics/Point;

    iput v1, v3, Landroid/graphics/Point;->x:I

    iput p1, v3, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    monitor-exit p0

    return-object v0

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
