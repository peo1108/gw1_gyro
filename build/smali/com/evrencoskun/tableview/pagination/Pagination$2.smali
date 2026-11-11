.class Lcom/evrencoskun/tableview/pagination/Pagination$2;
.super Lcom/evrencoskun/tableview/filter/FilterChangedListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evrencoskun/tableview/pagination/Pagination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evrencoskun/tableview/filter/FilterChangedListener<",
        "Lcom/evrencoskun/tableview/sort/ISortableModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evrencoskun/tableview/pagination/Pagination;


# direct methods
.method public constructor <init>(Lcom/evrencoskun/tableview/pagination/Pagination;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/evrencoskun/tableview/pagination/Pagination$2;->this$0:Lcom/evrencoskun/tableview/pagination/Pagination;

    invoke-direct {p0}, Lcom/evrencoskun/tableview/filter/FilterChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilterChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/evrencoskun/tableview/sort/ISortableModel;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/evrencoskun/tableview/sort/ISortableModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/pagination/Pagination$2;->this$0:Lcom/evrencoskun/tableview/pagination/Pagination;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/evrencoskun/tableview/pagination/Pagination;->access$202(Lcom/evrencoskun/tableview/pagination/Pagination;Ljava/util/List;)Ljava/util/List;

    iget-object p1, p0, Lcom/evrencoskun/tableview/pagination/Pagination$2;->this$0:Lcom/evrencoskun/tableview/pagination/Pagination;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v0}, Lcom/evrencoskun/tableview/pagination/Pagination;->access$002(Lcom/evrencoskun/tableview/pagination/Pagination;Ljava/util/List;)Ljava/util/List;

    iget-object p1, p0, Lcom/evrencoskun/tableview/pagination/Pagination$2;->this$0:Lcom/evrencoskun/tableview/pagination/Pagination;

    invoke-static {p1}, Lcom/evrencoskun/tableview/pagination/Pagination;->access$100(Lcom/evrencoskun/tableview/pagination/Pagination;)V

    return-void
.end method

.method public onFilterCleared(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/evrencoskun/tableview/sort/ISortableModel;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/evrencoskun/tableview/sort/ISortableModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/pagination/Pagination$2;->this$0:Lcom/evrencoskun/tableview/pagination/Pagination;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/evrencoskun/tableview/pagination/Pagination;->access$202(Lcom/evrencoskun/tableview/pagination/Pagination;Ljava/util/List;)Ljava/util/List;

    iget-object p1, p0, Lcom/evrencoskun/tableview/pagination/Pagination$2;->this$0:Lcom/evrencoskun/tableview/pagination/Pagination;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v0}, Lcom/evrencoskun/tableview/pagination/Pagination;->access$002(Lcom/evrencoskun/tableview/pagination/Pagination;Ljava/util/List;)Ljava/util/List;

    iget-object p1, p0, Lcom/evrencoskun/tableview/pagination/Pagination$2;->this$0:Lcom/evrencoskun/tableview/pagination/Pagination;

    invoke-static {p1}, Lcom/evrencoskun/tableview/pagination/Pagination;->access$100(Lcom/evrencoskun/tableview/pagination/Pagination;)V

    return-void
.end method
