.class public Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;,
        Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;,
        Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$AimingStatusTracker;,
        Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GestureStatusTracker;,
        Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponSlotTracker;,
        Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;,
        Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;,
        Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;,
        Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnCurrentWeaponChangedListener;
    }
.end annotation


# instance fields
.field accessoryComponentSize:I

.field public aimRect:Landroid/graphics/Rect;

.field aimingStatusTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$AimingStatusTracker;

.field private collectImageMode:Z

.field public crouchRect:Landroid/graphics/Rect;

.field currentAccessoryTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;

.field currentWeapon:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

.field currentWeaponSlotTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponSlotTracker;

.field currentWeaponTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;

.field public firstWeaponAccessoryRectCustom:Landroid/graphics/Rect;
    .annotation build Landroidx/test/annotation/Beta;
    .end annotation
.end field

.field public firstWeaponRect:Landroid/graphics/Rect;

.field gestureStatusTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GestureStatusTracker;

.field gnyxUserSettings:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

.field private onStatusChangeListener:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;

.field pictureCollector:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;

.field screenCaptureManager:Lcom/zjx/jyandroid/ScreenCaptureManager;

.field public secondWeaponAccessoryRectCustom:Landroid/graphics/Rect;
    .annotation build Landroidx/test/annotation/Beta;
    .end annotation
.end field

.field public secondWeaponRect:Landroid/graphics/Rect;

.field private started:Z

.field weapon1:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

.field weapon2:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

.field weaponComponentSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/ScreenCaptureManager;->sharedInstance()Lcom/zjx/jyandroid/ScreenCaptureManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->screenCaptureManager:Lcom/zjx/jyandroid/ScreenCaptureManager;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->gnyxUserSettings:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->collectImageMode:Z

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon1:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon2:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->currentWeapon:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    return-void
.end method

.method public static synthetic access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->onStatusChangeListener:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->started:Z

    return p0
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->getWeaponAndScopeRecognitionAssetsPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$300(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->getCurrentWeaponSlot()Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->getAccessoryRecognitionAssetsPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAccessoryRecognitionAssetsPath()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;-><init>()V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->getRecognitionAssetsPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getCopiesAssetsFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/gnyxExtension/accessories"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/accessories"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getCurrentWeaponSlot()Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->currentWeapon:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon1:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;->SLOT_1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon2:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;->SLOT_2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    return-object v0

    :cond_1
    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;->NONE:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    return-object v0
.end method

.method private static getWeaponAndScopeRecognitionAssetsPath()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;-><init>()V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->getRecognitionAssetsPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->i()Landroid/util/Size;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getCopiesAssetsFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/gnyxExtension/weapons/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAimingStatusTracker()Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$AimingStatusTracker;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->aimingStatusTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$AimingStatusTracker;

    return-object v0
.end method

.method public getOnStatusChangeListener()Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->onStatusChangeListener:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;

    return-object v0
.end method

.method public isCollectImageMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->collectImageMode:Z

    return v0
.end method

.method public setCollectImageMode(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->started:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->collectImageMode:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unable to set collect image mode while starting. Please stop first"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCurrentWeapon(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;)V
    .locals 1

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->currentWeapon:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->started:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->onStatusChangeListener:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->weaponType:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    invoke-interface {v0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;->onCurrentWeaponChanged(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->onStatusChangeListener:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->Empty:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    invoke-interface {p1, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;->onCurrentWeaponChanged(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnStatusChangeListener(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->onStatusChangeListener:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;

    return-void
.end method

.method public declared-synchronized start()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->started:Z

    iget-boolean v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->collectImageMode:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GestureStatusTracker;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GestureStatusTracker;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->gestureStatusTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GestureStatusTracker;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->gestureStatusTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GestureStatusTracker;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$AimingStatusTracker;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$AimingStatusTracker;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->aimingStatusTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$AimingStatusTracker;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->aimingStatusTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$AimingStatusTracker;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponSlotTracker;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponSlotTracker;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->currentWeaponSlotTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponSlotTracker;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->currentWeaponSlotTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponSlotTracker;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->currentWeaponTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->currentWeaponTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->currentAccessoryTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->currentAccessoryTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;

    const-string v2, "gnyxExtensionWeaponImageCollectionThread"

    invoke-direct {v1, p0, v2, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->pictureCollector:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->started:Z

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon1:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon2:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->collectImageMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->gestureStatusTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GestureStatusTracker;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->aimingStatusTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$AimingStatusTracker;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->currentWeaponSlotTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponSlotTracker;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->currentWeaponTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->currentAccessoryTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->currentWeaponSlotTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponSlotTracker;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->gestureStatusTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GestureStatusTracker;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->aimingStatusTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$AimingStatusTracker;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->currentWeaponTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->currentAccessoryTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->pictureCollector:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;->quit()Z

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->pictureCollector:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public touchEventOccurred(Ljava/util/LinkedList;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/base/InputEvents/InputEvent;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public updateKeymap(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "components"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    :try_start_0
    const-string v2, "type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    new-instance v3, Lr/e;

    invoke-direct {v3}, Lr/e;-><init>()V

    invoke-virtual {v3, v1}, Lr/e;->e(Ljava/util/Map;)V

    invoke-virtual {v3}, Lr/e;->b()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->aimRect:Landroid/graphics/Rect;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->crouchRect:Landroid/graphics/Rect;

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->firstWeaponRect:Landroid/graphics/Rect;

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->secondWeaponRect:Landroid/graphics/Rect;

    goto :goto_0

    :cond_5
    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->firstWeaponAccessoryRectCustom:Landroid/graphics/Rect;

    goto :goto_0

    :cond_6
    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->secondWeaponAccessoryRectCustom:Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$1;

    invoke-direct {v3, p0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;Ljava/lang/Exception;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_7
    const-string v0, "weaponSize"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    const-string v1, "accessorySize"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    const/16 v1, 0x41

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weaponComponentSize:I

    goto :goto_2

    :cond_8
    iput v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weaponComponentSize:I

    :goto_2
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->accessoryComponentSize:I

    goto :goto_3

    :cond_9
    iput v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->accessoryComponentSize:I

    :goto_3
    return-void
.end method
