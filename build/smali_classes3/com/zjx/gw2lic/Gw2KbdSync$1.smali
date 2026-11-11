.class Lcom/zjx/gw2lic/Gw2KbdSync$1;
.super Ljava/lang/Object;
.source "Gw2KbdSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/zjx/gw2lic/Gw2KbdSync;->healWorker()V

    return-void
.end method
