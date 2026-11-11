.class Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$NodeWithStartKeyCodeWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NodeWithStartKeyCodeWrapper"
.end annotation


# instance fields
.field public nodes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;",
            ">;"
        }
    .end annotation
.end field

.field public final startedActionKeycode:I

.field final synthetic this$0:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$NodeWithStartKeyCodeWrapper;->this$0:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$NodeWithStartKeyCodeWrapper;->startedActionKeycode:I

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$NodeWithStartKeyCodeWrapper;->nodes:Ljava/util/LinkedList;

    return-void
.end method
