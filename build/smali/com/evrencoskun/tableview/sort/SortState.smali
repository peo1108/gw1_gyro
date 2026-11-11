.class public final enum Lcom/evrencoskun/tableview/sort/SortState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evrencoskun/tableview/sort/SortState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evrencoskun/tableview/sort/SortState;

.field public static final enum ASCENDING:Lcom/evrencoskun/tableview/sort/SortState;

.field public static final enum DESCENDING:Lcom/evrencoskun/tableview/sort/SortState;

.field public static final enum UNSORTED:Lcom/evrencoskun/tableview/sort/SortState;


# direct methods
.method private static synthetic $values()[Lcom/evrencoskun/tableview/sort/SortState;
    .locals 3

    sget-object v0, Lcom/evrencoskun/tableview/sort/SortState;->ASCENDING:Lcom/evrencoskun/tableview/sort/SortState;

    sget-object v1, Lcom/evrencoskun/tableview/sort/SortState;->DESCENDING:Lcom/evrencoskun/tableview/sort/SortState;

    sget-object v2, Lcom/evrencoskun/tableview/sort/SortState;->UNSORTED:Lcom/evrencoskun/tableview/sort/SortState;

    filled-new-array {v0, v1, v2}, [Lcom/evrencoskun/tableview/sort/SortState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/evrencoskun/tableview/sort/SortState;

    const-string v1, "ASCENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/evrencoskun/tableview/sort/SortState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evrencoskun/tableview/sort/SortState;->ASCENDING:Lcom/evrencoskun/tableview/sort/SortState;

    new-instance v0, Lcom/evrencoskun/tableview/sort/SortState;

    const-string v1, "DESCENDING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/evrencoskun/tableview/sort/SortState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evrencoskun/tableview/sort/SortState;->DESCENDING:Lcom/evrencoskun/tableview/sort/SortState;

    new-instance v0, Lcom/evrencoskun/tableview/sort/SortState;

    const-string v1, "UNSORTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/evrencoskun/tableview/sort/SortState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evrencoskun/tableview/sort/SortState;->UNSORTED:Lcom/evrencoskun/tableview/sort/SortState;

    invoke-static {}, Lcom/evrencoskun/tableview/sort/SortState;->$values()[Lcom/evrencoskun/tableview/sort/SortState;

    move-result-object v0

    sput-object v0, Lcom/evrencoskun/tableview/sort/SortState;->$VALUES:[Lcom/evrencoskun/tableview/sort/SortState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evrencoskun/tableview/sort/SortState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/evrencoskun/tableview/sort/SortState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evrencoskun/tableview/sort/SortState;

    return-object p0
.end method

.method public static values()[Lcom/evrencoskun/tableview/sort/SortState;
    .locals 1

    sget-object v0, Lcom/evrencoskun/tableview/sort/SortState;->$VALUES:[Lcom/evrencoskun/tableview/sort/SortState;

    invoke-virtual {v0}, [Lcom/evrencoskun/tableview/sort/SortState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evrencoskun/tableview/sort/SortState;

    return-object v0
.end method
