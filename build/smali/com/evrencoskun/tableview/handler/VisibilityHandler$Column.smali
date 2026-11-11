.class Lcom/evrencoskun/tableview/handler/VisibilityHandler$Column;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evrencoskun/tableview/handler/VisibilityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Column"
.end annotation


# instance fields
.field private final mCellModelList:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mColumnHeaderModel:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mYPosition:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/util/List;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/evrencoskun/tableview/handler/VisibilityHandler$Column;->mYPosition:I

    iput-object p2, p0, Lcom/evrencoskun/tableview/handler/VisibilityHandler$Column;->mColumnHeaderModel:Ljava/lang/Object;

    iput-object p3, p0, Lcom/evrencoskun/tableview/handler/VisibilityHandler$Column;->mCellModelList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCellModelList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/VisibilityHandler$Column;->mCellModelList:Ljava/util/List;

    return-object v0
.end method

.method public getColumnHeaderModel()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/VisibilityHandler$Column;->mColumnHeaderModel:Ljava/lang/Object;

    return-object v0
.end method

.method public getYPosition()I
    .locals 1

    iget v0, p0, Lcom/evrencoskun/tableview/handler/VisibilityHandler$Column;->mYPosition:I

    return v0
.end method
