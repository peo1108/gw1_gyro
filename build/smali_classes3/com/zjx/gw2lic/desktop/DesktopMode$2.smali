.class Lcom/zjx/gw2lic/desktop/DesktopMode$2;
.super Ljava/lang/Object;
.source "DesktopMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/gw2lic/desktop/DesktopMode;->transition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 38
    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$400()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$502(J)J

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$600()V

    return-void
.end method
