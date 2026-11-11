.class public Lcom/zjx/jyandroid/MainApp/OTAActivity$g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/MainApp/OTAActivity$g;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/OTAActivity$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$b;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionTriggered(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$b;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity$g;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity;->k:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->pause()Z

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$b;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity$g;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    const-string v0, "\u4e0b\u8f7d\u4e2d\u6b62"

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->c(Lcom/zjx/jyandroid/MainApp/OTAActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$b;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity$g;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity;->k:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    :cond_0
    return-void
.end method
