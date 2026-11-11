.class public Lcom/zjx/jyandroid/base/Definitions/MouseButtons;
.super Lcom/zjx/jyandroid/base/Definitions/Buttons;
.source "SourceFile"


# static fields
.field public static final BUTTON_COUNT:I = 0x7

.field public static final MOUSE_BUTTON_LEFT_BUTTON_INDEX:I = 0x0

.field public static final MOUSE_BUTTON_LEFT_KEY_CODE:I = 0xfffe

.field public static final MOUSE_BUTTON_MIDDLE_BUTTON_INDEX:I = 0x2

.field public static final MOUSE_BUTTON_MIDDLE_KEY_CODE:I = 0xfffd

.field public static final MOUSE_BUTTON_RIGHT_BUTTON_INDEX:I = 0x1

.field public static final MOUSE_BUTTON_RIGHT_KEY_CODE:I = 0xffff

.field public static final MOUSE_BUTTON_SIDE1_BUTTON_INDEX:I = 0x3

.field public static final MOUSE_BUTTON_SIDE1_KEY_CODE:I = 0xfffc

.field public static final MOUSE_BUTTON_SIDE2_BUTTON_INDEX:I = 0x4

.field public static final MOUSE_BUTTON_SIDE2_KEY_CODE:I = 0xfffb

.field public static final MOUSE_BUTTON_SIDE3_BUTTON_INDEX:I = 0x5

.field public static final MOUSE_BUTTON_SIDE3_KEY_CODE:I = 0xfffa

.field public static final MOUSE_BUTTON_SIDE4_BUTTON_INDEX:I = 0x6

.field public static final MOUSE_BUTTON_SIDE4_KEY_CODE:I = 0xfff9

.field public static final MOUSE_SCROLL_DOWN_KEY_CODE:I = 0xfff8

.field public static final MOUSE_SCROLL_UP_KEY_CODE:I = 0xfff7

.field public static final buttonIndexToKeyCode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [I

    sput-object v0, Lcom/zjx/jyandroid/base/Definitions/MouseButtons;->buttonIndexToKeyCode:[I

    const/4 v1, 0x0

    const v2, 0xfffe

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0xffff

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, 0xfffd

    aput v2, v0, v1

    const/4 v1, 0x3

    const v2, 0xfffc

    aput v2, v0, v1

    const/4 v1, 0x4

    const v2, 0xfffb

    aput v2, v0, v1

    const/4 v1, 0x5

    const v2, 0xfffa

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0xfff9

    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/base/Definitions/Buttons;-><init>()V

    return-void
.end method
