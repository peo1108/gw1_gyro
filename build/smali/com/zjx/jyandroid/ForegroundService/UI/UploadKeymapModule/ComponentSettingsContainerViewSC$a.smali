.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC;

    iget-object v1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;->f:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a$c;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC;->c(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;->f:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a$c;

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a$b;->h:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a$b;

    invoke-interface {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a$c;->a(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a$b;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC;

    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC;->d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;->f:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a$c;

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a$b;->i:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a$b;

    invoke-interface {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a$c;->a(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a$b;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC;

    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC;->e(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;->f:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a$c;

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a$b;->j:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a$b;

    invoke-interface {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a$c;->a(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a$b;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC;

    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC;->f(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;->f:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a$c;

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a$b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a$b;

    invoke-interface {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a$c;->a(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a$b;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC;

    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC;->g(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsContainerViewSC;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;->f:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a$c;

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a$b;->l:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a$b;

    invoke-interface {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a$c;->a(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a$b;)V

    :cond_5
    :goto_0
    return-void
.end method
