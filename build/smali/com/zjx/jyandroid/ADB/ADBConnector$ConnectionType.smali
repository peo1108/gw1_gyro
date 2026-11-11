.class public final enum Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/ADB/ADBConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;

.field public static final enum Wired:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;

.field public static final enum Wireless:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;


# direct methods
.method private static synthetic $values()[Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;
    .locals 2

    sget-object v0, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;->Wired:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;

    sget-object v1, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;->Wireless:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;

    filled-new-array {v0, v1}, [Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;

    const-string v1, "Wired"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;->Wired:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;

    new-instance v0, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;

    const-string v1, "Wireless"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;->Wireless:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;

    invoke-static {}, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;->$values()[Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;->$VALUES:[Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;

    return-object p0
.end method

.method public static values()[Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;->$VALUES:[Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;

    invoke-virtual {v0}, [Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;

    return-object v0
.end method
