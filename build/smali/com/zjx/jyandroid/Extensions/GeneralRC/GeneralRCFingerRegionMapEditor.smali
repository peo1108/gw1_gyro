.class public Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$ActionHandler;
    }
.end annotation


# static fields
.field private static final KEYMAP_FORMAT_VERSION:Ljava/lang/String; = "0.0.2"


# instance fields
.field public actionHandler:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$ActionHandler;

.field blockUnselectComponent:Z

.field private componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

.field private mapPanelView:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;

.field private restartTrackerWhenExit:Z

.field private selectedComponent:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->blockUnselectComponent:Z

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->restartTrackerWhenExit:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->addOneFingerRegionComponent(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->addOneFireRegionComponent(Landroid/graphics/Rect;)V

    return-void
.end method

.method private addOneFingerRegionComponent(Landroid/graphics/Rect;)V
    .locals 2

    new-instance v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RecognitionMapComponents/FingerRegionComponent;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RecognitionMapComponents/FingerRegionComponent;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->addComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    return-void
.end method

.method private addOneFireRegionComponent(Landroid/graphics/Rect;)V
    .locals 2

    new-instance v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RecognitionMapComponents/FireRegionComponent;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RecognitionMapComponents/FireRegionComponent;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->addComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    return-void
.end method


# virtual methods
.method public addComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->disableDeleteButton:Z

    new-instance v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$4;

    invoke-direct {v0, p0, p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$4;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->addOnTouchHandler(Lcom/zjx/jyandroid/base/Interfaces/MView$OnTouchHandler;)V

    return-void
.end method

.method public addComponentsAtDefaultPlaces()V
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0xc8

    const/16 v2, 0x1f4

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->addOneFingerRegionComponent(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x12c

    const/16 v3, 0x384

    const/16 v4, 0x2bc

    invoke-direct {v0, v4, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->addOneFireRegionComponent(Landroid/graphics/Rect;)V

    return-void
.end method

.method public applyKeymapToComponentsHolderView(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->clear()V

    return-void

    :cond_0
    const-string v0, "version"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lcom/zjx/jyandroid/base/util/a;

    const-string v1, "\u65e0\u6cd5\u83b7\u53d6\u6620\u5c04\u56fe\u7248\u672c\u4fe1\u606f\u3002\u70b9\u51fb\u4fdd\u5b58\u53ef\u80fd\u5bfc\u81f4\u90e8\u5206\u6620\u5c04\u56fe\u4fe1\u606f\u7684\u4e22\u5931\u3002"

    sget-object v2, Lcom/zjx/jyandroid/base/util/ToastView$a;->d:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/util/a;->a()V

    goto :goto_0

    :cond_1
    new-instance v1, Lio/github/g00fy2/versioncompare/Version;

    const-string v2, "0.0.2"

    invoke-direct {v1, v2}, Lio/github/g00fy2/versioncompare/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lio/github/g00fy2/versioncompare/Version;->isLowerThan(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/zjx/jyandroid/base/util/a;

    const-string v1, "\u6620\u5c04\u56fe\u7248\u672c\u9ad8\u4e8e\u672c\u8f6f\u4ef6\u7248\u672c\u3002\u53ef\u80fd\u5bfc\u81f4\u6620\u5c04\u56fe\u90e8\u5206\u4fe1\u606f\u65e0\u6cd5\u52a0\u8f7d\u3002"

    sget-object v2, Lcom/zjx/jyandroid/base/util/ToastView$a;->d:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/util/a;->a()V

    goto :goto_0

    :cond_2
    new-instance v1, Lio/github/g00fy2/versioncompare/Version;

    invoke-direct {v1, v2}, Lio/github/g00fy2/versioncompare/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lio/github/g00fy2/versioncompare/Version;->isHigherThan(Ljava/lang/String;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->clear()V

    const-string v0, "fingerRegionComponents"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractList;

    const-string v1, "\u6709\u90e8\u5206\u6620\u5c04\u70b9\u65e0\u6cd5\u663e\u793a\uff0c\u53ef\u80fd\u56e0\u4e3a\u6b64\u6e38\u620f\u5385\u7248\u672c\u8fc7\u4f4e"

    const-string v2, "\u6620\u5c04\u56fe\u9519\u8bef\u3002componentInfo: "

    const-string v3, "\u6709\u90e8\u5206\u6620\u5c04\u70b9\u65e0\u6cd5\u663e\u793a"

    const-string v4, ". Error: "

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    :try_start_0
    new-instance v6, Lr/e;

    invoke-direct {v6}, Lr/e;-><init>()V

    invoke-virtual {v6, v5}, Lr/e;->e(Ljava/util/Map;)V

    invoke-virtual {v6}, Lr/e;->b()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->addOneFingerRegionComponent(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_2

    :catch_1
    move-exception v6

    goto :goto_3

    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u6620\u5c04\u56fe\u9519\u8bef\u3002fingerRegionComponent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ly/c;->b(Ljava/lang/String;)V

    new-instance v5, Lcom/zjx/jyandroid/base/util/a;

    sget-object v6, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v5, v3, v6}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v5}, Lcom/zjx/jyandroid/base/util/a;->a()V

    goto :goto_1

    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ly/c;->b(Ljava/lang/String;)V

    new-instance v5, Lcom/zjx/jyandroid/base/util/a;

    sget-object v6, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v5, v1, v6}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v5}, Lcom/zjx/jyandroid/base/util/a;->a()V

    goto :goto_1

    :cond_3
    const-string v0, "fireRegionComponents"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/AbstractList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :try_start_1
    new-instance v5, Lr/e;

    invoke-direct {v5}, Lr/e;-><init>()V

    invoke-virtual {v5, v0}, Lr/e;->e(Ljava/util/Map;)V

    invoke-virtual {v5}, Lr/e;->b()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->addOneFireRegionComponent(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception v5

    goto :goto_5

    :catch_3
    move-exception v5

    goto :goto_6

    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6620\u5c04\u56fe\u9519\u8bef\u3002fireRegionComponent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/zjx/jyandroid/base/util/a;

    sget-object v5, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v0, v3, v5}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/util/a;->a()V

    goto :goto_4

    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/zjx/jyandroid/base/util/a;

    sget-object v5, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v0, v1, v5}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/util/a;->a()V

    goto :goto_4

    :cond_4
    return-void
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    return-void
.end method

.method public deleteComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 4

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->selectedComponent:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->setSelectedComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    :cond_0
    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->getComponentViews()[Landroid/view/View;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getKeymapComponentData()Ljava/util/Map;
    .locals 7
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

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "version"

    const-string v4, "0.0.2"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6211\u7684\u6620\u5c04"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/zjx/jyandroid/base/util/b$h;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/zjx/jyandroid/base/util/b$h;-><init>(I)V

    invoke-virtual {v4}, Lcom/zjx/jyandroid/base/util/b$h;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "fingerRegionComponents"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "fireRegionComponents"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lj/d;

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    instance-of v5, v4, Lcom/zjx/jyandroid/Extensions/GeneralRC/RecognitionMapComponents/FingerRegionComponent;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    new-instance v5, Lr/e;

    invoke-direct {v5}, Lr/e;-><init>()V

    invoke-virtual {v5, v4}, Lr/e;->d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    invoke-virtual {v5}, Lr/e;->f()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    instance-of v5, v4, Lcom/zjx/jyandroid/Extensions/GeneralRC/RecognitionMapComponents/FireRegionComponent;

    if-eqz v5, :cond_2

    check-cast v4, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    new-instance v5, Lr/e;

    invoke-direct {v5}, Lr/e;-><init>()V

    invoke-virtual {v5, v4}, Lr/e;->d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    invoke-virtual {v5}, Lr/e;->f()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public load()V
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->setDefaultEventReceiverEnabled(Z)V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v1

    const-class v3, Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {v1, v3}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v1

    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    sget v4, Lcom/zjx/jyandroid/R$layout;->components_holder_view:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    iput-object v4, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    sget v4, Lcom/zjx/jyandroid/R$layout;->general_rc_map_panel_view:I

    new-instance v5, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;

    invoke-direct {v5, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;

    iput-object v1, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->i()Landroid/util/Size;

    move-result-object v1

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v2

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-static {}, Ll/b;->i()I

    move-result v1

    or-int/lit8 v9, v1, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v8, 0x33

    invoke-virtual/range {v2 .. v9}, Ll/b;->d(Lcom/zjx/jyandroid/base/BaseFloatingView;IIIIII)V

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v10

    iget-object v11, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;

    const/4 v15, -0x2

    const/16 v16, 0x31

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-virtual/range {v10 .. v16}, Ll/b;->c(Lcom/zjx/jyandroid/base/BaseFloatingView;IIIII)V

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;

    new-instance v2, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$1;

    invoke-direct {v2, v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$1;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;)V

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;->setMapPanelViewAdapter(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView$MapPanelViewAdapter;)V

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    new-instance v2, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$2;

    invoke-direct {v2, v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$2;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;)V

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setOnConfigurationChangedListener(Lcom/zjx/jyandroid/base/Interfaces/MView$OnViewConfigurationChangedListener;)V

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    new-instance v2, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$3;

    invoke-direct {v2, v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$3;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setSelectedComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->selectedComponent:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setSelected(Z)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setSelected(Z)V

    :cond_1
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->selectedComponent:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    return-void
.end method

.method public unload()V
    .locals 2

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;

    invoke-virtual {v0, v1}, Ll/b;->q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v0, v1}, Ll/b;->q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->mapPanelView:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->componentsHolderView:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->restartTrackerWhenExit:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v0

    const-class v1, Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->V()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->restartTrackerWhenExit:Z

    :cond_0
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->setDefaultEventReceiverEnabled(Z)V

    return-void
.end method
