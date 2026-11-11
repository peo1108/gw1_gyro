.class public Lcom/zjx/jyandroid/Extensions/pubg/b$j;
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
    name = "j"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lk/a;

.field public d:I

.field public e:Landroid/os/Handler;

.field public f:Ljava/lang/String;

.field public g:Lcom/zjx/jyandroid/Extensions/pubg/c$a;

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;

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
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->j:Lcom/zjx/jyandroid/Extensions/pubg/b;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->a:Z

    .line 4
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->b:Z

    .line 5
    new-instance p2, Lk/a;

    invoke-direct {p2}, Lk/a;-><init>()V

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->c:Lk/a;

    .line 6
    iput p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->d:I

    .line 7
    sget-object p1, Lcom/zjx/jyandroid/Extensions/pubg/c$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$a;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->g:Lcom/zjx/jyandroid/Extensions/pubg/c$a;

    .line 8
    new-instance p1, Lcom/zjx/jyandroid/Extensions/pubg/b$j$a;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/b$j$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/b$j;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->h:Ljava/lang/Runnable;

    .line 9
    new-instance p1, Lcom/zjx/jyandroid/Extensions/pubg/b$j$b;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/b$j$b;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/b$j;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->i:Ljava/lang/Runnable;

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

    .line 10
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->j:Lcom/zjx/jyandroid/Extensions/pubg/b;

    .line 11
    invoke-direct {p0, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->a:Z

    .line 13
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->b:Z

    .line 14
    new-instance p2, Lk/a;

    invoke-direct {p2}, Lk/a;-><init>()V

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->c:Lk/a;

    .line 15
    iput p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->d:I

    .line 16
    sget-object p1, Lcom/zjx/jyandroid/Extensions/pubg/c$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$a;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->g:Lcom/zjx/jyandroid/Extensions/pubg/c$a;

    .line 17
    new-instance p1, Lcom/zjx/jyandroid/Extensions/pubg/b$j$a;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/b$j$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/b$j;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->h:Ljava/lang/Runnable;

    .line 18
    new-instance p1, Lcom/zjx/jyandroid/Extensions/pubg/b$j$b;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/b$j$b;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/b$j;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->i:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/zjx/jyandroid/Extensions/pubg/b$j;)I
    .locals 2

    iget v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->d:I

    return v0
.end method


# virtual methods
.method public eventOccurred(Ljava/util/LinkedList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/base/InputEvents/InputEvent;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->j:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->i:Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->a(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v1

    sget-object v3, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->KeyboardEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    if-ne v1, v3, :cond_1

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;

    iget-boolean v1, v0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;->down:Z

    if-eqz v1, :cond_1

    iget v0, v0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;->usage:I

    const/16 v1, -0x1f

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const/16 v1, -0x20

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return v2
.end method

.method public quit()Z
    .locals 1

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->unregisterEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 3

    invoke-super {p0}, Ljava/lang/Thread;->start()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/wps_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->f:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->e:Landroid/os/Handler;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->registerEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    return-void
.end method
