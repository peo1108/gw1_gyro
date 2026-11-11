.class Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;

.field final synthetic val$this$1:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3;->val$this$1:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3;->shareHelper(I)V

    return-void
.end method

.method private shareHelper(I)V
    .locals 4

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->shareButton:Landroid/widget/Button;

    sget v1, Lcom/zjx/jyandroid/R$string;->rc_data_manage_view_sharing:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->shareButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->configId:Ljava/lang/String;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->getRcConfigPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->L(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "disableNameEditing"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->this$1:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;->pubgRelatedKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->configId:Ljava/lang/String;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3$1;

    invoke-direct {v3, p0, p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3$1;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3;I)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->L(Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$UpdateKeymapCompletionHandler;)V

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->shareButton:Landroid/widget/Button;

    sget v1, Lcom/zjx/jyandroid/R$string;->rc_data_manage_view_share:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->shareButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to load rc config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->rc_data_manage_view_text22:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    # MDM: the parameter panel was removed. Configs are edited and saved by the app's own
    # settings screen; this button does nothing.
    return-void
.end method
