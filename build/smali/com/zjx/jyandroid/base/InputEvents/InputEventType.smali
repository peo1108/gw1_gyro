.class public final enum Lcom/zjx/jyandroid/base/InputEvents/InputEventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zjx/jyandroid/base/InputEvents/InputEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

.field public static final enum GameControllerButtonEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

.field public static final enum GameControllerMoveEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

.field public static final enum KeyEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

.field public static final enum KeyboardEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

.field public static final enum MouseButtonEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

.field public static final enum MouseMoveEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

.field public static final enum ScrollEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

.field public static final enum TouchEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

.field public static final enum UnknownEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;


# direct methods
.method private static synthetic $values()[Lcom/zjx/jyandroid/base/InputEvents/InputEventType;
    .locals 9

    sget-object v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->UnknownEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    sget-object v1, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->KeyboardEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    sget-object v2, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->MouseMoveEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    sget-object v3, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->MouseButtonEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    sget-object v4, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->ScrollEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    sget-object v5, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->TouchEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    sget-object v6, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->KeyEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    sget-object v7, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->GameControllerButtonEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    sget-object v8, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->GameControllerMoveEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    filled-new-array/range {v0 .. v8}, [Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    const-string v1, "UnknownEvent"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->UnknownEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    new-instance v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    const-string v1, "KeyboardEvent"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->KeyboardEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    new-instance v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    const-string v1, "MouseMoveEvent"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->MouseMoveEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    new-instance v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    const-string v1, "MouseButtonEvent"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->MouseButtonEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    new-instance v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    const-string v1, "ScrollEvent"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->ScrollEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    new-instance v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    const-string v1, "TouchEvent"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->TouchEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    new-instance v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    const-string v1, "KeyEvent"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->KeyEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    new-instance v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    const-string v1, "GameControllerButtonEvent"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->GameControllerButtonEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    new-instance v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    const-string v1, "GameControllerMoveEvent"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->GameControllerMoveEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    invoke-static {}, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->$values()[Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->$VALUES:[Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zjx/jyandroid/base/InputEvents/InputEventType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    return-object p0
.end method

.method public static values()[Lcom/zjx/jyandroid/base/InputEvents/InputEventType;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->$VALUES:[Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    invoke-virtual {v0}, [Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    return-object v0
.end method
