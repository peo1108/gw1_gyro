.class Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->updateKeymap(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;Ljava/lang/Exception;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/zjx/jyandroid/base/util/a;

    const-string v1, "\u667a\u80fd\u8bc6\u522b\u53ef\u80fd\u8fd0\u884c\u4e0d\u6b63\u5e38\uff0c\u56e0\u4e3a\u6620\u5c04\u56fe\u6709\u8bef\uff0c\u5efa\u8bae\u70b9\u51fb\u91cd\u7f6e"

    sget-object v2, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/util/a;->a()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$1;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->b(Ljava/lang/String;)V

    return-void
.end method
