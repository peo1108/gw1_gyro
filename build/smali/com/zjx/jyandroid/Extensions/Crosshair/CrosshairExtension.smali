.class public Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/Extensions/IExtension;
.implements Lcom/zjx/jyandroid/Extensions/ISettingsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$CrosshairType;
    }
.end annotation


# instance fields
.field crosshairUserSettings:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;

.field currentCrosshairView:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;

.field mainHandler:Landroid/os/Handler;

.field private messageReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->crosshairUserSettings:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$1;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$1;-><init>(Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->messageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public getSettingsCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSettingsTitle(I)Ljava/lang/String;
    .locals 0

    sget p1, Lcom/zjx/jyandroid/R$string;->cross_hair_extension_text1:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSettingsViewResourceId(I)I
    .locals 0

    sget p1, Lcom/zjx/jyandroid/R$layout;->crosshair_settings_view:I

    return p1
.end method

.method public declared-synchronized hideCrosshairView()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->currentCrosshairView:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/16 v1, 0x8

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized loadCrosshairView()V
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->currentCrosshairView:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->unloadCrosshairView()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->crosshairUserSettings:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->getType()Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$CrosshairType;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->crosshairUserSettings:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->getColor()I

    move-result v1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->crosshairUserSettings:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->getSize()I

    move-result v2

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->crosshairUserSettings:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;

    invoke-virtual {v3}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->getVerticalOffset()I

    move-result v3

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->crosshairUserSettings:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;

    invoke-virtual {v4}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->getHorizontalOffset()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v5, 0x1

    if-eq v0, v5, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    const/4 v5, 0x4

    if-eq v0, v5, :cond_1

    new-instance v0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewCircle;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewCircle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->currentCrosshairView:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewDrawable;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/zjx/jyandroid/R$drawable;->ic_crosshair5:I

    invoke-direct {v0, v5, v6}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->currentCrosshairView:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewDrawable;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/zjx/jyandroid/R$drawable;->ic_crosshair4:I

    invoke-direct {v0, v5, v6}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->currentCrosshairView:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewDrawable;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/zjx/jyandroid/R$drawable;->ic_crosshair3:I

    invoke-direct {v0, v5, v6}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->currentCrosshairView:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewDrawable;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/zjx/jyandroid/R$drawable;->ic_crosshair2:I

    invoke-direct {v0, v5, v6}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->currentCrosshairView:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewDrawable;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/zjx/jyandroid/R$drawable;->ic_crosshair1:I

    invoke-direct {v0, v5, v6}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->currentCrosshairView:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;

    :goto_1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v8

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->currentCrosshairView:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;

    invoke-virtual {v5}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;->getPreferredWHRatio()F

    move-result v5

    div-float/2addr v2, v5

    float-to-int v9, v2

    const/16 v11, 0x18

    const/4 v12, -0x3

    const/16 v10, 0x7f6

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->currentCrosshairView:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;

    invoke-virtual {v2, v1}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;->setColor(I)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->currentCrosshairView:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;

    invoke-virtual {v1, v2, v0}, Ll/b;->e(Lcom/zjx/jyandroid/base/BaseFloatingView;Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCreate()V
    .locals 1

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->registerSettingsProvider(Lcom/zjx/jyandroid/Extensions/ISettingsProvider;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->unregisterSettingsProvider(Lcom/zjx/jyandroid/Extensions/ISettingsProvider;)V

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

.method public onPause()V
    .locals 2

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->messageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->unloadCrosshairView()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->refresh()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.zjx.jyandroid.extension.shared.onAimingStatusChanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->messageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public declared-synchronized refresh()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->crosshairUserSettings:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->currentCrosshairView:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->unloadCrosshairView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->loadCrosshairView()V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->refreshCrosshairAutoHiddenListenerRegisterState()V
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

.method public refreshCrosshairAutoHiddenListenerRegisterState()V
    .locals 0

    return-void
.end method

.method public refreshSize()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->currentCrosshairView:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/zjx/jyandroid/base/BaseFloatingView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->crosshairUserSettings:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->getSize()I

    move-result v1

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->currentCrosshairView:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;->getPreferredWHRatio()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->currentCrosshairView:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->updateWindowParams(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public declared-synchronized showCrosshairView()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->currentCrosshairView:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized unloadCrosshairView()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->currentCrosshairView:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->currentCrosshairView:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;

    invoke-virtual {v0, v1}, Ll/b;->q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->currentCrosshairView:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
