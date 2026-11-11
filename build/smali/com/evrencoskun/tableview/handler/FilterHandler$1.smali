.class Lcom/evrencoskun/tableview/handler/FilterHandler$1;
.super Lcom/evrencoskun/tableview/adapter/AdapterDataSetChangedListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evrencoskun/tableview/handler/FilterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evrencoskun/tableview/handler/FilterHandler;


# direct methods
.method public constructor <init>(Lcom/evrencoskun/tableview/handler/FilterHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/evrencoskun/tableview/handler/FilterHandler$1;->this$0:Lcom/evrencoskun/tableview/handler/FilterHandler;

    invoke-direct {p0}, Lcom/evrencoskun/tableview/adapter/AdapterDataSetChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellItemsChanged(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/FilterHandler$1;->this$0:Lcom/evrencoskun/tableview/handler/FilterHandler;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/evrencoskun/tableview/handler/FilterHandler;->access$102(Lcom/evrencoskun/tableview/handler/FilterHandler;Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public onRowHeaderItemsChanged(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/FilterHandler$1;->this$0:Lcom/evrencoskun/tableview/handler/FilterHandler;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/evrencoskun/tableview/handler/FilterHandler;->access$002(Lcom/evrencoskun/tableview/handler/FilterHandler;Ljava/util/List;)Ljava/util/List;

    return-void
.end method
