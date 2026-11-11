.class public LZ5/a;
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
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/zjx/jyandroid/e$h;->Y0:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;

    iput-object v0, p0, LZ5/a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$h;->i()Landroid/util/Size;

    move-result-object v0

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v0, 0x0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v0, 0x33

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v0, 0x300

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget-object v0, LB6/b;->f:LB6/b;

    iget-object v2, p0, LZ5/a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;

    invoke-virtual {v0, v2, v1}, LB6/b;->a(LD7/a;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public b()V
    .locals 2

    sget-object v0, LB6/b;->f:LB6/b;

    iget-object v1, p0, LZ5/a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;

    invoke-virtual {v0, v1}, LB6/b;->c(LD7/a;)V

    return-void
.end method
