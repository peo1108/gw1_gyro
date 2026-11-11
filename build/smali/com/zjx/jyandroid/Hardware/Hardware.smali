.class public Lcom/zjx/jyandroid/Hardware/Hardware;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;,
        Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceImage(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const-string v0, "DevicePictures/ab_pro.jpg"

    const-string v1, "DevicePictures/lz3pro.jpg"

    packed-switch p0, :pswitch_data_0

    const-string v0, ""

    goto :goto_0

    :pswitch_0
    move-object v0, v1

    goto :goto_0

    :pswitch_1
    const-string v0, "DevicePictures/lieying.jpg"

    goto :goto_0

    :pswitch_2
    const-string v0, "DevicePictures/lieying_pro.jpg"

    goto :goto_0

    :pswitch_3
    const-string v0, "DevicePictures/moxie.jpg"

    goto :goto_0

    :pswitch_4
    const-string v0, "DevicePictures/zy.jpg"

    :goto_0
    :pswitch_5
    const/4 p0, 0x0

    :try_start_0
    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDeviceName(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "\u7075\u54123Pro"

    return-object p0

    :pswitch_1
    sget p0, Lcom/zjx/jyandroid/R$string;->ly_name:I

    invoke-static {p0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget p0, Lcom/zjx/jyandroid/R$string;->ly_pro_name:I

    invoke-static {p0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget p0, Lcom/zjx/jyandroid/R$string;->jy_sc_name:I

    invoke-static {p0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    sget p0, Lcom/zjx/jyandroid/R$string;->ab_mini_pro_name:I

    invoke-static {p0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    sget p0, Lcom/zjx/jyandroid/R$string;->mx_name:I

    invoke-static {p0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    sget p0, Lcom/zjx/jyandroid/R$string;->zhanying_name:I

    invoke-static {p0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    sget p0, Lcom/zjx/jyandroid/R$string;->lz3_name:I

    invoke-static {p0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
