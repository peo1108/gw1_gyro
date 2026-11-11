.class Lmdm/RcParamsView$1$1;
.super Ljava/lang/Object;
.source "RcParamsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/RcParamsView$1;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmdm/RcParamsView$1;

.field final synthetic val$content:Ljava/util/Map;


# direct methods
.method constructor <init>(Lmdm/RcParamsView$1;Ljava/util/Map;)V
    .registers 3
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

    .line 116
    iput-object p1, p0, Lmdm/RcParamsView$1$1;->this$1:Lmdm/RcParamsView$1;

    iput-object p2, p0, Lmdm/RcParamsView$1$1;->val$content:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 120
    :try_start_0
    iget-object v0, p0, Lmdm/RcParamsView$1$1;->this$1:Lmdm/RcParamsView$1;

    iget-object v0, v0, Lmdm/RcParamsView$1;->this$0:Lmdm/RcParamsView;

    iget-object v1, p0, Lmdm/RcParamsView$1$1;->val$content:Ljava/util/Map;

    invoke-static {v0, v1}, Lmdm/RcParamsView;->access$000(Lmdm/RcParamsView;Ljava/util/Map;)V

    .line 121
    iget-object v0, p0, Lmdm/RcParamsView$1$1;->this$1:Lmdm/RcParamsView$1;

    iget-object v0, v0, Lmdm/RcParamsView$1;->this$0:Lmdm/RcParamsView;

    invoke-static {v0}, Lmdm/RcParamsView;->access$100(Lmdm/RcParamsView;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    .line 124
    goto :goto_2c

    .line 122
    :catchall_11
    move-exception v0

    .line 123
    iget-object v1, p0, Lmdm/RcParamsView$1$1;->this$1:Lmdm/RcParamsView$1;

    iget-object v1, v1, Lmdm/RcParamsView$1;->this$0:Lmdm/RcParamsView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "L\u1ed7i m\u1edf b\u1ea3ng: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmdm/RcParamsView;->access$200(Lmdm/RcParamsView;Ljava/lang/String;)V

    .line 125
    :goto_2c
    return-void
.end method
