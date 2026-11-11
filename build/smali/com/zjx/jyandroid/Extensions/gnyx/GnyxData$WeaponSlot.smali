.class public final enum Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WeaponSlot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

.field public static final enum NONE:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

.field public static final enum SLOT_1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

.field public static final enum SLOT_2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;


# direct methods
.method private static synthetic $values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;
    .locals 3

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;->NONE:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;->SLOT_1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    sget-object v2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;->SLOT_2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    filled-new-array {v0, v1, v2}, [Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;->NONE:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    const-string v1, "SLOT_1"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;->SLOT_1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    const-string v1, "SLOT_2"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;->SLOT_2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;->$values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;->$VALUES:[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    return-object p0
.end method

.method public static values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;->$VALUES:[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    invoke-virtual {v0}, [Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    return-object v0
.end method
