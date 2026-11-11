.class public Lcom/zjx/jyandroid/base/ViewHolder;
.super Lcom/zjx/jyandroid/base/FloatingObjectWrapper;
.source "SourceFile"


# instance fields
.field public baseView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/base/FloatingObjectWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/Set;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hide()V
    .locals 0

    return-void
.end method

.method public setComponents(Ljava/util/Set;)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 2

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/base/ViewHolder;->baseView:Landroid/view/View;

    return-void
.end method
