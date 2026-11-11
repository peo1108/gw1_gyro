.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/i;
.super Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/e;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/d;
.implements Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/t;


# instance fields
.field public a:Lf/e;

.field public b:Lr/z0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/e;-><init>(Landroid/content/Context;)V

    new-instance p1, Lf/e;

    invoke-direct {p1}, Lf/e;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/i;->a:Lf/e;

    new-instance p1, Lr/z0;

    invoke-direct {p1}, Lr/z0;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/i;->b:Lr/z0;

    sget p1, Lcom/zjx/jyandroid/R$string;->touch_input_event_manager_text4:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setTextLabelText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->textView:Landroid/widget/TextView;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, -0x161402

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBackgroundColor(I)V

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public getEnableType()Lf/c$a;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/i;->a:Lf/e;

    iget-object v0, v0, Lf/e;->a:Lf/c$a;

    return-object v0
.end method

.method public loadFromMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/e;->loadFromMap(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/i;->a:Lf/e;

    invoke-virtual {v0, p1}, Lf/e;->loadFromMap(Ljava/util/Map;)V

    return-void
.end method

.method public setEnableType(Lf/c$a;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/i;->a:Lf/e;

    iput-object p1, v0, Lf/e;->a:Lf/c$a;

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelected(Z)V

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setResizeIndicatorHidden(Z)V

    :cond_0
    return-void
.end method

.method public toMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/i;->a:Lf/e;

    invoke-virtual {v1}, Lf/e;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/util/b;->M(Ljava/util/Map;Ljava/util/Map;)V

    invoke-super {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/e;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/util/b;->M(Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method
