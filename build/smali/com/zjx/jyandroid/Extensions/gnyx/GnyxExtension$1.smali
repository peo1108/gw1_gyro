.class Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private scopeBackup:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;->XNoScope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$1;->scopeBackup:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    return-void
.end method


# virtual methods
.method public onCurrentAccessoryChanged(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$602(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v0, p2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$702(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v0, p3}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$802(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$200(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->setAccessory(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->refreshPanel()V

    return-void
.end method

.method public onCurrentAimingStatusChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PlayerStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PlayerStatus;->setAiming(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$402(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;Z)Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$200(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$1;->scopeBackup:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->setScope(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$200(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;->Hippie:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->setScope(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;)V

    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->refreshPanel()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zjx.jyandroid.extension.shared.onAimingStatusChanged"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "aiming"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onCurrentWeaponChanged(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$502(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$200(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->setWeaponType(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->refreshPanel()V

    return-void
.end method

.method public onCurrentWeaponScopeChanged(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$302(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$1;->scopeBackup:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$400(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$200(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->setScope(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;)V

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->refreshPanel()V

    return-void
.end method

.method public onPlayerGestureChanged(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PlayerStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PlayerStatus;->setGesture(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$102(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$200(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->setGesture(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->refreshPanel()V

    return-void
.end method
