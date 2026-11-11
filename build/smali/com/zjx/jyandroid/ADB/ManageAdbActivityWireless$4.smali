.class Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$4;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$4;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;

    invoke-static {v0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->access$100(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$4;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->connectionStatusButton:Landroid/widget/Button;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
