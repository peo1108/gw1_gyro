.class public Lcom/zjx/jyandroid/base/Definitions/GameControllerButtons;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BUTTON_COUNT:I = 0x3

.field public static final GAME_CONTROLLER_BUTTON_KEY_CODE:I = 0xfa02

.field public static final GAME_CONTROLLER_BUTTON_KEY_INDEX:I = 0x2

.field public static final GAME_CONTROLLER_JOYSTICK_INDEX:I = 0x1

.field public static final GAME_CONTROLLER_JOYSTICK_KEY_CODE:I = 0xfa01

.field public static final GAME_CONTROLLER_SHOULDER_L1_INDEX:I = 0x0

.field public static final GAME_CONTROLLER_SHOULDER_L1_KEY_CODE:I = 0xfa00

.field public static final buttonIndexToKeyCode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    sput-object v0, Lcom/zjx/jyandroid/base/Definitions/GameControllerButtons;->buttonIndexToKeyCode:[I

    const/4 v1, 0x0

    const v2, 0xfa00

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0xfa01

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, 0xfa02

    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
