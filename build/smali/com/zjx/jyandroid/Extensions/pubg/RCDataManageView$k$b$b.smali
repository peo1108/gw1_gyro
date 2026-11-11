.class public Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;

.field public final synthetic b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$b;->a:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->l:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;

    iget-boolean v0, p1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->n:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;->c:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;->f:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->e:Ljava/lang/String;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$b$a;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$b$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$b;)V

    invoke-virtual {v0, p1, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->r(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->n:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;->c:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;->f:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->e:Ljava/lang/String;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$b$b;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$b$b;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$b;)V

    invoke-virtual {v0, p1, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->D(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$SetSelectedKeymapCompletionHandler;)V

    :goto_0
    return-void
.end method
