.class Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$5$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$5$1;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$5$1;

.field final synthetic val$keymap:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$5$1;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$5$1$1;->this$2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$5$1;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$5$1$1;->val$keymap:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$5$1$1;->this$2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$5$1;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$5$1;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$5;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$5;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$5$1$1;->val$keymap:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;->content:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$1202(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;Ljava/util/Map;)Ljava/util/Map;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$5$1$1;->this$2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$5$1;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$5$1;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$5;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$5;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$1300(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$5$1$1;->val$keymap:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;->content:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->updateKeymap(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$5$1$1;->this$2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$5$1;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$5$1;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$5;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$5;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$1300(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->start()V

    return-void
.end method
