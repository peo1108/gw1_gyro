.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->U(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$q;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$q;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    invoke-static {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->g(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$q;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->g(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Ll/b;->q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$q;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->h(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
