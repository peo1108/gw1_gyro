.class Lmdm/RcParamsView$1;
.super Ljava/lang/Object;
.source "RcParamsView.java"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/RcParamsView;->open()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmdm/RcParamsView;


# direct methods
.method constructor <init>(Lmdm/RcParamsView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lmdm/RcParamsView$1;->this$0:Lmdm/RcParamsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V
    .registers 4

    .line 115
    if-nez p2, :cond_4

    const/4 p1, 0x0

    goto :goto_6

    :cond_4
    iget-object p1, p2, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;->content:Ljava/util/Map;

    .line 116
    :goto_6
    iget-object p2, p0, Lmdm/RcParamsView$1;->this$0:Lmdm/RcParamsView;

    invoke-static {p2}, Lmdm/RcParamsView;->access$300(Lmdm/RcParamsView;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lmdm/RcParamsView$1$1;

    invoke-direct {v0, p0, p1}, Lmdm/RcParamsView$1$1;-><init>(Lmdm/RcParamsView$1;Ljava/util/Map;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method
