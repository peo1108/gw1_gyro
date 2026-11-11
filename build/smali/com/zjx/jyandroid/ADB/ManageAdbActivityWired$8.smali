.class Lcom/zjx/jyandroid/ADB/ManageAdbActivityWired$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ADB/ManageAdbActivityWired;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWired;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWired;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWired$8;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWired;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWired$8;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWired;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWired;->connectionStatusButton:Landroid/widget/Button;

    invoke-static {}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWired;->access$100()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWired$8;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWired;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWired;->connectionStatusButton:Landroid/widget/Button;

    sget v1, Lcom/zjx/jyandroid/R$string;->retry:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWired$8;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWired;

    iget-object v1, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWired;->connectionStatusButton:Landroid/widget/Button;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWired;->connectionStatusButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
