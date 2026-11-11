.class Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->refreshList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$8;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/util/LinkedList;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zjx/jyandroid/base/MError;",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance p2, Lcom/zjx/jyandroid/base/util/a;

    const-wide/16 v0, 0xfa0

    sget-object p3, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    const-string v2, "\u5237\u65b0\u5217\u8868\u5931\u8d25"

    invoke-direct {p2, v2, v0, v1, p3}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;JLcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p2}, Lcom/zjx/jyandroid/base/util/a;->a()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error while getting pubg recoil control config list: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$RCDataManageCellDataModel;

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$8;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$RCDataManageCellDataModel;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$1;)V

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;

    iget-object v3, v3, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$RCDataManageCellDataModel;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;

    iget-object v3, v3, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;->id:Ljava/lang/String;

    iput-object v3, v2, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$RCDataManageCellDataModel;->configId:Ljava/lang/String;

    if-eqz p3, :cond_1

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$RCDataManageCellDataModel;->isCurrentSelectedData:Z

    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-static {v3}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->getRcConfigPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    iput-boolean v3, v2, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$RCDataManageCellDataModel;->downloaded:Z

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$8;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;

    iget-object p2, p2, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->tableView:Lcom/evrencoskun/tableview/TableView;

    invoke-virtual {p2}, Lcom/evrencoskun/tableview/TableView;->getAdapter()Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;

    move-result-object p2

    check-cast p2, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;

    invoke-virtual {p2, p1}, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->setCellItems(Ljava/util/List;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$8;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->access$600(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;)V

    return-void
.end method
