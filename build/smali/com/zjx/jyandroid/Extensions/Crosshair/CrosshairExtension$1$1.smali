.class Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$1;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$1$1;->this$1:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$1$1;->this$1:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$1;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->hideCrosshairView()V

    return-void
.end method
