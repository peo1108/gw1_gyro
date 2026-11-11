.class Lcom/zjx/jyandroid/ForegroundService/KeymapManager$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->B(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$RenameKeymapCompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

.field final synthetic val$keymapId:Ljava/lang/String;

.field final synthetic val$newName:Ljava/lang/String;

.field final synthetic val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$RenameKeymapCompletionHandler;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$RenameKeymapCompletionHandler;Ljava/lang/String;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$16;->this$0:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$16;->val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$RenameKeymapCompletionHandler;

    iput-object p3, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$16;->val$newName:Ljava/lang/String;

    iput-object p4, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$16;->val$keymapId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V
    .locals 7

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$16;->val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$RenameKeymapCompletionHandler;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/base/MError;

    const-wide v1, -0x14737dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v3, -0x14817dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v5, -0x14887dacc755L

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, -0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p2, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$RenameKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;)V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p2, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;->content:Ljava/util/Map;

    const-wide v0, -0x14987dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$16;->val$newName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$16;->this$0:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    iget-object p2, p2, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;->content:Ljava/util/Map;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$16;->val$keymapId:Ljava/lang/String;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$16$1;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$16$1;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$16;)V

    invoke-virtual {p1, p2, v0, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->L(Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$UpdateKeymapCompletionHandler;)V

    return-void
.end method
