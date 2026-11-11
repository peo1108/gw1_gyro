.class public Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$f;->a:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$f;->a:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$f;->a:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;

    invoke-direct {v0, v1, v2, v3}, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;ILcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$f;->a:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;->e:Lcom/evrencoskun/tableview/TableView;

    invoke-virtual {v1, v0}, Lcom/evrencoskun/tableview/TableView;->setAdapter(Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$f;->a:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;->a(Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;)V

    return-void
.end method
