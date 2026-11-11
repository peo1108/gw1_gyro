.class Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;->_internal(Landroid/view/View;Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;

.field final synthetic val$motionEvent:Landroid/view/MotionEvent;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser$1;->this$0:Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;

    iput-object p2, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser$1;->val$motionEvent:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser$1;->this$0:Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;->access$002(Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;Z)Z

    iget-object v0, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser$1;->this$0:Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;

    iget-object v1, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser$1;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser$1;->val$motionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1, v2}, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;->longPressed(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method
