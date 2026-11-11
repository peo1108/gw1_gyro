.class public Lcom/zjx/gw2lic/Gw2DriveKeyPoll;
.super Ljava/lang/Object;
.source "Gw2DriveKeyPoll.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->pollDriving()V

    return-void
.end method
