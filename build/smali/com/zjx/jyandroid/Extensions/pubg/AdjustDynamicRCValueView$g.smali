.class public Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$g;
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$g;->a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$g;->a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;->l:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->getIndexesOfSelectedPoints()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const/4 v0, 0x1

    const/16 v2, 0x1f4

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$g;->a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;->b(Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;)I

    move-result p1

    add-int/lit8 p1, p1, -0xa

    int-to-float p1, p1

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    const/high16 p1, 0x43fa0000    # 500.0f

    :cond_1
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$g;->a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    if-le v0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$g;->a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;->o:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_3
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$g;->a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v3, 0x0

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$g;->a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;->o:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    add-int/2addr p1, v2

    int-to-float p1, p1

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$g;->a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    if-le v0, v2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v0

    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$g;->a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;->o:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$g;->a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$g;->a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0xa

    if-le p1, v2, :cond_6

    goto :goto_3

    :cond_6
    move v2, p1

    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$g;->a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$g;->a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;->o:Ljava/util/ArrayList;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$g$a;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$g$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$g;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$g;->a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;->l:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->reloadData()V

    return-void
.end method
