.class Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1$1;->requestCompleted(Lcom/zjx/jyandroid/base/MError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1$1;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1$1$1;->this$4:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1$1$1;->this$4:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1$1;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1$1;->this$3:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1;->this$1:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1;->val$keymapId:Ljava/lang/String;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->getRcConfigPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->access$100(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;Ljava/lang/String;)V

    return-void
.end method
