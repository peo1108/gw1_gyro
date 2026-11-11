.class public Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;
    }
.end annotation


# instance fields
.field editor:Landroid/content/SharedPreferences$Editor;

.field settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide v1, -0x867dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public getAccessoryRecognitionFrequency()I
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->settings:Landroid/content/SharedPreferences;

    const-wide v1, -0xef7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAccessoryRecognitionThreshold()I
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->settings:Landroid/content/SharedPreferences;

    const-wide v1, -0x12b7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAdjustDynamicRCValuePanelOrigin()Landroid/graphics/Point;
    .locals 8

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->settings:Landroid/content/SharedPreferences;

    const-wide v2, -0x2007dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->settings:Landroid/content/SharedPreferences;

    const-wide v4, -0x2167dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/16 v7, 0x10e

    invoke-static {v7}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    sub-float/2addr v5, v7

    float-to-int v5, v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-gez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x64

    if-le v1, v4, :cond_1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x64

    :cond_1
    :goto_0
    if-gez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x64

    if-le v2, v3, :cond_3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    add-int/lit8 v3, v0, -0x64

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getAdjustRCValuePanelOrigin()Landroid/graphics/Point;
    .locals 7

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->settings:Landroid/content/SharedPreferences;

    const-wide v2, -0x1c47dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->settings:Landroid/content/SharedPreferences;

    const-wide v4, -0x1d37dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-gez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x64

    if-le v1, v4, :cond_1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x64

    :cond_1
    :goto_0
    if-gez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x64

    if-le v2, v3, :cond_3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    add-int/lit8 v3, v0, -0x64

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getFloatingPanelOrigin()Landroid/graphics/Point;
    .locals 7

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->settings:Landroid/content/SharedPreferences;

    const-wide v3, -0x1a87dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->settings:Landroid/content/SharedPreferences;

    const-wide v5, -0x1af7dacc755L

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public getRCPanelTransparency()I
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->settings:Landroid/content/SharedPreferences;

    const-wide v1, -0x32d7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5a

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRecognitionAssetsPath()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->RECOGNITION_ASSETS_SAVED_PATH_INTERNAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x2587dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecognitionFrequency()Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;
    .locals 4

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;->values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->settings:Landroid/content/SharedPreferences;

    const-wide v2, -0x2997dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getScopeRecognitionThreshold()I
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->settings:Landroid/content/SharedPreferences;

    const-wide v1, -0x2f97dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWeaponRecognitionThreshold()I
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->settings:Landroid/content/SharedPreferences;

    const-wide v1, -0x2c37dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isEnableAccessoryRecognition()Z
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->settings:Landroid/content/SharedPreferences;

    const-wide v1, -0xbb7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isEnableRecoilControl()Z
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->settings:Landroid/content/SharedPreferences;

    const-wide v1, -0x937dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFixPanel()Z
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->settings:Landroid/content/SharedPreferences;

    const-wide v1, -0x1967dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPictureCollectMode()Z
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->settings:Landroid/content/SharedPreferences;

    const-wide v1, -0x2737dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowPanel()Z
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->settings:Landroid/content/SharedPreferences;

    const-wide v1, -0x1827dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAccessoryRecognitionFrequency(I)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x10d7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setAccessoryRecognitionMode(I)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0xd67dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setAccessoryRecognitionThreshold(I)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x1497dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setAdjustDynamicRCValuePanelOrigin(II)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x22c7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-wide v0, -0x2427dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAdjustRCValuePanelOrigin(II)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x1e27dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-wide v0, -0x1f17dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setEnableAccessoryRecognition(Z)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x1677dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setEnableRecoilControl(Z)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0xa77dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setFixPanel(Z)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x19f7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setFloatingPanelOrigin(II)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x1b67dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-wide v0, -0x1bd7dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPictureCollectMode(Z)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x2867dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setRCPanelTransparency(I)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x3417dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setRecognitionAssetsPath(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x25d7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setRecognitionFrequency(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x2ae7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setScopeRecognitionThreshold(I)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x3137dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setShowPanel(Z)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x18c7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setWeaponRecognitionThreshold(I)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x2de7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
