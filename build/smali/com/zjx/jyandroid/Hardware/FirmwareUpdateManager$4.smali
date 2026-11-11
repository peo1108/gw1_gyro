.class synthetic Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$zjx$jyandroid$Hardware$Hardware$DeviceType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->values()[Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$4;->$SwitchMap$com$zjx$jyandroid$Hardware$Hardware$DeviceType:[I

    :try_start_0
    sget-object v1, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->LIE_YING:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$4;->$SwitchMap$com$zjx$jyandroid$Hardware$Hardware$DeviceType:[I

    sget-object v1, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->LIE_YING_PRO:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$4;->$SwitchMap$com$zjx$jyandroid$Hardware$Hardware$DeviceType:[I

    sget-object v1, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->MO_XIE_MX_200_SX:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$4;->$SwitchMap$com$zjx$jyandroid$Hardware$Hardware$DeviceType:[I

    sget-object v1, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->LING_ZHA_3_PRO:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
