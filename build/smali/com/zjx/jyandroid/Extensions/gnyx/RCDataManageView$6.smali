.class Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->onFinishInflate()V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$6;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$6;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$6;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;

    invoke-direct {v0, v1, v2, v3}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;ILcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$6;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->tableView:Lcom/evrencoskun/tableview/TableView;

    invoke-virtual {v1, v0}, Lcom/evrencoskun/tableview/TableView;->setAdapter(Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$6;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;)V

    return-void
.end method
