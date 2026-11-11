.class public Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;
.super Lcom/zjx/jyandroid/base/BaseFloatingView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$c;,
        Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e;,
        Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$d;
    }
.end annotation


# instance fields
.field public a:Lcom/evrencoskun/tableview/TableView;

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;)V

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

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic a(Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;->c()V

    return-void
.end method

.method public static synthetic b(Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;)Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$c;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;->g:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$c;

    return-object p0
.end method

.method private synthetic c()V
    .locals 0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;->d()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 4

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;I)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;->a:Lcom/evrencoskun/tableview/TableView;

    invoke-virtual {v1, v0}, Lcom/evrencoskun/tableview/TableView;->setAdapter(Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->J()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".PresetRecognitionMaps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$b;

    invoke-direct {v3, p0, v0}, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$b;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e;)V

    invoke-virtual {v1, v2, v3}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->o(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$SearchAndGetConfigContentByCharacteristicCompletionHandler;)V

    return-void
.end method

.method public getAdapter()Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$c;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;->g:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$c;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->onFinishInflate()V

    sget v0, Lcom/zjx/jyandroid/R$id;->tableView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evrencoskun/tableview/TableView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;->a:Lcom/evrencoskun/tableview/TableView;

    sget v0, Lcom/zjx/jyandroid/R$id;->addButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;->b:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->cancelButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;->e:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->contentView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;->c:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->loadingIndicator:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;->d:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->importButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;->a:Lcom/evrencoskun/tableview/TableView;

    new-instance v1, Le/a;

    invoke-direct {v1, p0}, Le/a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;->f:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$a;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setAdapter(Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;->g:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$c;

    return-void
.end method
