.class Lmdm/LocalKeymapStore$7;
.super Ljava/lang/Object;
.source "LocalKeymapStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/LocalKeymapStore;->setSelected(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$SetSelectedKeymapCompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$h:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$SetSelectedKeymapCompletionHandler;


# direct methods
.method constructor <init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$SetSelectedKeymapCompletionHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 560
    iput-object p1, p0, Lmdm/LocalKeymapStore$7;->val$h:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$SetSelectedKeymapCompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 560
    iget-object v0, p0, Lmdm/LocalKeymapStore$7;->val$h:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$SetSelectedKeymapCompletionHandler;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmdm/LocalKeymapStore$7;->val$h:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$SetSelectedKeymapCompletionHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$SetSelectedKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;)V

    :cond_a
    return-void
.end method
