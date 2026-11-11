.class public final enum Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecognitionFrequency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;

.field public static final enum Extreme:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;

.field public static final enum High:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;

.field public static final enum Low:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;

.field public static final enum Medium:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;


# direct methods
.method private static synthetic $values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;
    .locals 4

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;->Low:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;->Medium:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;

    sget-object v2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;->High:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;

    sget-object v3, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;->Extreme:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;

    filled-new-array {v0, v1, v2, v3}, [Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;

    const-wide v1, -0x6e7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;->Low:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;

    const-wide v1, -0x727dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;->Medium:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;

    const-wide v1, -0x797dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;->High:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;

    const-wide v1, -0x7e7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;->Extreme:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;->$values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;->$VALUES:[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;

    return-object p0
.end method

.method public static values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;->$VALUES:[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;

    invoke-virtual {v0}, [Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;

    return-object v0
.end method
