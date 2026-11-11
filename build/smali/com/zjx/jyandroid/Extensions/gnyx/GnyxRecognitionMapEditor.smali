.class public Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$ActionHandler;
    }
.end annotation


# static fields
.field private static final KEYMAP_FORMAT_VERSION:Ljava/lang/String; = "0.0.2"


# instance fields
.field public actionHandler:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$ActionHandler;

.field aimComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

.field blockUnselectComponent:Z

.field componentHoldersViewScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

.field crouchComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

.field fireComponent1:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

.field fireComponent2:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

.field firstWeaponAccessoriesRect:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

.field gnyxSettings:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

.field private mapPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

.field private presetRecognitionMapListView:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

.field resizeScopeComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentImageHolder;

.field resizeWeaponComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentImageHolder;

.field private restartTrackerWhenExit:Z

.field scopeComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

.field private scopeRecognitionEnable:Z

.field secondWeaponAccessoriesRect:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

.field private selectedComponent:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

.field weapon1:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

.field weapon2:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->gnyxSettings:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->blockUnselectComponent:Z

    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$1;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)V

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->componentHoldersViewScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->restartTrackerWhenExit:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->scopeRecognitionEnable:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->selectedComponent:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->loadPresetMapsSelectionView()V

    return-void
.end method

.method public static synthetic access$200(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->unloadPresetMapsSelectionView()V

    return-void
.end method

.method private loadPresetMapsSelectionView()V
    .locals 10

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->presetRecognitionMapListView:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/zjx/jyandroid/R$layout;->pubg_preset_recognition_map_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->presetRecognitionMapListView:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->i()Landroid/util/Size;

    move-result-object v0

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->presetRecognitionMapListView:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-double v6, v0

    const-wide v8, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    const/16 v7, 0x33

    const/16 v8, 0x200

    invoke-virtual/range {v1 .. v8}, Ll/b;->d(Lcom/zjx/jyandroid/base/BaseFloatingView;IIIIII)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->presetRecognitionMapListView:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;->e:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$7;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$7;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->presetRecognitionMapListView:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$8;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$8;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)V

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;->setAdapter(Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$c;)V

    return-void
.end method

.method private refreshCustomAssetSizeSliderHiddenState()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->customizeAssetSizeSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->weaponSizeSliderContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->weaponSizeSliderContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private refreshCustomizeAssetsState()V
    .locals 2

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->refreshCustomAssetSizeSliderHiddenState()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->weapon1:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->weapon2:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->scopeComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->customizeAssetSizeSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->weaponSizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->weaponSizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->weapon1:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->setDisplayImage(Z)V

    :cond_2
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->weapon2:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->setDisplayImage(Z)V

    :cond_3
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->scopeComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;->setDisplayImage(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private removeBlackPixelsInBitmapAndConvertToBlue(Landroid/graphics/Bitmap;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_3

    move v2, v0

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v4

    const/16 v5, 0x14

    if-ge v4, v5, :cond_0

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v4

    if-ge v4, v5, :cond_0

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    if-ge v4, v5, :cond_0

    move v3, v0

    goto :goto_2

    :cond_0
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v4

    const/16 v5, 0xe6

    if-le v4, v5, :cond_1

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v4

    if-le v4, v5, :cond_1

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    if-le v4, v5, :cond_1

    sget v3, Lcom/zjx/jyandroid/R$color;->jy_blue_1:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v3

    :cond_1
    :goto_2
    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private removeResizeAssetComponents()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->weaponSizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->weaponSizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->resizeWeaponComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentImageHolder;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->deleteComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->resizeWeaponComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentImageHolder;

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->resizeScopeComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentImageHolder;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->deleteComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->resizeScopeComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentImageHolder;

    :cond_1
    return-void
.end method

.method private setWhiteComponentSize(II)V
    .locals 9

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->gnyxSettings:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->getRecognitionAssetsPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/14.JPG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v4, -0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    if-ne p1, v4, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    :cond_0
    int-to-float v6, p1

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {p0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->removeBlackPixelsInBitmapAndConvertToBlue(Landroid/graphics/Bitmap;)V

    iget-object v7, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->weapon1:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    new-instance v8, Landroid/util/Size;

    invoke-direct {v8, p1, v5}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v7, v1, v8}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->setImage(Landroid/graphics/Bitmap;Landroid/util/Size;)V

    iget-object v7, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->weapon2:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    new-instance v8, Landroid/util/Size;

    invoke-direct {v8, p1, v5}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v7, v1, v8}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->setImage(Landroid/graphics/Bitmap;Landroid/util/Size;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->weapon1:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    invoke-virtual {p1, v3}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->setDisplayImage(Z)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->weapon2:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    invoke-virtual {p1, v3}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->setDisplayImage(Z)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->weaponSizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {p1, v6}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->weaponSizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v5, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$9;

    invoke-direct {v5, p0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$9;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v5}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    :cond_1
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/accessories/scope/s1.JPG"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    if-ne p2, v4, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    :cond_2
    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->removeBlackPixelsInBitmapAndConvertToBlue(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->firstWeaponAccessoriesRect:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, p2, v0}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v2, p1, v4}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->setImage(Landroid/graphics/Bitmap;Landroid/util/Size;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->firstWeaponAccessoriesRect:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->setDisplayImage(Z)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->secondWeaponAccessoriesRect:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, p2, v0}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v2, p1, v4}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->setImage(Landroid/graphics/Bitmap;Landroid/util/Size;)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->secondWeaponAccessoriesRect:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    invoke-virtual {p2, v3}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->setDisplayImage(Z)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    iget-object p2, p2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->accessoryRectSizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {p2, v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    iget-object p2, p2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->accessoryRectSizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$10;

    invoke-direct {v0, p0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$10;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    :cond_3
    return-void
.end method

.method private unloadPresetMapsSelectionView()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->presetRecognitionMapListView:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->presetRecognitionMapListView:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    invoke-virtual {v0, v1}, Ll/b;->q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->presetRecognitionMapListView:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    return-void
.end method


# virtual methods
.method public addComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->disableDeleteButton:Z

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$13;

    invoke-direct {v0, p0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$13;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->addOnTouchHandler(Lcom/zjx/jyandroid/base/Interfaces/MView$OnTouchHandler;)V

    return-void
.end method

.method public addComponentsAtDefaultPlaces()V
    .locals 10

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->i()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    const/4 v3, 0x0

    move v5, v1

    move v4, v3

    :goto_0
    const/16 v6, 0x16

    if-ge v4, v6, :cond_7

    const/4 v6, 0x3

    if-nez v4, :cond_0

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->getDefaultSize()Landroid/util/Size;

    move-result-object v7

    new-instance v8, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    iget-object v9, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->weapon1:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-direct {v8, v5, v2, v9, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->weapon1:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    invoke-virtual {v2, v8}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->setFrame(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->weapon1:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    new-instance v5, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$11;

    invoke-direct {v5, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$11;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)V

    invoke-virtual {v2, v5}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setOnFrameChangedListener(Lcom/zjx/jyandroid/base/Interfaces/OnFrameChangedListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->weapon1:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    invoke-virtual {p0, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->addComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->weapon1:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    invoke-virtual {v2, v6}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->setType(I)V

    iget v5, v8, Landroid/graphics/Rect;->right:I

    iget v2, v8, Landroid/graphics/Rect;->top:I

    goto/16 :goto_1

    :cond_0
    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_1

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->getDefaultSize()Landroid/util/Size;

    move-result-object v6

    new-instance v8, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    iget-object v9, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->weapon2:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-direct {v8, v5, v2, v9, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->weapon2:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    invoke-virtual {v2, v8}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->setFrame(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->weapon2:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    new-instance v5, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$12;

    invoke-direct {v5, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$12;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)V

    invoke-virtual {v2, v5}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setOnFrameChangedListener(Lcom/zjx/jyandroid/base/Interfaces/OnFrameChangedListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->weapon2:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    invoke-virtual {p0, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->addComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->weapon2:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    invoke-virtual {v2, v7}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->setType(I)V

    iget v5, v8, Landroid/graphics/Rect;->right:I

    iget v2, v8, Landroid/graphics/Rect;->top:I

    goto/16 :goto_1

    :cond_1
    const/4 v9, 0x2

    if-ne v4, v9, :cond_2

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;->getDefaultSize()Landroid/util/Size;

    move-result-object v6

    new-instance v7, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

    iget-object v9, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->aimComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-direct {v7, v5, v2, v9, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->aimComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

    invoke-virtual {v2, v7}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->aimComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

    invoke-virtual {v2, v8}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;->setType(I)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->aimComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setResizeIndicatorHidden(Z)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->aimComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

    invoke-virtual {p0, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->addComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget v5, v7, Landroid/graphics/Rect;->right:I

    iget v2, v7, Landroid/graphics/Rect;->top:I

    goto/16 :goto_1

    :cond_2
    if-ne v4, v6, :cond_3

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;->getDefaultSize()Landroid/util/Size;

    move-result-object v6

    new-instance v7, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->crouchComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-direct {v7, v5, v2, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->crouchComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

    invoke-virtual {v2, v7}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->crouchComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

    invoke-virtual {v2, v9}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;->setType(I)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->crouchComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

    invoke-virtual {p0, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->addComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->crouchComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setResizeIndicatorHidden(Z)V

    iget v5, v7, Landroid/graphics/Rect;->right:I

    iget v2, v7, Landroid/graphics/Rect;->top:I

    goto/16 :goto_1

    :cond_3
    if-ne v4, v7, :cond_4

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->getDefaultSize()Landroid/util/Size;

    move-result-object v6

    new-instance v7, Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-direct {v7, v8, v6}, Landroid/util/Size;-><init>(II)V

    new-instance v6, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->firstWeaponAccessoriesRect:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-direct {v6, v5, v2, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->firstWeaponAccessoriesRect:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    invoke-virtual {v2, v6}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->setFrame(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->firstWeaponAccessoriesRect:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->setType(I)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->firstWeaponAccessoriesRect:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    invoke-virtual {p0, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->addComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget v5, v6, Landroid/graphics/Rect;->right:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_4
    const/4 v6, 0x5

    if-ne v4, v6, :cond_5

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->getDefaultSize()Landroid/util/Size;

    move-result-object v6

    new-instance v7, Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-direct {v7, v8, v6}, Landroid/util/Size;-><init>(II)V

    new-instance v6, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->secondWeaponAccessoriesRect:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    new-instance v6, Landroid/graphics/Rect;

    add-int/lit8 v8, v2, 0x50

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    add-int/2addr v2, v7

    add-int/lit8 v2, v2, 0x50

    invoke-direct {v6, v5, v8, v9, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->secondWeaponAccessoriesRect:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    invoke-virtual {v2, v6}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->setFrame(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->secondWeaponAccessoriesRect:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->setType(I)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->secondWeaponAccessoriesRect:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    invoke-virtual {p0, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->addComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget v5, v6, Landroid/graphics/Rect;->right:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1e

    if-le v5, v0, :cond_6

    add-int/lit8 v2, v2, 0x64

    move v5, v1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->scopeRecognitionEnable:Z

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->setScopeRecognitionEnable(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->firstWeaponAccessoriesRect:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->secondWeaponAccessoriesRect:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    iput-object v1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->siblingComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    iput-object v0, v1, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->siblingComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->accessoryRectSizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->setWhiteComponentSize(II)V

    return-void
.end method

.method public applyKeymapToComponentsHolderView(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, ". Error: "

    const-string v1, "\u6620\u5c04\u56fe\u9519\u8bef\u3002componentInfo: "

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->clear()V

    return-void

    :cond_0
    const-string v2, "version"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance v2, Lcom/zjx/jyandroid/base/util/a;

    const-string v3, "\u65e0\u6cd5\u83b7\u53d6\u6620\u5c04\u56fe\u7248\u672c\u4fe1\u606f\u3002\u70b9\u51fb\u4fdd\u5b58\u53ef\u80fd\u5bfc\u81f4\u90e8\u5206\u6620\u5c04\u56fe\u4fe1\u606f\u7684\u4e22\u5931\u3002"

    sget-object v4, Lcom/zjx/jyandroid/base/util/ToastView$a;->d:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v2, v3, v4}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v2}, Lcom/zjx/jyandroid/base/util/a;->a()V

    goto :goto_0

    :cond_1
    new-instance v3, Lio/github/g00fy2/versioncompare/Version;

    const-string v4, "0.0.2"

    invoke-direct {v3, v4}, Lio/github/g00fy2/versioncompare/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lio/github/g00fy2/versioncompare/Version;->isLowerThan(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Lcom/zjx/jyandroid/base/util/a;

    const-string v3, "\u6620\u5c04\u56fe\u7248\u672c\u9ad8\u4e8e\u672c\u8f6f\u4ef6\u7248\u672c\u3002\u53ef\u80fd\u5bfc\u81f4\u6620\u5c04\u56fe\u90e8\u5206\u4fe1\u606f\u65e0\u6cd5\u52a0\u8f7d\u3002"

    sget-object v4, Lcom/zjx/jyandroid/base/util/ToastView$a;->d:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v2, v3, v4}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v2}, Lcom/zjx/jyandroid/base/util/a;->a()V

    goto :goto_0

    :cond_2
    new-instance v3, Lio/github/g00fy2/versioncompare/Version;

    invoke-direct {v3, v4}, Lio/github/g00fy2/versioncompare/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lio/github/g00fy2/versioncompare/Version;->isHigherThan(Ljava/lang/String;)Z

    :goto_0
    const-string v2, "components"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/AbstractList;

    if-nez v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    :try_start_0
    const-string v4, "type"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    new-instance v5, Lr/e;

    invoke-direct {v5}, Lr/e;-><init>()V

    invoke-virtual {v5, v3}, Lr/e;->e(Ljava/util/Map;)V

    invoke-virtual {v5}, Lr/e;->b()Landroid/graphics/Rect;

    move-result-object v5

    const/4 v6, 0x1

    if-ne v4, v6, :cond_5

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->aimComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_3

    :cond_5
    const/4 v6, 0x2

    if-ne v4, v6, :cond_6

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->crouchComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_6
    const/4 v6, 0x3

    if-ne v4, v6, :cond_7

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->weapon1:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->setFrame(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_7
    const/4 v6, 0x4

    if-ne v4, v6, :cond_8

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->weapon2:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->setFrame(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_8
    const/4 v6, 0x5

    if-ne v4, v6, :cond_9

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->fireComponent1:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_9
    const/4 v6, 0x6

    if-ne v4, v6, :cond_a

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->fireComponent2:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_a
    const/4 v6, 0x7

    if-ne v4, v6, :cond_b

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->firstWeaponAccessoriesRect:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->setFrame(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_b
    const/16 v6, 0x8

    if-ne v4, v6, :cond_4

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->secondWeaponAccessoriesRect:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->setFrame(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ly/c;->b(Ljava/lang/String;)V

    new-instance v3, Lcom/zjx/jyandroid/base/util/a;

    const-string v4, "\u6709\u90e8\u5206\u6620\u5c04\u70b9\u65e0\u6cd5\u663e\u793a"

    sget-object v5, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v3, v4, v5}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v3}, Lcom/zjx/jyandroid/base/util/a;->a()V

    goto/16 :goto_1

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ly/c;->b(Ljava/lang/String;)V

    new-instance v3, Lcom/zjx/jyandroid/base/util/a;

    const-string v4, "\u6709\u90e8\u5206\u6620\u5c04\u70b9\u65e0\u6cd5\u663e\u793a\uff0c\u53ef\u80fd\u56e0\u4e3a\u6b64\u6e38\u620f\u5385\u7248\u672c\u8fc7\u4f4e"

    sget-object v5, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v3, v4, v5}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v3}, Lcom/zjx/jyandroid/base/util/a;->a()V

    goto/16 :goto_1

    :cond_c
    const-string v0, "weaponSize"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    const-string v1, "accessorySize"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    const/4 v1, -0x1

    if-nez v0, :cond_d

    move v2, v1

    goto :goto_4

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    :goto_4
    if-nez p1, :cond_e

    move p1, v1

    goto :goto_5

    :cond_e
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    :goto_5
    if-eqz v0, :cond_f

    invoke-direct {p0, v2, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->setWhiteComponentSize(II)V

    goto :goto_6

    :cond_f
    invoke-direct {p0, v1, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->setWhiteComponentSize(II)V

    :goto_6
    return-void
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    return-void
.end method

.method public deleteComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 4

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->selectedComponent:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->setSelectedComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    :cond_0
    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->getComponentViews()[Landroid/view/View;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getKeymapComponentData()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "version"

    const-string v3, "0.0.2"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6211\u7684\u6620\u5c04"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/zjx/jyandroid/base/util/b$h;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lcom/zjx/jyandroid/base/util/b$h;-><init>(I)V

    invoke-virtual {v3}, Lcom/zjx/jyandroid/base/util/b$h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "components"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->weaponSizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "weaponSize"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->accessoryRectSizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "accessorySize"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_6

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentImageHolder;

    if-ne v4, v5, :cond_0

    goto/16 :goto_2

    :cond_0
    check-cast v3, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    new-instance v4, Lr/e;

    invoke-direct {v4}, Lr/e;-><init>()V

    invoke-virtual {v4, v3}, Lr/e;->d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

    const-string v7, "type"

    if-ne v5, v6, :cond_1

    check-cast v3, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

    invoke-virtual {v4}, Lr/e;->f()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    if-ne v5, v6, :cond_2

    check-cast v3, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    invoke-virtual {v4}, Lr/e;->f()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentRectangle;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentSquare;

    if-ne v5, v6, :cond_3

    check-cast v3, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentSquare;

    invoke-virtual {v4}, Lr/e;->f()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentSquare;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    if-ne v5, v6, :cond_4

    check-cast v3, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    invoke-virtual {v4}, Lr/e;->f()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentRectangle;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return-object v1
.end method

.method public load()V
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->setDefaultEventReceiverEnabled(Z)V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v1

    const-class v3, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {v1, v3}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    sget v5, Lcom/zjx/jyandroid/R$layout;->components_holder_view:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    iput-object v5, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    sget v5, Lcom/zjx/jyandroid/R$layout;->gnyx_map_panel_view:I

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;

    invoke-direct {v6, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    iput-object v2, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->i()Landroid/util/Size;

    move-result-object v2

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v3

    iget-object v4, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-static {}, Ll/b;->i()I

    move-result v2

    or-int/lit8 v10, v2, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x33

    invoke-virtual/range {v3 .. v10}, Ll/b;->d(Lcom/zjx/jyandroid/base/BaseFloatingView;IIIIII)V

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v11

    iget-object v12, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    const/16 v16, -0x2

    const/16 v17, 0x31

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x2

    invoke-virtual/range {v11 .. v17}, Ll/b;->c(Lcom/zjx/jyandroid/base/BaseFloatingView;IIIII)V

    iget-object v2, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V

    iget-object v2, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->enableRecoilControlSwitch:Landroid/widget/Switch;

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->gnyxSettings:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-virtual {v3}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->isEnableRecoilControl()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$2;

    invoke-direct {v3, v0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$2;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)V

    iput-object v3, v2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->enableRecognitionSwitchStateChangedListener:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$SwitchStateChangedListener;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->accessoryRectSizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setMaximumValue(F)V

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->accessoryRectSizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setMinimumValue(F)V

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->accessoryRectSizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$3;

    invoke-direct {v2, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$3;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)V

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    new-instance v2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$4;

    invoke-direct {v2, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$4;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)V

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->setMapPanelViewAdapter(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$MapPanelViewAdapter;)V

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    new-instance v2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$5;

    invoke-direct {v2, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$5;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)V

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setOnConfigurationChangedListener(Lcom/zjx/jyandroid/base/Interfaces/MView$OnViewConfigurationChangedListener;)V

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    new-instance v2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$6;

    invoke-direct {v2, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$6;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public moveSelectedComponentRelative(II)V
    .locals 5

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->selectedComponent:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz p1, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p1

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p1

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v1

    :cond_1
    if-eqz p2, :cond_2

    new-instance p1, Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, p2

    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p1, v1, v2, v3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, p1

    :cond_2
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->selectedComponent:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method public resetWeaponAndScopeSizes()V
    .locals 0

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    return-void
.end method

.method public setAccessoryComponentsSize(I)V
    .locals 5

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->firstWeaponAccessoriesRect:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->firstWeaponAccessoriesRect:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int v4, v3, p1

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setFrame(IIII)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->secondWeaponAccessoriesRect:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->secondWeaponAccessoriesRect:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v3

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setFrame(IIII)V

    return-void
.end method

.method public setAccessoryComponentsVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->firstWeaponAccessoriesRect:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->secondWeaponAccessoriesRect:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setScopeRecognitionEnable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->scopeRecognitionEnable:Z

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->scopeComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setSelectedComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->selectedComponent:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setSelected(Z)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setSelected(Z)V

    :cond_1
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->selectedComponent:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    return-void
.end method

.method public unload()V
    .locals 2

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    invoke-virtual {v0, v1}, Ll/b;->q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v0, v1}, Ll/b;->q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->restartTrackerWhenExit:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v0

    const-class v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->restartGameStatusTracker()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->restartTrackerWhenExit:Z

    :cond_0
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->setDefaultEventReceiverEnabled(Z)V

    return-void
.end method
