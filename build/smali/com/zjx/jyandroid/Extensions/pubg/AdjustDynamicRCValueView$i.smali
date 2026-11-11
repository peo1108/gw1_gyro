.class public Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$i;->a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$i;->a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;->c(Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$i;->a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;->l:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->reloadData()V

    return-void
.end method
