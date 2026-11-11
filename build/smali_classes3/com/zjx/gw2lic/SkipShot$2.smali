.class Lcom/zjx/gw2lic/SkipShot$2;
.super Ljava/lang/Object;
.source "SkipShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/gw2lic/SkipShot;->startPump()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 77
    invoke-static {}, Lcom/zjx/gw2lic/SkipShot;->access$400()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 78
    invoke-static {v0}, Lcom/zjx/gw2lic/SkipShot;->access$402(Z)Z

    .line 79
    invoke-static {}, Lcom/zjx/gw2lic/SkipShot;->access$500()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
