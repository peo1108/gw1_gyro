.class Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener;-><init>(Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;Lcom/evrencoskun/tableview/ITableView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final doubleTapInterval:I

.field lastTapUpTime:J

.field start:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener;


# direct methods
.method public constructor <init>(Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener$1;->this$0:Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener$1;->lastTapUpTime:J

    const/16 p1, 0x12c

    iput p1, p0, Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener$1;->doubleTapInterval:I

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    iput-object p1, p0, Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener$1;->start:Landroid/view/MotionEvent;

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener$1;->start:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener$1;->start:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener$1;->this$0:Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener;

    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener;->longPressAction(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener$1;->this$0:Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener;

    iget-object v1, v0, Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener;->mRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v0, v1, p1}, Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener;->clickAction(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
