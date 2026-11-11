.class public Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;
.super Lcom/zjx/jyandroid/base/BaseFloatingView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h;,
        Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$i;,
        Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$g;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public c:Lcom/evrencoskun/tableview/TableView;

.field public d:Landroid/widget/Button;

.field public e:Landroid/widget/Button;

.field public f:Landroid/widget/LinearLayout;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->a:I

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->b:I

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->j:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->k:Ljava/util/ArrayList;

    .line 5
    const-string p1, ""

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->l:Ljava/lang/String;

    .line 6
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$a;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->m:Ljava/lang/Runnable;

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

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->a:I

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->b:I

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->j:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->k:Ljava/util/ArrayList;

    .line 11
    const-string p1, ""

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->l:Ljava/lang/String;

    .line 12
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$a;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->m:Ljava/lang/Runnable;

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

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->a:I

    const/4 p1, 0x1

    .line 15
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->b:I

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->j:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->k:Ljava/util/ArrayList;

    .line 17
    const-string p1, ""

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->l:Ljava/lang/String;

    .line 18
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$a;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->m:Ljava/lang/Runnable;

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

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->a:I

    const/4 p1, 0x1

    .line 21
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->b:I

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->j:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->k:Ljava/util/ArrayList;

    .line 23
    const-string p1, ""

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->l:Ljava/lang/String;

    .line 24
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$a;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->m:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->l:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->j:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic c(Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->j:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic d(Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->k:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic e(Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->k:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic f(Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->h(I)V

    return-void
.end method

.method public static synthetic g(Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->i:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public final h(I)V
    .locals 9

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->c:Lcom/evrencoskun/tableview/TableView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;I)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->c:Lcom/evrencoskun/tableview/TableView;

    invoke-virtual {v1, v0}, Lcom/evrencoskun/tableview/TableView;->setAdapter(Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->c:Lcom/evrencoskun/tableview/TableView;

    new-instance v2, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$i;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$i;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$a;)V

    invoke-virtual {v1, v2}, Lcom/evrencoskun/tableview/TableView;->setTableViewListener(Lcom/evrencoskun/tableview/listener/ITableViewListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->c:Lcom/evrencoskun/tableview/TableView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v2}, Lcom/evrencoskun/tableview/TableView;->setSelectedCell(II)V

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$g;

    invoke-direct {v5, p0, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$g;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$a;)V

    iget-object v6, v2, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->name:Ljava/lang/String;

    iput-object v6, v5, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$g;->a:Ljava/lang/String;

    iget v6, v2, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->componentCount:I

    iput v6, v5, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$g;->b:I

    iget-object v6, v2, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;->updateTime:Ljava/lang/String;

    iput-object v6, v5, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$g;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->l:Ljava/lang/String;

    iget-object v7, v2, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$g;->d:Z

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$g;->e:Z

    iget-object v2, v2, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;->id:Ljava/lang/String;

    iput-object v2, v5, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$g;->f:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->setCellItems(Ljava/util/List;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->d:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->setSelectedPanelButton(Landroid/widget/Button;)V

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$g;

    invoke-direct {v6, p0, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$g;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$a;)V

    iget-object v7, v4, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->name:Ljava/lang/String;

    iput-object v7, v6, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$g;->a:Ljava/lang/String;

    iget v7, v4, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->componentCount:I

    iput v7, v6, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$g;->b:I

    iget-object v7, v4, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;->updateTime:Ljava/lang/String;

    iput-object v7, v6, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$g;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->l:Ljava/lang/String;

    iget-object v8, v4, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, v6, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$g;->d:Z

    iput-boolean v1, v6, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$g;->e:Z

    iget-object v4, v4, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;->id:Ljava/lang/String;

    iput-object v4, v6, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$g;->f:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->setCellItems(Ljava/util/List;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->e:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->setSelectedPanelButton(Landroid/widget/Button;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->onFinishInflate()V

    sget v0, Lcom/zjx/jyandroid/R$id;->tableViewContainer:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evrencoskun/tableview/TableView;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->c:Lcom/evrencoskun/tableview/TableView;

    sget v0, Lcom/zjx/jyandroid/R$id;->officialKeymapButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->d:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->customKeymapButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->e:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->doneTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->g:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->createKeymapTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->h:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->importKeymapTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->i:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->sidePanelLayout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->g:Landroid/widget/TextView;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$b;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$b;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$c;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$c;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$d;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$d;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->d:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$e;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$e;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->e:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$f;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$f;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->m:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSelectedPanelButton(Landroid/widget/Button;)V
    .locals 6

    sget v0, Lcom/zjx/jyandroid/R$color;->jy_blue_1:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v0

    const/16 v1, 0xe6

    const/16 v2, 0xfc

    const/16 v3, 0xe1

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/widget/Button;

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    check-cast v4, Landroid/widget/Button;

    if-ne v4, p1, :cond_1

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
