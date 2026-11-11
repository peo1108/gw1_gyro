.class Lcom/zjx/jyandroid/AppBinderServerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/AppBinderServerImpl;->showToast(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/AppBinderServerImpl;

.field final synthetic val$duration:I

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$toastType:I


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/AppBinderServerImpl;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/AppBinderServerImpl$1;->this$0:Lcom/zjx/jyandroid/AppBinderServerImpl;

    iput-object p2, p0, Lcom/zjx/jyandroid/AppBinderServerImpl$1;->val$message:Ljava/lang/String;

    iput p3, p0, Lcom/zjx/jyandroid/AppBinderServerImpl$1;->val$duration:I

    iput p4, p0, Lcom/zjx/jyandroid/AppBinderServerImpl$1;->val$toastType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Lcom/zjx/jyandroid/base/util/a;

    iget-object v1, p0, Lcom/zjx/jyandroid/AppBinderServerImpl$1;->val$message:Ljava/lang/String;

    iget v2, p0, Lcom/zjx/jyandroid/AppBinderServerImpl$1;->val$duration:I

    int-to-long v2, v2

    invoke-static {}, Lcom/zjx/jyandroid/base/util/ToastView$a;->values()[Lcom/zjx/jyandroid/base/util/ToastView$a;

    move-result-object v4

    iget v5, p0, Lcom/zjx/jyandroid/AppBinderServerImpl$1;->val$toastType:I

    aget-object v4, v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;JLcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void
.end method
