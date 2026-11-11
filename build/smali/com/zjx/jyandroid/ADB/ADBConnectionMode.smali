.class public final enum Lcom/zjx/jyandroid/ADB/ADBConnectionMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zjx/jyandroid/ADB/ADBConnectionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

.field public static final enum COMPUTER:Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

.field public static final enum ROOT:Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

.field public static final enum WIRED:Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

.field public static final enum WIRELESS:Lcom/zjx/jyandroid/ADB/ADBConnectionMode;


# direct methods
.method private static synthetic $values()[Lcom/zjx/jyandroid/ADB/ADBConnectionMode;
    .locals 4

    sget-object v0, Lcom/zjx/jyandroid/ADB/ADBConnectionMode;->WIRED:Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    sget-object v1, Lcom/zjx/jyandroid/ADB/ADBConnectionMode;->WIRELESS:Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    sget-object v2, Lcom/zjx/jyandroid/ADB/ADBConnectionMode;->ROOT:Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    sget-object v3, Lcom/zjx/jyandroid/ADB/ADBConnectionMode;->COMPUTER:Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    const-string v1, "WIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/ADB/ADBConnectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/ADB/ADBConnectionMode;->WIRED:Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    new-instance v0, Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    const-string v1, "WIRELESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/ADB/ADBConnectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/ADB/ADBConnectionMode;->WIRELESS:Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    new-instance v0, Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    const-string v1, "ROOT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/ADB/ADBConnectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/ADB/ADBConnectionMode;->ROOT:Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    new-instance v0, Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    const-string v1, "COMPUTER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/ADB/ADBConnectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/ADB/ADBConnectionMode;->COMPUTER:Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    invoke-static {}, Lcom/zjx/jyandroid/ADB/ADBConnectionMode;->$values()[Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/ADB/ADBConnectionMode;->$VALUES:[Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zjx/jyandroid/ADB/ADBConnectionMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    return-object p0
.end method

.method public static values()[Lcom/zjx/jyandroid/ADB/ADBConnectionMode;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/ADB/ADBConnectionMode;->$VALUES:[Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    invoke-virtual {v0}, [Lcom/zjx/jyandroid/ADB/ADBConnectionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    return-object v0
.end method
