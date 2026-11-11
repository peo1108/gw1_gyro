.class Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;->onAttachedToWindow()V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView$18;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView$18;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;->access$300(Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView$18;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;->lineGraphView:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->reloadData()V

    return-void
.end method
