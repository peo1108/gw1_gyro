.class public Lcom/zjx/jyandroid/base/InputEvents/SpecialKeyboardKey;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LEFT_ALT:I = 0x2

.field public static final LEFT_ALT_KEY_CODE:B = -0x1et

.field public static final LEFT_COMMAND:I = 0x3

.field public static final LEFT_COMMAND_KEY_CODE:B = -0x19t

.field public static final LEFT_CONTROL:I = 0x0

.field public static final LEFT_CONTROL_KEY_CODE:B = -0x20t

.field public static final LEFT_SHIFT:I = 0x1

.field public static final LEFT_SHIFT_KEY_CODE:B = -0x1ft

.field public static final RIGHT_ALT:I = 0x6

.field public static final RIGHT_ALT_KEY_CODE:B = -0x1at

.field public static final RIGHT_COMMAND:I = 0x7

.field public static final RIGHT_COMMAND_KEY_CODE:B = -0x18t

.field public static final RIGHT_CONTROL:I = 0x4

.field public static final RIGHT_CONTROL_KEY_CODE:B = -0x1ct

.field public static final RIGHT_SHIFT:I = 0x5

.field public static final RIGHT_SHIFT_KEY_CODE:B = -0x1bt

.field public static final SPECIAL_KEY_CODES:[B

.field public static final SPECIAL_KEY_COUNT:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zjx/jyandroid/base/InputEvents/SpecialKeyboardKey;->SPECIAL_KEY_CODES:[B

    return-void

    :array_0
    .array-data 1
        -0x20t
        -0x1ft
        -0x1et
        -0x19t
        -0x1ct
        -0x1bt
        -0x1at
        -0x18t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
