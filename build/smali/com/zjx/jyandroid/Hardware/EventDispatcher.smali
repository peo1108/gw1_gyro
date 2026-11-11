.class Lcom/zjx/jyandroid/Hardware/EventDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field eventsToDispatch:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/base/InputEvents/InputEvent;",
            ">;"
        }
    .end annotation
.end field

.field public inputEventReceivers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/LinkedList;Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/base/InputEvents/InputEvent;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Hardware/EventDispatcher;->eventsToDispatch:Ljava/util/LinkedList;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Hardware/EventDispatcher;->inputEventReceivers:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/EventDispatcher;->inputEventReceivers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;

    iget-object v2, p0, Lcom/zjx/jyandroid/Hardware/EventDispatcher;->eventsToDispatch:Ljava/util/LinkedList;

    invoke-interface {v1, v2}, Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;->eventOccurred(Ljava/util/LinkedList;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method
