.class public Lcom/evrencoskun/tableview/filter/FilterItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final column:I

.field private final filter:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final filterType:Lcom/evrencoskun/tableview/filter/FilterType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/evrencoskun/tableview/filter/FilterType;ILjava/lang/String;)V
    .locals 0
    .param p1    # Lcom/evrencoskun/tableview/filter/FilterType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evrencoskun/tableview/filter/FilterItem;->filterType:Lcom/evrencoskun/tableview/filter/FilterType;

    iput p2, p0, Lcom/evrencoskun/tableview/filter/FilterItem;->column:I

    iput-object p3, p0, Lcom/evrencoskun/tableview/filter/FilterItem;->filter:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    iget v0, p0, Lcom/evrencoskun/tableview/filter/FilterItem;->column:I

    return v0
.end method

.method public getFilter()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/filter/FilterItem;->filter:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterType()Lcom/evrencoskun/tableview/filter/FilterType;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/filter/FilterItem;->filterType:Lcom/evrencoskun/tableview/filter/FilterType;

    return-object v0
.end method
