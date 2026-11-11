.class public Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$FixConfigCompletionHandler;,
        Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;,
        Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$RCDataManageCellDataModel;
    }
.end annotation


# static fields
.field private static BUNDLE_ID:Ljava/lang/String;


# instance fields
.field createConfigButton:Landroid/widget/Button;

.field fixConfigButton:Landroid/widget/Button;

.field importConfigButton:Landroid/widget/Button;

.field loadingIndicator:Landroid/view/View;

.field public privateKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

.field tableView:Lcom/evrencoskun/tableview/TableView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->rcConfigBundleId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->BUNDLE_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object p1

    const-class v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    .line 3
    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->getPrivateKeymapManager()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->privateKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object p1

    const-class p2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    .line 6
    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->getPrivateKeymapManager()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->privateKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object p1

    const-class p2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    .line 9
    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->getPrivateKeymapManager()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->privateKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 11
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object p1

    const-class p2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    .line 12
    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->getPrivateKeymapManager()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->privateKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->refreshList()V

    return-void
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->BUNDLE_ID:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->clearTableViewAndShowLoadingIndicator()V

    return-void
.end method

.method public static synthetic access$400(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;Ljava/lang/String;Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$FixConfigCompletionHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->fixConfigByShareCode(Ljava/lang/String;Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$FixConfigCompletionHandler;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->hideLoadingIndicator()V

    return-void
.end method

.method private clearTableViewAndShowLoadingIndicator()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->loadingIndicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->tableView:Lcom/evrencoskun/tableview/TableView;

    invoke-virtual {v0}, Lcom/evrencoskun/tableview/TableView;->getAdapter()Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->setCellItems(Ljava/util/List;)V

    return-void
.end method

.method private fixConfigByShareCode(Ljava/lang/String;Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$FixConfigCompletionHandler;)V
    .locals 10

    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string v2, "reason"

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    new-instance p1, Lcom/zjx/jyandroid/base/MError;

    new-instance v3, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-string v4, "\u5206\u4eab\u7801\u4e3a\u7a7a"

    invoke-direct {v3, v2, v4}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "NullPointerError"

    invoke-direct {p1, v2, v0, v3}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p2, p1, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$FixConfigCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;

    move-result-object v3

    iget-boolean v3, v3, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->alreadyLogin:Z

    if-nez v3, :cond_3

    if-eqz p2, :cond_2

    new-instance p1, Lcom/zjx/jyandroid/base/MError;

    new-instance v3, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-string v4, "\u8bf7\u5148\u767b\u9646"

    invoke-direct {v3, v2, v4}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "LoginRequired"

    invoke-direct {p1, v2, v0, v3}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p2, p1, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$FixConfigCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://121.41.85.22:8888/v2/recoil_control/config/fix/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :try_start_0
    new-instance p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$3;

    new-instance v8, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$1;

    invoke-direct {v8, p0, p2}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$FixConfigCompletionHandler;)V

    new-instance v9, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$2;

    invoke-direct {v9, p0, p2}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$2;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$FixConfigCompletionHandler;)V

    const/4 v6, 0x1

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$3;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;

    move-result-object v0

    const/16 v3, 0x1b58

    invoke-virtual {v0, p1, v3, p0}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->addTaskToQueue(Lcom/android/volley/Request;ILjava/lang/Object;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zjx/jyandroid/base/MError;

    sget v3, Lcom/zjx/jyandroid/R$integer;->run_time_error:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->q(I)I

    move-result v3

    new-instance v4, Lcom/zjx/jyandroid/base/SingleElementMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u539f\u56e0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v2, p1}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "RuntimeError"

    invoke-direct {v0, p1, v3, v4}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p2, v0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$FixConfigCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private hideLoadingIndicator()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->loadingIndicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private refreshList()V
    .locals 3

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->clearTableViewAndShowLoadingIndicator()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->privateKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->BUNDLE_ID:Ljava/lang/String;

    new-instance v2, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$8;

    invoke-direct {v2, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$8;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;)V

    invoke-virtual {v0, v1, v2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->t(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;)V

    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    sget v0, Lcom/zjx/jyandroid/R$id;->tableView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evrencoskun/tableview/TableView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->tableView:Lcom/evrencoskun/tableview/TableView;

    sget v0, Lcom/zjx/jyandroid/R$id;->createConfigButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->createConfigButton:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->importConfigButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->importConfigButton:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->fixConfigButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->fixConfigButton:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->loadingIndicator:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->loadingIndicator:Landroid/view/View;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->privateKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->createConfigButton:Landroid/widget/Button;

    new-instance v2, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$4;

    invoke-direct {v2, p0, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$4;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;Lcom/zjx/jyandroid/ForegroundService/KeymapManager;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->importConfigButton:Landroid/widget/Button;

    new-instance v2, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$5;

    invoke-direct {v2, p0, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$5;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;Lcom/zjx/jyandroid/ForegroundService/KeymapManager;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->tableView:Lcom/evrencoskun/tableview/TableView;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$6;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$6;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->fixConfigButton:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$7;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$7;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
