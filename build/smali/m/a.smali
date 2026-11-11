.class public Lm/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/zjx/jyandroid/R$layout;->select_keymap_container_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;

    iput-object v0, p0, Lm/a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->i()Landroid/util/Size;

    move-result-object v0

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v1

    iget-object v2, p0, Lm/a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v6

    const/16 v7, 0x33

    invoke-static {}, Ll/b;->i()I

    move-result v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v8}, Ll/b;->d(Lcom/zjx/jyandroid/base/BaseFloatingView;IIIIII)V

    return-void
.end method

.method public b()V
    .locals 2

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v0

    iget-object v1, p0, Lm/a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;

    invoke-virtual {v0, v1}, Ll/b;->q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    return-void
.end method
