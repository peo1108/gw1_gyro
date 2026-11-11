.class Lmdm/LocalKeymapStore$2;
.super Ljava/lang/Object;
.source "LocalKeymapStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/LocalKeymapStore;->getKeymap(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$h:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;

.field final synthetic val$keymap:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;


# direct methods
.method constructor <init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 406
    iput-object p1, p0, Lmdm/LocalKeymapStore$2;->val$h:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;

    iput-object p2, p0, Lmdm/LocalKeymapStore$2;->val$keymap:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 406
    iget-object v0, p0, Lmdm/LocalKeymapStore$2;->val$h:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmdm/LocalKeymapStore$2;->val$h:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lmdm/LocalKeymapStore$2;->val$keymap:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

    invoke-interface {v0, v1, v2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V

    :cond_c
    return-void
.end method
