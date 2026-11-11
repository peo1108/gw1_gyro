.class public Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/Extensions/IExtension;
.implements Lcom/zjx/jyandroid/Extensions/ISettingsProvider;
.implements Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;
.implements Lcom/zjx/jyandroid/Extensions/IRootFloatingPanelModifier;


# static fields
.field public static final RC_CONFIG_SAVED_PATH:Ljava/lang/String;

.field private static final RC_DATA_BUNDLE_ID:Ljava/lang/String; = "com.zjx.generalrc.rcConfig"

.field public static final RECOGNITION_ASSETS_SAVED_PATH_EXTERNAL:Ljava/lang/String;

.field public static final RECOGNITION_ASSETS_SAVED_PATH_INTERNAL:Ljava/lang/String;


# instance fields
.field private adjustDynamicRCValueView:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

.field private adjustRCValueFloatingPanelView:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView;

.field public context:Landroid/content/Context;

.field private controlKeyDown:Z

.field private crouchKeyCode:I

.field public extensionManager:Lcom/zjx/jyandroid/Extensions/ExtensionManager;

.field private fingerMovedViewManager:Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;

.field private fireFingerIndex:I

.field public floatingObjectManager:Ll/b;

.field private floatingPanel:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;

.field private gesture:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

.field private isWangzuoMode:Z

.field private keymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

.field private mapEditor:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;

.field private privateKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

.field private proneKeyCode:I

.field private rcConfigDataProcessor:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;

.field private rcPerformer:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;

.field private standKeyCode:I

.field private started:Z

.field switchConfigKeyCodes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getAppDocumentFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/GeneralRC/RCConfig/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->RC_CONFIG_SAVED_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getCopiesAssetsFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/GeneralRC/assets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->RECOGNITION_ASSETS_SAVED_PATH_INTERNAL:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getAppDocumentFolder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->RECOGNITION_ASSETS_SAVED_PATH_EXTERNAL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->switchConfigKeyCodes:Ljava/util/LinkedList;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->J()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->keymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b;->y()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->WangzuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->isWangzuoMode:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->fireFingerIndex:I

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->floatingObjectManager:Ll/b;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->extensionManager:Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->context:Landroid/content/Context;

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->privateKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    iput-boolean v2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->started:Z

    iput-boolean v2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->controlKeyDown:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->privateKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->startHelper(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->fingerMovedViewManager:Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->keymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->gesture:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->mapEditor:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;

    return-object p0
.end method

.method public static synthetic access$702(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;)Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->mapEditor:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;

    return-object p1
.end method

.method public static synthetic access$800(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->getFingerRegionMapBundleId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFingerRegionMapBundleId()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b;->y()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->WangzuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.zjx.generalrc.fingerRegionMap"

    return-object v0
.end method

.method public static getRCDataBundleId()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.zjx.generalrc.rcConfig"

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

.method public static getRcConfigPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->RC_CONFIG_SAVED_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized loadPanel()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->unloadPanel()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/zjx/jyandroid/R$layout;->general_rc_panel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;

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

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;

    invoke-direct {v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;-><init>()V

    const/16 v2, 0x33

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;->getFloatingPanelOrigin()Landroid/graphics/Point;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;

    invoke-virtual {v2, v0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;->isShowPanel()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->floatingObjectManager:Ll/b;

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;

    invoke-virtual {v2, v3, v0}, Ll/b;->e(Lcom/zjx/jyandroid/base/BaseFloatingView;Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;->isFixPanel()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$5;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$5;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)V

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

.method private declared-synchronized startHelper(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->switchConfigKeyCodes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    new-instance v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->switchConfigKeyCodes:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;->getSwitchHotkeys(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    new-instance v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->rcConfigDataProcessor:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->load(Ljava/lang/String;)Z
    :try_end_1
    .catch Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$OutdatedFileException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->stop()V

    :cond_1
    new-instance p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->rcConfigDataProcessor:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;

    invoke-direct {p1, v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b;->y()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object p1

    sget-object v0, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->ShoucuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    if-ne p1, v0, :cond_2

    new-instance p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;

    invoke-direct {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->fingerMovedViewManager:Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;

    iput-object p1, v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->viewController:Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    move-result-object v1

    iput-object v1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->viewController:Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;

    :goto_1
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->start()V

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object p1

    invoke-virtual {p1}, Ly/d;->j()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object p1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->keymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->getFingerRegionMapBundleId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$4;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$4;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)V

    invoke-virtual {p1, v0, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->t(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;)V

    :cond_3
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->registerEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->refreshPanel()V
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

    new-instance v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$3;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$3;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catch_1
    move-exception p1

    :try_start_4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$2;

    invoke-direct {v1, p0, p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$2;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$OutdatedFileException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method private declared-synchronized unloadPanel()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->floatingObjectManager:Ll/b;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;

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
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/base/InputEvents/InputEvent;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->isWangzuoMode:Z

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v4

    sget-object v5, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->MouseButtonEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    if-ne v4, v5, :cond_3

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEvent;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEvent;->getButtonMask()I

    move-result v0

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;

    invoke-virtual {v0, v3}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->setControlStarted(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->setControlStarted(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v4

    sget-object v5, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->KeyboardEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    if-ne v4, v5, :cond_a

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;

    iget v4, v0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;->usage:I

    const/16 v5, -0x20

    if-ne v4, v5, :cond_4

    iget-boolean v5, v0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;->down:Z

    iput-boolean v5, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->controlKeyDown:Z

    :cond_4
    iget-boolean v5, v0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;->down:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->switchConfigKeyCodes:Ljava/util/LinkedList;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v2, :cond_5

    invoke-virtual {p0, v4}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->setSelectedConfigIndex(I)V

    :cond_5
    iget v0, v0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;->usage:I

    iget v4, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->crouchKeyCode:I

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->gesture:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    sget-object v4, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;->CROUCH:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    if-ne v0, v4, :cond_6

    sget-object v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;->STAND:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->setGesture(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v4}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->setGesture(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;)V

    goto :goto_0

    :cond_7
    iget v4, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->standKeyCode:I

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->gesture:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    sget-object v4, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;->STAND:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    if-eq v0, v4, :cond_1

    invoke-virtual {p0, v4}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->setGesture(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;)V

    goto :goto_0

    :cond_8
    iget v4, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->proneKeyCode:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->gesture:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    sget-object v4, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;->PRONE:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    if-ne v0, v4, :cond_9

    sget-object v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;->STAND:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->setGesture(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, v4}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->setGesture(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    sget-object v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->ScrollEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    goto/16 :goto_0

    :cond_b
    return v1

    :cond_c
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;

    invoke-virtual {v4}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v5

    sget-object v6, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->TouchEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    if-ne v5, v6, :cond_d

    check-cast v4, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;

    iget-object v5, v4, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->touchType:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    sget-object v6, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->down:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    if-ne v5, v6, :cond_f

    iget v6, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->fireFingerIndex:I

    if-ne v6, v2, :cond_f

    new-instance v5, Lcom/zjx/jyandroid/base/FloatPoint;

    iget v6, v4, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->x:F

    iget v7, v4, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->y:F

    invoke-direct {v5, v6, v7}, Lcom/zjx/jyandroid/base/FloatPoint;-><init>(FF)V

    iget-object v6, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->fingerMovedViewManager:Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;

    iget-object v6, v6, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->fireRegionRects:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    invoke-static {v7, v5}, Lcom/zjx/jyandroid/base/util/b;->E(Landroid/graphics/Rect;Lcom/zjx/jyandroid/base/FloatPoint;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget v7, v4, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->index:I

    iput v7, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->fireFingerIndex:I

    iget-object v7, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;

    invoke-virtual {v7, v3}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->setControlStarted(Z)V

    goto :goto_2

    :cond_f
    sget-object v6, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->up:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    if-ne v5, v6, :cond_d

    iget v5, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->fireFingerIndex:I

    iget v4, v4, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->index:I

    if-ne v5, v4, :cond_d

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;

    invoke-virtual {v4, v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->setControlStarted(Z)V

    iput v2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->fireFingerIndex:I

    goto :goto_1

    :cond_10
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->fingerMovedViewManager:Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->eventOccurred(Ljava/util/LinkedList;)Z

    move-result p1

    return p1
.end method

.method public getGesture()Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->gesture:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    return-object v0
.end method

.method public getKeymapManager()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->privateKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    return-object v0
.end method

.method public getRcPerformer()Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;

    return-object v0
.end method

.method public getSettingsCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSettingsTitle(I)Ljava/lang/String;
    .locals 0

    sget p1, Lcom/zjx/jyandroid/R$string;->general_rc_extension_text3:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSettingsViewResourceId(I)I
    .locals 0

    sget p1, Lcom/zjx/jyandroid/R$layout;->general_rc_extension_settings_view:I

    return p1
.end method

.method public isFloatingPanelHidden()Z
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->started:Z

    return v0
.end method

.method public declared-synchronized loadAdjustDynamicRCValuePanel()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->adjustDynamicRCValueView:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->unloadAdjustDynamicRCValuePanel()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/zjx/jyandroid/R$layout;->general_rc_adjust_dynamic_rc_value_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->adjustDynamicRCValueView:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x12c

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v2

    const/16 v7, 0x10e

    invoke-static {v7}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v3

    const/16 v5, 0x8

    const/4 v6, -0x3

    const/16 v4, 0x7f6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v7}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->floatingObjectManager:Ll/b;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->adjustDynamicRCValueView:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    invoke-virtual {v1, v2, v0}, Ll/b;->e(Lcom/zjx/jyandroid/base/BaseFloatingView;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->adjustDynamicRCValueView:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->adjustDynamicRCValueView:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->closeButton:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$8;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$8;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)V

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
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->adjustRCValueFloatingPanelView:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->unloadAdjustRCValuePanel()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/zjx/jyandroid/R$layout;->general_rc_adjust_rc_value_panel_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->adjustRCValueFloatingPanelView:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView;

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

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->floatingObjectManager:Ll/b;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->adjustRCValueFloatingPanelView:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView;

    invoke-virtual {v1, v2, v0}, Ll/b;->e(Lcom/zjx/jyandroid/base/BaseFloatingView;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->adjustRCValueFloatingPanelView:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->adjustRCValueFloatingPanelView:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView;->closeButton:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$6;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$6;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)V

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

    sget-object v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->RC_CONFIG_SAVED_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->RECOGNITION_ASSETS_SAVED_PATH_EXTERNAL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->RECOGNITION_ASSETS_SAVED_PATH_INTERNAL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->extensionManager:Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->registerSettingsProvider(Lcom/zjx/jyandroid/Extensions/ISettingsProvider;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->extensionManager:Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->unregisterSettingsProvider(Lcom/zjx/jyandroid/Extensions/ISettingsProvider;)V

    return-void
.end method

.method public onFloatingPanelDisplay(Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;)V
    .locals 7

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->context:Landroid/content/Context;

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

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->context:Landroid/content/Context;

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

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\u624b\u6307\u8303\u56f4"

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

    new-instance p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)V

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
    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->unloadPanel()V

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/zjx/jyandroid/base/util/b;->y()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->ShoucuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->extensionManager:Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->unregisterRootFloatingPanelModifier(Lcom/zjx/jyandroid/Extensions/IRootFloatingPanelModifier;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->unloadAdjustRCValuePanel()V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->unloadAdjustDynamicRCValuePanel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->rcConfigDataProcessor:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->unregisterEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->stop()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->started:Z
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
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;-><init>()V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;->isEnableRecoilControl()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->started:Z

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b;->y()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->ShoucuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->extensionManager:Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    invoke-virtual {v1, p0}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->registerRootFloatingPanelModifier(Lcom/zjx/jyandroid/Extensions/IRootFloatingPanelModifier;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;->CROUCH:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;->getGestureHotkeys(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->crouchKeyCode:I

    sget-object v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;->PRONE:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;->getGestureHotkeys(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->proneKeyCode:I

    sget-object v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;->STAND:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;->getGestureHotkeys(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->standKeyCode:I

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->gesture:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->loadPanel()V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->refreshFloatingPanelAlpha()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->privateKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->getRCDataBundleId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1;

    invoke-direct {v2, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)V

    invoke-virtual {v0, v1, v2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->t(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public refreshFloatingPanelAlpha()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;

    invoke-direct {v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;-><init>()V

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;->getRCPanelTransparency()I

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

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$7;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$7;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setFixPanel(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V

    :cond_0
    return-void
.end method

.method public setFloatingPanelHidden(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->floatingObjectManager:Ll/b;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;

    invoke-virtual {p1, v0}, Ll/b;->q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->floatingObjectManager:Ll/b;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->floatingPanel:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0, v1}, Ll/b;->e(Lcom/zjx/jyandroid/base/BaseFloatingView;Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setGesture(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;)V
    .locals 1

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->gesture:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->setGesture(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;)V

    :cond_0
    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->refreshPanel()V

    return-void
.end method

.method public setSelectedConfigIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->rcPerformer:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->setSelectedConfigIndex(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->refreshPanel()V

    return-void
.end method

.method public declared-synchronized unloadAdjustDynamicRCValuePanel()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->adjustDynamicRCValueView:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->floatingObjectManager:Ll/b;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->adjustDynamicRCValueView:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

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
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->adjustRCValueFloatingPanelView:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->floatingObjectManager:Ll/b;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->adjustRCValueFloatingPanelView:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView;

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
