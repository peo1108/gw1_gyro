.class public Lcom/zjx/jyandroid/MainApp/OTAActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jieli/jl_bt_ota/interfaces/IUpgradeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/MainApp/OTAActivity;->j(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv/e;

.field public final synthetic b:Lcom/zjx/jyandroid/MainApp/OTAActivity;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/OTAActivity;Lv/e;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$a;->b:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    iput-object p2, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$a;->a:Lv/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelOTA()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$a;->a:Lv/e;

    invoke-virtual {v0}, Lv/e;->release()V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$a;->b:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    const-string v1, "\u5347\u7ea7\u88ab\u53d6\u6d88"

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->c(Lcom/zjx/jyandroid/MainApp/OTAActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$a;->b:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    invoke-static {v0}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->f(Lcom/zjx/jyandroid/MainApp/OTAActivity;)V

    return-void
.end method

.method public onError(Lcom/jieli/jl_bt_ota/model/base/BaseError;)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$a;->a:Lv/e;

    invoke-virtual {v0}, Lv/e;->release()V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$a;->b:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    const-string v1, "\u5347\u7ea7\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->g(Lcom/zjx/jyandroid/MainApp/OTAActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$a;->b:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5347\u7ea7\u5931\u8d25 - \u9519\u8bef\u4fe1\u606f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->c(Lcom/zjx/jyandroid/MainApp/OTAActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$a;->b:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    invoke-static {p1}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->f(Lcom/zjx/jyandroid/MainApp/OTAActivity;)V

    return-void
.end method

.method public onNeedReconnect(Ljava/lang/String;Z)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$a;->a:Lv/e;

    invoke-virtual {p1}, Lv/e;->release()V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$a;->b:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    const-string p2, "\u9519\u8bef\u4ee3\u78012 - \u8bf7\u8054\u7cfb\u5de5\u7a0b\u5e08"

    invoke-static {p1, p2}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->c(Lcom/zjx/jyandroid/MainApp/OTAActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$a;->b:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    invoke-static {p1}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->f(Lcom/zjx/jyandroid/MainApp/OTAActivity;)V

    return-void
.end method

.method public onProgress(IF)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$a;->b:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity;->h:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$a;->b:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity;->j:Landroid/widget/ProgressBar;

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public onStartOTA()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$a;->b:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    const-string v1, "\u84dd\u7259\u641c\u5bfb\u6210\u529f\uff0c\u5f00\u59cb\u7b2c\u56db\u9636\u6bb5\u5347\u7ea7\uff0c\u5177\u4f53\u8fdb\u5ea6\u53ef\u89c1\u4e0a\u65b9\u8fdb\u5ea6\u6761"

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->c(Lcom/zjx/jyandroid/MainApp/OTAActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onStopOTA()V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$a;->a:Lv/e;

    invoke-virtual {v0}, Lv/e;->release()V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$a;->b:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    invoke-static {v0}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->h(Lcom/zjx/jyandroid/MainApp/OTAActivity;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$a;->b:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    invoke-static {v0}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->f(Lcom/zjx/jyandroid/MainApp/OTAActivity;)V

    return-void
.end method
