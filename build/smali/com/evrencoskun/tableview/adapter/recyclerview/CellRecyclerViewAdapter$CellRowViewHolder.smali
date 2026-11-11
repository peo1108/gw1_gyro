.class Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter$CellRowViewHolder;
.super Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellRowViewHolder"
.end annotation


# instance fields
.field final recyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;-><init>(Landroid/view/View;)V

    check-cast p1, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    iput-object p1, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter$CellRowViewHolder;->recyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    return-void
.end method
