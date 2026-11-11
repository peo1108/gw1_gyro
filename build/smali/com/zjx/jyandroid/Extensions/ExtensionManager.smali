.class public Lcom/zjx/jyandroid/Extensions/ExtensionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/Extensions/IRootFloatingPanelModifier;
.implements Lcom/zjx/jyandroid/Extensions/ISettingsProvider;


# static fields
.field static instance:Lcom/zjx/jyandroid/Extensions/ExtensionManager;


# instance fields
.field private existingExtensions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/zjx/jyandroid/Extensions/IExtension;",
            ">;"
        }
    .end annotation
.end field

.field private lastBundleId:Ljava/lang/String;

.field rootFloatingPanelModifiers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/zjx/jyandroid/Extensions/IRootFloatingPanelModifier;",
            ">;"
        }
    .end annotation
.end field

.field settingsPageCount:I

.field settingsProviders:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/zjx/jyandroid/Extensions/ISettingsProvider;",
            ">;"
        }
    .end annotation
.end field

.field startedExtensions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/zjx/jyandroid/Extensions/IExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->lastBundleId:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->rootFloatingPanelModifiers:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->settingsProviders:Ljava/util/HashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->existingExtensions:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->startedExtensions:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->settingsPageCount:I

    return-void
.end method

.method private notifyExtensionLoaded(Lcom/zjx/jyandroid/Extensions/IExtension;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->existingExtensions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/Extensions/IExtension;

    invoke-interface {v1, p1}, Lcom/zjx/jyandroid/Extensions/IExtension;->onNewExtensionLoaded(Lcom/zjx/jyandroid/Extensions/IExtension;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->instance:Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;-><init>()V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->instance:Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    :cond_0
    sget-object v0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->instance:Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    return-object v0
.end method


# virtual methods
.method public getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->existingExtensions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/Extensions/IExtension;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSettingsCount()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->settingsPageCount:I

    return v0
.end method

.method public getSettingsTitle(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->settingsProviders:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/ISettingsProvider;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/zjx/jyandroid/Extensions/ISettingsProvider;->getSettingsTitle(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSettingsViewResourceId(I)I
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->settingsProviders:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/ISettingsProvider;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/zjx/jyandroid/Extensions/ISettingsProvider;->getSettingsViewResourceId(I)I

    move-result p1

    return p1
.end method

.method public getStartedExtensions()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/zjx/jyandroid/Extensions/IExtension;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->startedExtensions:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public onFloatingPanelDisplay(Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->rootFloatingPanelModifiers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/Extensions/IRootFloatingPanelModifier;

    invoke-interface {v1, p1}, Lcom/zjx/jyandroid/Extensions/IRootFloatingPanelModifier;->onFloatingPanelDisplay(Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerRootFloatingPanelModifier(Lcom/zjx/jyandroid/Extensions/IRootFloatingPanelModifier;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->rootFloatingPanelModifiers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerSettingsProvider(Lcom/zjx/jyandroid/Extensions/ISettingsProvider;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->settingsProviders:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->settingsProviders:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->settingsPageCount:I

    invoke-interface {p1}, Lcom/zjx/jyandroid/Extensions/ISettingsProvider;->getSettingsCount()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->settingsPageCount:I

    return-void
.end method

.method public declared-synchronized start(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->lastBundleId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->existingExtensions:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->existingExtensions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/Extensions/IExtension;

    invoke-interface {v2}, Lcom/zjx/jyandroid/Extensions/IExtension;->onDestroy()V

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zjx/jyandroid/Extensions/IExtension;

    invoke-interface {v4, v2}, Lcom/zjx/jyandroid/Extensions/IExtension;->onNewExtensionUnloaded(Lcom/zjx/jyandroid/Extensions/IExtension;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->existingExtensions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-direct {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;-><init>()V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->onCreate()V

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->notifyExtensionLoaded(Lcom/zjx/jyandroid/Extensions/IExtension;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->existingExtensions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v0, "com.tencent.tmgp.gnyx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-direct {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;-><init>()V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->onCreate()V

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->notifyExtensionLoaded(Lcom/zjx/jyandroid/Extensions/IExtension;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->existingExtensions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-direct {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;-><init>()V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->onCreate()V

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->notifyExtensionLoaded(Lcom/zjx/jyandroid/Extensions/IExtension;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->existingExtensions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance p1, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;

    invoke-direct {p1}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;-><init>()V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->onCreate()V

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->notifyExtensionLoaded(Lcom/zjx/jyandroid/Extensions/IExtension;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->existingExtensions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->existingExtensions:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/IExtension;

    invoke-interface {v0}, Lcom/zjx/jyandroid/Extensions/IExtension;->onResume()V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->startedExtensions:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_5
    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->startedExtensions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/Extensions/IExtension;

    invoke-interface {v1}, Lcom/zjx/jyandroid/Extensions/IExtension;->onPause()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->startedExtensions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
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

.method public unregisterRootFloatingPanelModifier(Lcom/zjx/jyandroid/Extensions/IRootFloatingPanelModifier;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->rootFloatingPanelModifiers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterSettingsProvider(Lcom/zjx/jyandroid/Extensions/ISettingsProvider;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->settingsProviders:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->settingsProviders:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->settingsPageCount:I

    invoke-interface {p1}, Lcom/zjx/jyandroid/Extensions/ISettingsProvider;->getSettingsCount()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->settingsPageCount:I

    return-void
.end method
