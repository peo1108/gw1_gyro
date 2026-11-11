.class Lcom/evrencoskun/tableview/sort/ColumnSortHelper$Directive;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evrencoskun/tableview/sort/ColumnSortHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Directive"
.end annotation


# instance fields
.field private final column:I

.field private final direction:Lcom/evrencoskun/tableview/sort/SortState;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/evrencoskun/tableview/sort/SortState;)V
    .locals 0
    .param p2    # Lcom/evrencoskun/tableview/sort/SortState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/evrencoskun/tableview/sort/ColumnSortHelper$Directive;->column:I

    iput-object p2, p0, Lcom/evrencoskun/tableview/sort/ColumnSortHelper$Directive;->direction:Lcom/evrencoskun/tableview/sort/SortState;

    return-void
.end method

.method public static synthetic access$000(Lcom/evrencoskun/tableview/sort/ColumnSortHelper$Directive;)Lcom/evrencoskun/tableview/sort/SortState;
    .locals 0

    iget-object p0, p0, Lcom/evrencoskun/tableview/sort/ColumnSortHelper$Directive;->direction:Lcom/evrencoskun/tableview/sort/SortState;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/evrencoskun/tableview/sort/ColumnSortHelper$Directive;)I
    .locals 0

    iget p0, p0, Lcom/evrencoskun/tableview/sort/ColumnSortHelper$Directive;->column:I

    return p0
.end method
