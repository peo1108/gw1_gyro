.class public abstract Lcom/zjx/jyandroid/ADB/ManageAdbActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# instance fields
.field messageReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivity$1;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivity$1;-><init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivity;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivity;->messageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public abstract onActivationStatusChanged()V
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivity;->unregisterMessageBroadcastReceiver()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivity;->registerMessageBroadcastReceiver()V

    return-void
.end method

.method public registerMessageBroadcastReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.zjx.jyandroid.activationStatusChanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivity;->messageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregisterMessageBroadcastReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivity;->messageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
