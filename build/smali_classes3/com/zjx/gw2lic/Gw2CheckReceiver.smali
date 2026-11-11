.class public final Lcom/zjx/gw2lic/Gw2CheckReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Gw2CheckReceiver.java"


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.zjx.gw2lic.CHECK"

.field private static final INTERVAL:J = 0x1499700L

.field private static final REQ:I = 0x67773263


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 8

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 21
    const-string v0, ";\u00abU\u00d3c"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    if-nez v1, :cond_0

    return-void

    .line 24
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/zjx/gw2lic/Gw2CheckReceiver;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "9\u00a8Y\u008ft\u0011\u0090{\u00a5X\u00aee\u001f\u0080~\u00feb\u00d2G:"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const v2, 0x67773263

    const/high16 v3, 0xc000000

    .line 25
    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1499700

    add-long v3, v2, v4

    const-wide/32 v5, 0x1499700

    const/4 v2, 0x1

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 32
    invoke-virtual {p0}, Lcom/zjx/gw2lic/Gw2CheckReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p2

    .line 33
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zjx/gw2lic/Gw2CheckReceiver$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/zjx/gw2lic/Gw2CheckReceiver$1;-><init>(Lcom/zjx/gw2lic/Gw2CheckReceiver;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V

    const-string p1, "=\u00b0\u0006\u008cm\u0013\u008d6\u00a9"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
