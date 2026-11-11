.class public final enum Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Stock"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

.field public static final enum Level1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

.field public static final enum Level2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

.field public static final enum Level3:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

.field public static final enum Level4:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

.field public static final enum Level5:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

.field public static final enum None:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;


# direct methods
.method private static synthetic $values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;
    .locals 6

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->None:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->Level1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    sget-object v2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->Level2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    sget-object v3, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->Level3:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    sget-object v4, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->Level4:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    sget-object v5, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->Level5:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    filled-new-array/range {v0 .. v5}, [Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->None:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    const-string v1, "Level1"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->Level1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    const-string v1, "Level2"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->Level2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    const-string v1, "Level3"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->Level3:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    const-string v1, "Level4"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->Level4:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    const-string v1, "Level5"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->Level5:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->$values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->$VALUES:[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    return-object p0
.end method

.method public static values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->$VALUES:[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    invoke-virtual {v0}, [Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    return-object v0
.end method
