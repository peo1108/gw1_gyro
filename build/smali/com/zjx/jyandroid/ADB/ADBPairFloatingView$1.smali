.class Lcom/zjx/jyandroid/ADB/ADBPairFloatingView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;

.field final synthetic val$finalI:I


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView$1;->this$0:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;

    iput p2, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView$1;->val$finalI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView$1;->this$0:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView$1;->val$finalI:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method
