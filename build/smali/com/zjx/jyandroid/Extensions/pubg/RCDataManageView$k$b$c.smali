.class public Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c;
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c;->a:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c;->b(I)V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 0

    # MDM: share flow retired
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    # MDM: open the per-weapon parameter editor for this config.
    # The share dialog this method used to show is replaced. Every other
    # button on the row keeps its original listener.

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;

    iget-object v2, v0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->e:Ljava/lang/String;

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->c:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
    move-result-object v3
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v3

    sget-object v4, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c;->a:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;
    iget-object v5, v5, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;->c:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;
    iget-object v5, v5, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;->f:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-object v1, p1

    new-instance v0, Lmdm/ParamsSheet;

    invoke-direct/range {v0 .. v5}, Lmdm/ParamsSheet;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager;)V

    invoke-virtual {v0}, Lmdm/ParamsSheet;->open()V

    return-void
.end method
