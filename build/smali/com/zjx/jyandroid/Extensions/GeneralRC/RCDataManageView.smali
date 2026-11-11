.class public Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter;,
        Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$RCDataManageCellDataModel;
    }
.end annotation


# instance fields
.field createConfigButton:Landroid/widget/Button;

.field importConfigButton:Landroid/widget/Button;

.field loadingIndicator:Landroid/view/View;

.field public pubgRelatedKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

.field tableView:Lcom/evrencoskun/tableview/TableView;


# direct methods
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

    const-class v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    .line 3
    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->getKeymapManager()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;->pubgRelatedKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

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

    const-class p2, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    .line 6
    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->getKeymapManager()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;->pubgRelatedKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

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

    const-class p2, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    .line 9
    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->getKeymapManager()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;->pubgRelatedKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

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

    const-class p2, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    .line 12
    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->getKeymapManager()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;->pubgRelatedKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;->refreshList()V

    return-void
.end method

.method public static synthetic access$200(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;->clearTableViewAndShowLoadingIndicator()V

    return-void
.end method

.method public static synthetic access$400(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;->hideLoadingIndicator()V

    return-void
.end method

.method private clearTableViewAndShowLoadingIndicator()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;->loadingIndicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;->tableView:Lcom/evrencoskun/tableview/TableView;

    invoke-virtual {v0}, Lcom/evrencoskun/tableview/TableView;->getAdapter()Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->setCellItems(Ljava/util/List;)V

    return-void
.end method

.method private hideLoadingIndicator()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;->loadingIndicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private refreshList()V
    .locals 3

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;->clearTableViewAndShowLoadingIndicator()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;->pubgRelatedKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->getRCDataBundleId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$4;

    invoke-direct {v2, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$4;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;)V

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

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;->tableView:Lcom/evrencoskun/tableview/TableView;

    sget v0, Lcom/zjx/jyandroid/R$id;->createConfigButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;->createConfigButton:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->importConfigButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;->importConfigButton:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->loadingIndicator:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;->loadingIndicator:Landroid/view/View;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;->pubgRelatedKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;->createConfigButton:Landroid/widget/Button;

    new-instance v2, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$1;

    invoke-direct {v2, p0, v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$1;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;Lcom/zjx/jyandroid/ForegroundService/KeymapManager;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;->importConfigButton:Landroid/widget/Button;

    new-instance v2, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$2;

    invoke-direct {v2, p0, v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$2;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;Lcom/zjx/jyandroid/ForegroundService/KeymapManager;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;->tableView:Lcom/evrencoskun/tableview/TableView;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$3;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$3;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
