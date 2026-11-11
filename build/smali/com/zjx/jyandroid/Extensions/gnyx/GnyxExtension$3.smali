.class Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->refreshPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$200(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$1100(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;

    move-result-object v0

    new-instance v10, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel$PanelInfoContainer;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$500(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    move-result-object v2

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$100(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    move-result-object v3

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$400(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Z

    move-result v4

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$300(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    move-result-object v5

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$600(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    move-result-object v6

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$700(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

    move-result-object v7

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$800(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    move-result-object v8

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$200(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->getCurrentValue()D

    move-result-wide v11

    double-to-int v9, v11

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel$PanelInfoContainer;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;ZLcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;I)V

    invoke-virtual {v0, v10}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;->updatePanel(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel$PanelInfoContainer;)V

    return-void
.end method
