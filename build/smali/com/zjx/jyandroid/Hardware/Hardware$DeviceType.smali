.class public final enum Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Hardware/Hardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

.field public static final enum AB_PRO:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

.field public static final enum LIE_YING:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

.field public static final enum LIE_YING_PRO:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

.field public static final enum LING_ZHA_3:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

.field public static final enum LING_ZHA_3_PRO:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

.field public static final enum MO_XIE_MX_200_SX:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

.field public static final enum SOFTWARE_SC:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

.field public static final enum ZHAN_YING_LITE:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;


# direct methods
.method private static synthetic $values()[Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;
    .locals 8

    sget-object v0, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->LING_ZHA_3:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    sget-object v1, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->ZHAN_YING_LITE:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    sget-object v2, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->MO_XIE_MX_200_SX:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    sget-object v3, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->AB_PRO:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    sget-object v4, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->SOFTWARE_SC:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    sget-object v5, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->LIE_YING_PRO:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    sget-object v6, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->LIE_YING:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    sget-object v7, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->LING_ZHA_3_PRO:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    filled-new-array/range {v0 .. v7}, [Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    const-string v1, "LING_ZHA_3"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->LING_ZHA_3:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    new-instance v0, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    const-string v1, "ZHAN_YING_LITE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->ZHAN_YING_LITE:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    new-instance v0, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    const-string v1, "MO_XIE_MX_200_SX"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->MO_XIE_MX_200_SX:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    new-instance v0, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    const-string v1, "AB_PRO"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->AB_PRO:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    new-instance v0, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    const-string v1, "SOFTWARE_SC"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->SOFTWARE_SC:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    new-instance v0, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    const-string v1, "LIE_YING_PRO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->LIE_YING_PRO:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    new-instance v0, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    const-string v1, "LIE_YING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->LIE_YING:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    new-instance v0, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    const-string v1, "LING_ZHA_3_PRO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->LING_ZHA_3_PRO:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    invoke-static {}, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->$values()[Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->$VALUES:[Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->$VALUES:[Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    invoke-virtual {v0}, [Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    return-object v0
.end method
