.class public final enum Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "USBCommunicationRate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

.field public static final enum RATE_1000_HZ:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

.field public static final enum RATE_125_HZ:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

.field public static final enum RATE_250_HZ:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

.field public static final enum RATE_500_HZ:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

.field public static final enum RATE_UNKNOWN:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;


# direct methods
.method private static synthetic $values()[Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;
    .locals 5

    sget-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->RATE_UNKNOWN:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    sget-object v1, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->RATE_125_HZ:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    sget-object v2, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->RATE_250_HZ:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    sget-object v3, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->RATE_500_HZ:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    sget-object v4, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->RATE_1000_HZ:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    const-string v1, "RATE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->RATE_UNKNOWN:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    new-instance v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    const-string v1, "RATE_125_HZ"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->RATE_125_HZ:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    new-instance v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    const-string v1, "RATE_250_HZ"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->RATE_250_HZ:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    new-instance v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    const-string v1, "RATE_500_HZ"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->RATE_500_HZ:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    new-instance v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    const-string v1, "RATE_1000_HZ"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->RATE_1000_HZ:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    invoke-static {}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->$values()[Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->$VALUES:[Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    return-object p0
.end method

.method public static values()[Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->$VALUES:[Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    invoke-virtual {v0}, [Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    return-object v0
.end method
