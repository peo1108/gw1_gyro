.class public Lc6/a;
.super Lp7/a;
.source "SourceFile"


# instance fields
.field public m6:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationPositionEditorPanel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg7/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lp7/a;-><init>(Landroid/content/Context;Lg7/b;)V

    return-void
.end method

.method public static synthetic A(Lc6/a;)Lg7/b;
    .locals 0

    invoke-virtual {p0}, Lp7/a;->h()Lg7/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lc6/a;)Lp7/a$d;
    .locals 0

    iget-object p0, p0, Lp7/a;->X:Lp7/a$d;

    return-object p0
.end method

.method public static synthetic x(Lc6/a;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lp7/a;->g()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Lc6/a;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lp7/a;->g()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lc6/a;)Lp7/a$d;
    .locals 0

    iget-object p0, p0, Lp7/a;->X:Lp7/a$d;

    return-object p0
.end method


# virtual methods
.method public B(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lw7/b;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw7/b;

    invoke-virtual {v2}, Lw7/b;->n()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr7/a;

    instance-of v4, v3, Lr7/k;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lr7/k;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lr7/k;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0, v3}, Lp7/a;->a(Lr7/a;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw7/b;

    invoke-virtual {v0, p0}, Lw7/b;->l(Lp7/a;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lp7/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public m()V
    .locals 4

    invoke-super {p0}, Lp7/a;->m()V

    invoke-static {}, LR5/c;->l()LR5/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LR5/c;->k(Z)V

    invoke-virtual {p0}, Lp7/a;->g()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v2, Lcom/zjx/jyandroid/e$h;->e0:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationPositionEditorPanel;

    iput-object v0, p0, Lc6/a;->m6:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationPositionEditorPanel;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v2, 0xe6

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v2, 0x50

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lp7/a;->h()Lg7/b;

    move-result-object v1

    iget-object v2, p0, Lc6/a;->m6:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationPositionEditorPanel;

    invoke-interface {v1, v2, v0}, Lg7/b;->a(LD7/a;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lc6/a;->m6:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationPositionEditorPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LD7/a;->setDraggable(Z)V

    iget-object v0, p0, Lc6/a;->m6:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationPositionEditorPanel;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationPositionEditorPanel;->f7:Landroid/view/View;

    new-instance v1, Lc6/a$a;

    invoke-direct {v1, p0}, Lc6/a$a;-><init>(Lc6/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public u()V
    .locals 2

    invoke-super {p0}, Lp7/a;->u()V

    invoke-virtual {p0}, Lp7/a;->h()Lg7/b;

    move-result-object v0

    iget-object v1, p0, Lc6/a;->m6:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationPositionEditorPanel;

    invoke-interface {v0, v1}, Lg7/b;->c(LD7/a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lc6/a;->m6:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationPositionEditorPanel;

    return-void
.end method
