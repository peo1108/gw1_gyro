.class public final enum Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evrencoskun/tableview/ITableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CornerViewLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

.field public static final enum BOTTOM_LEFT:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

.field public static final enum BOTTOM_RIGHT:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

.field public static final enum TOP_LEFT:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

.field public static final enum TOP_RIGHT:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;


# instance fields
.field id:I


# direct methods
.method private static synthetic $values()[Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;
    .locals 4

    sget-object v0, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->TOP_LEFT:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    sget-object v1, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->TOP_RIGHT:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    sget-object v2, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->BOTTOM_LEFT:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    sget-object v3, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->BOTTOM_RIGHT:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    filled-new-array {v0, v1, v2, v3}, [Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->TOP_LEFT:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    new-instance v0, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    const-string v1, "TOP_RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->TOP_RIGHT:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    new-instance v0, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    const-string v1, "BOTTOM_LEFT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->BOTTOM_LEFT:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    new-instance v0, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->BOTTOM_RIGHT:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    invoke-static {}, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->$values()[Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    move-result-object v0

    sput-object v0, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->$VALUES:[Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->id:I

    return-void
.end method

.method public static fromId(I)Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;
    .locals 5

    invoke-static {}, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->values()[Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->TOP_LEFT:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    return-object p0
.end method

.method public static values()[Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;
    .locals 1

    sget-object v0, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->$VALUES:[Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    invoke-virtual {v0}, [Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    return-object v0
.end method
