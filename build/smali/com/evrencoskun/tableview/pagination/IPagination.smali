.class public interface abstract Lcom/evrencoskun/tableview/pagination/IPagination;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCurrentPage()I
.end method

.method public abstract getItemsPerPage()I
.end method

.method public abstract getPageCount()I
.end method

.method public abstract goToPage(I)V
.end method

.method public abstract isPaginated()Z
.end method

.method public abstract nextPage()V
.end method

.method public abstract previousPage()V
.end method

.method public abstract removeOnTableViewPageTurnedListener()V
.end method

.method public abstract setItemsPerPage(I)V
.end method

.method public abstract setOnTableViewPageTurnedListener(Lcom/evrencoskun/tableview/pagination/Pagination$OnTableViewPageTurnedListener;)V
    .param p1    # Lcom/evrencoskun/tableview/pagination/Pagination$OnTableViewPageTurnedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
