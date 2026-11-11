.class Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$5;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/zjx/jyandroid/ADB/ADBConnector;->setADBPaired(Z)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$5;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;

    invoke-static {p1}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->access$200(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;)V

    return-void
.end method
