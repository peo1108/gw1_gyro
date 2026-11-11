.class Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$11;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$11;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    iget-object v0, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->currentDataNode:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;

    if-nez v0, :cond_0

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->adjust_dynamic_rc_value_view_text9:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->configUpdater:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$ConfigValueUpdater;

    if-nez v0, :cond_1

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->adjust_dynamic_rc_value_view_text10:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void

    :cond_1
    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->dataArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->adjust_dynamic_rc_value_view_text11:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$11;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->dataArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->adjust_dynamic_rc_value_view_text12:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$11;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->dataArray:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_5

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->adjust_dynamic_rc_value_view_text13:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$11;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    iget-object v0, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->currentDataNode:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->configUpdater:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$ConfigValueUpdater;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->dataArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$ConfigValueUpdater;->setDataArray(Ljava/util/ArrayList;)V

    :try_start_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$11;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->currentDataNode:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->configUpdater:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$ConfigValueUpdater;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$ConfigValueUpdater;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->save_success:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->b:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to flush to file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->adjust_dynamic_rc_value_view_text14:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void
.end method
