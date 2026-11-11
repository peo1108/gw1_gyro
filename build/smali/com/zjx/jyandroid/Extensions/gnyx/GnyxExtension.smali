.class public Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/Extensions/IExtension;
.implements Lcom/zjx/jyandroid/Extensions/IRootFloatingPanelModifier;
.implements Lcom/zjx/jyandroid/Extensions/ISettingsProvider;
.implements Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;


# static fields
.field public static RC_CONFIG_SAVED_PATH:Ljava/lang/String;

.field public static RECOGNITION_ASSETS_SAVED_PATH_EXTERNAL:Ljava/lang/String;

.field public static RECOGNITION_ASSETS_SAVED_PATH_INTERNAL:Ljava/lang/String;


# instance fields
.field private adjustDynamicRCValueView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;

.field private adjustRCValueFloatingPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;

.field private aiming:Z

.field public context:Landroid/content/Context;

.field private controlKeyDown:Z

.field public extensionManager:Lcom/zjx/jyandroid/Extensions/ExtensionManager;

.field private fireFingerIndex:I

.field public floatingObjectManager:Ll/b;

.field private floatingPanel:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;

.field private gameStatusTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

.field private gesture:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

.field private hasAmmo:Z

.field private mapEditor:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

.field private muzzle:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

.field private playerStatus:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PlayerStatus;

.field private privateKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

.field private rcConfigDataProcessor:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

.field private rcPerformer:Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;

.field private rcTaskId:I

.field private recognitionMapContent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private scope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

.field private specialAccessory:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

.field private started:Z

.field private stock:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

.field private usingDefaultAdjustValueShortcut:Z

.field private weaponType:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getAppDocumentFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/gnyxExtension/RCConfig/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->RC_CONFIG_SAVED_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getCopiesAssetsFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/gnyxExtension/assets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->RECOGNITION_ASSETS_SAVED_PATH_INTERNAL:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getAppDocumentFolder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->RECOGNITION_ASSETS_SAVED_PATH_EXTERNAL:Ljava/lang/String;

    const-string v0, "opencv_java3"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PlayerStatus;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PlayerStatus;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->playerStatus:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PlayerStatus;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->hasAmmo:Z

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->usingDefaultAdjustValueShortcut:Z

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->floatingObjectManager:Ll/b;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->extensionManager:Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->context:Landroid/content/Context;

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->privateKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->Empty:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->weaponType:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;->XNoScope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->scope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;->STAND:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->gesture:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;->None:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->muzzle:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->None:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->stock:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;->None:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->specialAccessory:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->aiming:Z

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->controlKeyDown:Z

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->rcTaskId:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->fireFingerIndex:I

    return-void
.end method

.method public static synthetic access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PlayerStatus;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->playerStatus:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PlayerStatus;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->gesture:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->startHelper(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$102(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->gesture:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    return-object p1
.end method

.method public static synthetic access$1100(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;

    return-object p0
.end method

.method public static synthetic access$1202(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->recognitionMapContent:Ljava/util/Map;

    return-object p1
.end method

.method public static synthetic access$1300(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->gameStatusTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->mapEditor:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    return-object p0
.end method

.method public static synthetic access$1402(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->mapEditor:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->scope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->scope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->aiming:Z

    return p0
.end method

.method public static synthetic access$402(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->aiming:Z

    return p1
.end method

.method public static synthetic access$500(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->weaponType:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->weaponType:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->muzzle:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->muzzle:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    return-object p1
.end method

.method public static synthetic access$700(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->specialAccessory:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

    return-object p0
.end method

.method public static synthetic access$702(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->specialAccessory:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

    return-object p1
.end method

.method public static synthetic access$800(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->stock:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    return-object p0
.end method

.method public static synthetic access$802(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->stock:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    return-object p1
.end method

.method public static synthetic access$900(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->privateKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    return-object p0
.end method

.method public static getDefaultRcConfigShareCode(Z)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "gnyx_yq_default_jyandroid"

    return-object p0

    :cond_0
    const-string p0, "gnyx_yq_default_jyandroid_pad"

    return-object p0
.end method

.method public static getRcConfigPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->RC_CONFIG_SAVED_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRecognitionMapBundleId()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b;->y()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->WangzuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.zjx.gnyx.recognition."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "com.zjx.gnyx.recognitionsc"

    return-object v0
.end method

.method private declared-synchronized loadPanel()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->adjustRCValueFloatingPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->unloadPanel()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/zjx/jyandroid/R$layout;->gnyx_panel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x15

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v3

    const/16 v5, 0x8

    const/4 v6, -0x3

    const/16 v4, 0x7f6

    const/4 v2, -0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-direct {v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;-><init>()V

    const/16 v2, 0x33

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->getFloatingPanelOrigin()Landroid/graphics/Point;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;

    invoke-virtual {v2, v0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->isShowPanel()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->floatingObjectManager:Ll/b;

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;

    invoke-virtual {v2, v3, v0}, Ll/b;->e(Lcom/zjx/jyandroid/base/BaseFloatingView;Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->isFixPanel()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$8;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$8;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static rcConfigBundleId()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.zjx.gnyx.rcConfig."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized startHelper(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->rcConfigDataProcessor:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->load(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->stop()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->rcConfigDataProcessor:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

    invoke-direct {p1, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object p1

    invoke-virtual {p1}, Ly/d;->j()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object p1

    sget-object v0, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->WangzuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    move-result-object v0

    iput-object v0, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->viewController:Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;

    :cond_1
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->start()V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->registerEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->privateKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->getRecognitionMapBundleId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$5;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$5;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)V

    invoke-virtual {p1, v0, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->t(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to load recoil control config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$4;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$4;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method private declared-synchronized unloadPanel()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->floatingObjectManager:Ll/b;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;

    invoke-virtual {v0, v1}, Ll/b;->q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public eventOccurred(Ljava/util/LinkedList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/base/InputEvents/InputEvent;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v2

    sget-object v3, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->MouseButtonEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    if-ne v2, v3, :cond_3

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEvent;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEvent;->getButtonMask()I

    move-result v0

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;

    invoke-virtual {v0, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->setControlStarted(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->setControlStarted(Z)V

    iget v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->rcTaskId:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->rcTaskId:I

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v2

    sget-object v3, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->KeyboardEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    if-ne v2, v3, :cond_4

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;

    iget v2, v0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;->usage:I

    const/16 v3, -0x20

    if-ne v2, v3, :cond_1

    iget-boolean v0, v0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;->down:Z

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->controlKeyDown:Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v2

    sget-object v3, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->ScrollEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->usingDefaultAdjustValueShortcut:Z

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->controlKeyDown:Z

    if-eqz v2, :cond_1

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/ScrollEvent;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;

    iget v0, v0, Lcom/zjx/jyandroid/base/InputEvents/ScrollEvent;->y:I

    invoke-virtual {v2, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->adjustRecoilValue(I)V

    goto :goto_0

    :cond_6
    return v1
.end method

.method public getGameStatusTracker()Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->gameStatusTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    return-object v0
.end method

.method public getPrivateKeymapManager()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->privateKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    return-object v0
.end method

.method public getRcConfigDataProcessor()Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->rcConfigDataProcessor:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

    return-object v0
.end method

.method public getRcPerformer()Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;

    return-object v0
.end method

.method public getRecognitionMapContent()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->recognitionMapContent:Ljava/util/Map;

    return-object v0
.end method

.method public getSettingsCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSettingsTitle(I)Ljava/lang/String;
    .locals 0

    sget p1, Lcom/zjx/jyandroid/R$string;->pubg_extension_text1:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSettingsViewResourceId(I)I
    .locals 0

    sget p1, Lcom/zjx/jyandroid/R$layout;->gnyx_extension_settings_view:I

    return p1
.end method

.method public getWeaponType()Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->weaponType:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    return-object v0
.end method

.method public isFloatingPanelHidden()Z
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->started:Z

    return v0
.end method

.method public isUsingDefaultAdjustValueShortcut()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->usingDefaultAdjustValueShortcut:Z

    return v0
.end method

.method public declared-synchronized loadAdjustDynamicRCValuePanel()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->adjustDynamicRCValueView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->unloadAdjustDynamicRCValuePanel()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/zjx/jyandroid/R$layout;->gnyx_adjust_dynamic_rc_value_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->adjustDynamicRCValueView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0xdc

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v2

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v3

    const/16 v5, 0x8

    const/4 v6, -0x3

    const/16 v4, 0x7f6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-direct {v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;-><init>()V

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->getAdjustDynamicRCValuePanelOrigin()Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->floatingObjectManager:Ll/b;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->adjustDynamicRCValueView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;

    invoke-virtual {v1, v2, v0}, Ll/b;->e(Lcom/zjx/jyandroid/base/BaseFloatingView;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->adjustDynamicRCValueView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->adjustDynamicRCValueView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;->closeButton:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$6;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$6;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized loadAdjustRCValuePanel()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->adjustRCValueFloatingPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->unloadAdjustRCValuePanel()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/zjx/jyandroid/R$layout;->gnyx_adjust_rc_value_panel_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->adjustRCValueFloatingPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0xc8

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v2

    const/16 v1, 0x64

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v3

    const/16 v5, 0x8

    const/4 v6, -0x3

    const/16 v4, 0x7f6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-direct {v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;-><init>()V

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->getAdjustRCValuePanelOrigin()Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->floatingObjectManager:Ll/b;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->adjustRCValueFloatingPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;

    invoke-virtual {v1, v2, v0}, Ll/b;->e(Lcom/zjx/jyandroid/base/BaseFloatingView;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->adjustRCValueFloatingPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->adjustRCValueFloatingPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->closeButton:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$7;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$7;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCreate()V
    .locals 2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->RC_CONFIG_SAVED_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->RECOGNITION_ASSETS_SAVED_PATH_EXTERNAL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->RECOGNITION_ASSETS_SAVED_PATH_INTERNAL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->extensionManager:Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->registerSettingsProvider(Lcom/zjx/jyandroid/Extensions/ISettingsProvider;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->extensionManager:Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->unregisterSettingsProvider(Lcom/zjx/jyandroid/Extensions/ISettingsProvider;)V

    return-void
.end method

.method public onFloatingPanelDisplay(Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;)V
    .locals 7

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->context:Landroid/content/Context;

    sget v4, Lcom/zjx/jyandroid/R$drawable;->rootfloatingpanel_recognization_upload_icon:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/16 v4, 0x1b

    invoke-static {v4}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/zjx/jyandroid/R$string;->pubg_extension_text6:I

    invoke-static {v4}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41400000    # 12.0f

    const/4 v6, 0x2

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v0, v6}, Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;->a(Landroid/view/View;I)V

    new-instance p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onNewExtensionLoaded(Lcom/zjx/jyandroid/Extensions/IExtension;)V
    .locals 0

    return-void
.end method

.method public onNewExtensionUnloaded(Lcom/zjx/jyandroid/Extensions/IExtension;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onPause()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->unloadPanel()V

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->unloadAdjustRCValuePanel()V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->unloadAdjustDynamicRCValuePanel()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->mapEditor:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->unload()V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->mapEditor:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->privateKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->d()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->extensionManager:Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->unregisterRootFloatingPanelModifier(Lcom/zjx/jyandroid/Extensions/IRootFloatingPanelModifier;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->gameStatusTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->stop()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->gameStatusTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->setOnStatusChangeListener(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->gameStatusTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    :cond_2
    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->rcConfigDataProcessor:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->unregisterEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->stop()V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;

    :cond_3
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->gameStatusTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->gameStatusTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->started:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized onResume()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;-><init>()V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->isEnableRecoilControl()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->started:Z

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->extensionManager:Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->registerRootFloatingPanelModifier(Lcom/zjx/jyandroid/Extensions/IRootFloatingPanelModifier;)V

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->loadPanel()V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->refreshFloatingPanelAlpha()V

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->gameStatusTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$1;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)V

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->setOnStatusChangeListener(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->privateKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->rcConfigBundleId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$2;

    invoke-direct {v2, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$2;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)V

    invoke-virtual {v0, v1, v2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->t(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public refreshFloatingPanelAlpha()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-direct {v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;-><init>()V

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->getRCPanelTransparency()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public refreshPanel()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$3;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$3;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public restartGameStatusTracker()V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->gameStatusTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->stop()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->gameStatusTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->start()V

    return-void
.end method

.method public setFixPanel(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V

    :cond_0
    return-void
.end method

.method public setFloatingPanelHidden(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->floatingObjectManager:Ll/b;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;

    invoke-virtual {p1, v0}, Ll/b;->q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->floatingObjectManager:Ll/b;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0, v1}, Ll/b;->e(Lcom/zjx/jyandroid/base/BaseFloatingView;Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setUsingDefaultAdjustValueShortcut(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->usingDefaultAdjustValueShortcut:Z

    return-void
.end method

.method public declared-synchronized unloadAdjustDynamicRCValuePanel()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->adjustDynamicRCValueView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->floatingObjectManager:Ll/b;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->adjustDynamicRCValueView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;

    invoke-virtual {v0, v1}, Ll/b;->q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized unloadAdjustRCValuePanel()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->adjustRCValueFloatingPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->floatingObjectManager:Ll/b;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->adjustRCValueFloatingPanelView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;

    invoke-virtual {v0, v1}, Ll/b;->q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
