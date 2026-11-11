.class Lcom/zjx/gw2lic/desktop/DesktopHidServer$1;
.super Ljava/lang/Object;
.source "DesktopHidServer.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/gw2lic/desktop/DesktopHidServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    .line 12
    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->access$000()V

    return-void
.end method
