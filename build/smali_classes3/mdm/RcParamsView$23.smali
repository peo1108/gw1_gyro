.class Lmdm/RcParamsView$23;
.super Ljava/lang/Object;
.source "RcParamsView.java"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$UpdateKeymapCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/RcParamsView;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmdm/RcParamsView;

.field final synthetic val$out:Ljava/util/Map;


# direct methods
.method constructor <init>(Lmdm/RcParamsView;Ljava/util/Map;)V
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

    .line 735
    iput-object p1, p0, Lmdm/RcParamsView$23;->this$0:Lmdm/RcParamsView;

    iput-object p2, p0, Lmdm/RcParamsView$23;->val$out:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;)V
    .registers 3

    .line 737
    iget-object p1, p0, Lmdm/RcParamsView$23;->this$0:Lmdm/RcParamsView;

    invoke-static {p1}, Lmdm/RcParamsView;->access$300(Lmdm/RcParamsView;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lmdm/RcParamsView$23$1;

    invoke-direct {v0, p0}, Lmdm/RcParamsView$23$1;-><init>(Lmdm/RcParamsView$23;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 749
    return-void
.end method
