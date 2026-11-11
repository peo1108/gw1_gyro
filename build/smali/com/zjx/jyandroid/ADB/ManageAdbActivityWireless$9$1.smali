.class Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$1;->this$1:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionTriggered(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$1;->this$1:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;

    iget-object p1, p1, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b$f;->t(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method
