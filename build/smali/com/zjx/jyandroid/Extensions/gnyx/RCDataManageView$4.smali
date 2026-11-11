.class Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;

.field final synthetic val$keymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;Lcom/zjx/jyandroid/ForegroundService/KeymapManager;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$4;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$4;->val$keymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$4;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->access$300(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$4;->val$keymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$c;->k()Z

    move-result v0

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->getDefaultRcConfigShareCode(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$4$1;

    invoke-direct {v2, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$4$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$4;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->g(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;)V

    return-void
.end method
