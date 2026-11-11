.class Lmdm/LocalKeymapStore$3;
.super Ljava/lang/Object;
.source "LocalKeymapStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/LocalKeymapStore;->createCommon(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$h:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 447
    iput-object p1, p0, Lmdm/LocalKeymapStore$3;->val$h:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;

    iput-object p2, p0, Lmdm/LocalKeymapStore$3;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 447
    iget-object v0, p0, Lmdm/LocalKeymapStore$3;->val$h:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmdm/LocalKeymapStore$3;->val$h:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lmdm/LocalKeymapStore$3;->val$id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_c
    return-void
.end method
