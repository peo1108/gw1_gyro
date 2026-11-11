.class public Lcom/zjx/jyandroid/Extensions/pubg/b$c;
.super Landroid/os/HandlerThread;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/pubg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Lk/a;

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:I

.field public i:Landroid/os/Handler;

.field public final synthetic j:Lcom/zjx/jyandroid/Extensions/pubg/b;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->j:Lcom/zjx/jyandroid/Extensions/pubg/b;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->a:Z

    .line 4
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->b:Z

    .line 5
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->c:Z

    .line 6
    new-instance p1, Lk/a;

    invoke-direct {p1}, Lk/a;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->d:Lk/a;

    .line 7
    new-instance p1, Lcom/zjx/jyandroid/Extensions/pubg/b$c$a;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/b$c$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/b$c;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->e:Ljava/lang/Runnable;

    .line 8
    new-instance p1, Lcom/zjx/jyandroid/Extensions/pubg/b$c$b;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/b$c$b;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/b$c;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->f:Ljava/lang/Runnable;

    .line 9
    new-instance p1, Lcom/zjx/jyandroid/Extensions/pubg/b$c$c;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/b$c$c;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/b$c;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->g:Ljava/lang/Runnable;

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->h:I

    return-void
.end method

.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/b;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->j:Lcom/zjx/jyandroid/Extensions/pubg/b;

    .line 12
    invoke-direct {p0, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->a:Z

    .line 14
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->b:Z

    .line 15
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->c:Z

    .line 16
    new-instance p1, Lk/a;

    invoke-direct {p1}, Lk/a;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->d:Lk/a;

    .line 17
    new-instance p1, Lcom/zjx/jyandroid/Extensions/pubg/b$c$a;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/b$c$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/b$c;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->e:Ljava/lang/Runnable;

    .line 18
    new-instance p1, Lcom/zjx/jyandroid/Extensions/pubg/b$c$b;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/b$c$b;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/b$c;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->f:Ljava/lang/Runnable;

    .line 19
    new-instance p1, Lcom/zjx/jyandroid/Extensions/pubg/b$c$c;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/b$c$c;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/b$c;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->g:Ljava/lang/Runnable;

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->h:I

    return-void
.end method

.method public static synthetic a(Lcom/zjx/jyandroid/Extensions/pubg/b$c;)Lk/a;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->d:Lk/a;

    return-object p0
.end method

.method public static synthetic b(Lcom/zjx/jyandroid/Extensions/pubg/b$c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->c:Z

    return p0
.end method

.method public static synthetic c(Lcom/zjx/jyandroid/Extensions/pubg/b$c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->c:Z

    return p1
.end method

.method public static synthetic d(Lcom/zjx/jyandroid/Extensions/pubg/b$c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->a:Z

    return p0
.end method

.method public static synthetic e(Lcom/zjx/jyandroid/Extensions/pubg/b$c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->a:Z

    return p1
.end method

.method public static synthetic f(Lcom/zjx/jyandroid/Extensions/pubg/b$c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->b:Z

    return p0
.end method

.method public static synthetic g(Lcom/zjx/jyandroid/Extensions/pubg/b$c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->b:Z

    return p1
.end method


# virtual methods
.method public eventOccurred(Ljava/util/LinkedList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/base/InputEvents/InputEvent;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->j:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->f:Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->a(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->i:Landroid/os/Handler;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/b$c$e;

    invoke-direct {v1, p0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/b$c$e;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/b$c;Ljava/util/LinkedList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return v2
.end method

.method public h(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->j:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->y:Lcom/zjx/jyandroid/Extensions/pubg/b$l;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->j:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->b(Lcom/zjx/jyandroid/Extensions/pubg/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->j:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->a(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/b$i;->onCurrentAimingStatusChanged(Z)V

    :cond_1
    return-void
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->c:Z

    return v0
.end method

.method public j(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->c:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->c:Z

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->i:Landroid/os/Handler;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/b$c$d;

    invoke-direct {v1, p0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/b$c$d;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/b$c;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public k(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->c:Z

    return-void
.end method

.method public l(Ljava/util/LinkedList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/base/InputEvents/InputEvent;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->j:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->f:Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->a(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v1

    sget-object v3, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->TouchEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    if-ne v1, v3, :cond_1

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;

    iget-object v1, v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->touchType:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    sget-object v3, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->down:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    if-ne v1, v3, :cond_3

    new-instance v1, Lcom/zjx/jyandroid/base/FloatPoint;

    iget v3, v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->x:F

    iget v4, v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->y:F

    invoke-direct {v1, v3, v4}, Lcom/zjx/jyandroid/base/FloatPoint;-><init>(FF)V

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->j:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/pubg/b;->f:Landroid/graphics/Rect;

    invoke-static {v3, v1}, Lcom/zjx/jyandroid/base/util/b;->E(Landroid/graphics/Rect;Lcom/zjx/jyandroid/base/FloatPoint;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->j:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/b;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$a;

    sget-object v3, Lcom/zjx/jyandroid/Extensions/pubg/c$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$a;

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->h(Z)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x352

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->j(I)V

    :goto_1
    iget v0, v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->index:I

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->h:I

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->up:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    if-ne v1, v3, :cond_1

    iget v0, v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->index:I

    iget v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->h:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->j:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$a;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$a;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->h(Z)V

    goto :goto_0

    :cond_4
    :goto_2
    return v2
.end method

.method public quit()Z
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->j:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->f(Lcom/zjx/jyandroid/Extensions/pubg/b;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->unregisterEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    :cond_0
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 2

    invoke-super {p0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->i:Landroid/os/Handler;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->j:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->f(Lcom/zjx/jyandroid/Extensions/pubg/b;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->registerEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    :cond_0
    return-void
.end method
