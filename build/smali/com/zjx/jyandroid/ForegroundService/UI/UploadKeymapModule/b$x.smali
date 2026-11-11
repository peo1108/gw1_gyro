.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Interfaces/ObjectRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$x;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$x;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 4

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$x;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$x;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->e(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$x;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_1

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$x;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->l:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;->f:Landroid/widget/TextView;

    sget v2, Lcom/zjx/jyandroid/R$string;->keymap_upload_floating_panel_lock_background:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$x;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->l:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;->g:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$x;->a:Landroid/content/Context;

    sget v3, Lcom/zjx/jyandroid/R$drawable;->uploadkeymappanel_lock_icon:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ll/b;->i()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$x;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->l:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;->f:Landroid/widget/TextView;

    sget v2, Lcom/zjx/jyandroid/R$string;->keymap_upload_floating_panel_unlock_background:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$x;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->l:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;->g:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$x;->a:Landroid/content/Context;

    sget v3, Lcom/zjx/jyandroid/R$drawable;->uploadkeymappanel_unlock_icon:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$x;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->updateWindowParams(Landroid/view/WindowManager$LayoutParams;)V

    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
