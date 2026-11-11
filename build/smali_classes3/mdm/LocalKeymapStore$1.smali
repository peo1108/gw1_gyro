.class Lmdm/LocalKeymapStore$1;
.super Ljava/lang/Object;
.source "LocalKeymapStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/LocalKeymapStore;->getKeymapList(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$h:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;

.field final synthetic val$list:Ljava/util/LinkedList;

.field final synthetic val$selected:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;Ljava/util/LinkedList;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 397
    iput-object p1, p0, Lmdm/LocalKeymapStore$1;->val$h:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;

    iput-object p2, p0, Lmdm/LocalKeymapStore$1;->val$list:Ljava/util/LinkedList;

    iput-object p3, p0, Lmdm/LocalKeymapStore$1;->val$selected:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 397
    iget-object v0, p0, Lmdm/LocalKeymapStore$1;->val$h:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lmdm/LocalKeymapStore$1;->val$h:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;

    iget-object v1, p0, Lmdm/LocalKeymapStore$1;->val$list:Ljava/util/LinkedList;

    iget-object v2, p0, Lmdm/LocalKeymapStore$1;->val$selected:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/util/LinkedList;Ljava/lang/String;)V

    :cond_e
    return-void
.end method
