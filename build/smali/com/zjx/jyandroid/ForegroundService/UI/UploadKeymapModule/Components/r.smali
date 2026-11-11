.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/r;
.super Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/e;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/d;


# instance fields
.field public a:Lr/C;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/e;-><init>(Landroid/content/Context;)V

    new-instance p1, Lr/C;

    invoke-direct {p1}, Lr/C;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/r;->a:Lr/C;

    sget p1, Lcom/zjx/jyandroid/R$string;->macro_terminate:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setTextLabelText(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setResizeIndicatorHidden(Z)V

    return-void
.end method


# virtual methods
.method public getTerminateMacroUUID()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/r;->a:Lr/C;

    iget-object v0, v0, Lr/C;->c:Ljava/util/UUID;

    return-object v0
.end method

.method public getTerminateType()Lr/C$a;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/r;->a:Lr/C;

    iget-object v0, v0, Lr/C;->b:Lr/C$a;

    return-object v0
.end method

.method public getTriggerTerminationMode()Lr/C$b;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/r;->a:Lr/C;

    iget-object v0, v0, Lr/C;->a:Lr/C$b;

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

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/r;->a:Lr/C;

    invoke-virtual {v0, p1}, Lr/C;->loadFromMap(Ljava/util/Map;)V

    return-void
.end method

.method public setTerminateMacroUUID(Ljava/util/UUID;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/r;->a:Lr/C;

    iput-object p1, v0, Lr/C;->c:Ljava/util/UUID;

    return-void
.end method

.method public setTerminateType(Lr/C$a;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/r;->a:Lr/C;

    iput-object p1, v0, Lr/C;->b:Lr/C$a;

    return-void
.end method

.method public setTriggerTerminationMode(Lr/C$b;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/r;->a:Lr/C;

    iput-object p1, v0, Lr/C;->a:Lr/C$b;

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

    invoke-super {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/e;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/util/b;->M(Ljava/util/Map;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/r;->a:Lr/C;

    invoke-virtual {v1}, Lr/C;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/util/b;->M(Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method
