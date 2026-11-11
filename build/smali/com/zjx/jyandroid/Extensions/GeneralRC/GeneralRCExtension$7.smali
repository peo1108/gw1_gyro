.class Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->refreshPanel()V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$7;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$7;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->access$400(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$7;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->access$600(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel$PanelInfoContainer;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$7;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-static {v2}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->access$400(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->getCurrentConfigName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$7;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-static {v3}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->access$400(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->getCurrentValue()D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$7;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-static {v4}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->access$500(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel$PanelInfoContainer;-><init>(Ljava/lang/String;ILcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;)V

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;->updatePanel(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel$PanelInfoContainer;)V

    return-void
.end method
