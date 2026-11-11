.class Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView$19;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView$19;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;->access$200(Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;)I

    move-result v1

    const/16 v2, 0x32

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;->setLeftMouseDownMillisecond(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView$19;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;

    int-to-long v1, v2

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
