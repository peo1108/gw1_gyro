.class Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->USBInputDataReceived([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

.field final synthetic val$events:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;Ljava/util/LinkedList;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$1;->this$0:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    iput-object p2, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$1;->val$events:Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$1;->this$0:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    iget-object v0, v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->eventDispatchCenter:Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    iget-object v1, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$1;->val$events:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->eventOccurred(Ljava/util/LinkedList;)Z

    return-void
.end method
