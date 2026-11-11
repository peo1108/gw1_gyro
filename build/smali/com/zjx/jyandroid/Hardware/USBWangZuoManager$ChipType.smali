.class public final enum Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChipType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

.field public static final enum BT:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

.field public static final enum MCU:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;


# direct methods
.method private static synthetic $values()[Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;
    .locals 2

    sget-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;->MCU:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    sget-object v1, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;->BT:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    filled-new-array {v0, v1}, [Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    const-string v1, "MCU"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;->MCU:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    new-instance v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    const-string v1, "BT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;->BT:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    invoke-static {}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;->$values()[Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;->$VALUES:[Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    return-object p0
.end method

.method public static values()[Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;->$VALUES:[Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    invoke-virtual {v0}, [Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    return-object v0
.end method
