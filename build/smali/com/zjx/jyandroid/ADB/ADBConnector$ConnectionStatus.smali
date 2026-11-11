.class public final enum Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/ADB/ADBConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

.field public static final enum CONNECTED:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

.field public static final enum CONNECTING:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

.field public static final enum NOT_CONNECTED:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;


# direct methods
.method private static synthetic $values()[Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;
    .locals 3

    sget-object v0, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;->NOT_CONNECTED:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    sget-object v1, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;->CONNECTING:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    sget-object v2, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;->CONNECTED:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    filled-new-array {v0, v1, v2}, [Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    const-string v1, "NOT_CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;->NOT_CONNECTED:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    new-instance v0, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    const-string v1, "CONNECTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;->CONNECTING:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    new-instance v0, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    const-string v1, "CONNECTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;->CONNECTED:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    invoke-static {}, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;->$values()[Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;->$VALUES:[Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    return-object p0
.end method

.method public static values()[Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;->$VALUES:[Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    invoke-virtual {v0}, [Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    return-object v0
.end method
