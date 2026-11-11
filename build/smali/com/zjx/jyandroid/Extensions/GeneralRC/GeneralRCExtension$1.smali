.class Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/util/LinkedList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zjx/jyandroid/base/MError;",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    sget p1, Lcom/zjx/jyandroid/R$string;->general_rc_extension_settings_view_text1:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-static {p2}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->access$000(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p2

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->getRCDataBundleId()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1;

    invoke-direct {v0, p0, p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1;Ljava/lang/String;)V

    const-string p1, "general_rc_yq_default_android2"

    invoke-virtual {p2, p1, p3, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->g(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;)V

    return-void

    :cond_0
    new-instance p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$2;

    invoke-direct {p1, p0, p3}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$2;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
