.class public final enum Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gesture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

.field public static final enum CROUCH:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

.field public static final enum PRONE:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

.field public static final enum STAND:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;


# direct methods
.method private static synthetic $values()[Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;
    .locals 3

    sget-object v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;->STAND:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;->CROUCH:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    sget-object v2, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;->PRONE:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    filled-new-array {v0, v1, v2}, [Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    const-string v1, "STAND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;->STAND:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    const-string v1, "CROUCH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;->CROUCH:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    const-string v1, "PRONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;->PRONE:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;->$values()[Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;->$VALUES:[Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    return-object p0
.end method

.method public static values()[Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;->$VALUES:[Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    invoke-virtual {v0}, [Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    return-object v0
.end method
