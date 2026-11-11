.class public Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;
.super Landroid/os/HandlerThread;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PictureCollector"
.end annotation


# instance fields
.field private aimStatusRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/AimStatusRecognizer;

.field private aiming:Z

.field public aimingMode:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$AimingMode;

.field dirname:Ljava/lang/String;

.field private fileNameInt:I

.field public handler:Landroid/os/Handler;

.field private lastRightButtonDown:Z

.field private saveWeaponPictureRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;->lastRightButtonDown:Z

    .line 4
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;->aiming:Z

    .line 5
    new-instance p2, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/AimStatusRecognizer;

    invoke-direct {p2}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/AimStatusRecognizer;-><init>()V

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;->aimStatusRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/AimStatusRecognizer;

    .line 6
    iput p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;->fileNameInt:I

    .line 7
    sget-object p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$AimingMode;->SWITCH:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$AimingMode;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;->aimingMode:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$AimingMode;

    .line 8
    new-instance p1, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector$1;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;->saveWeaponPictureRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;Ljava/lang/String;I)V
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

    .line 9
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    .line 10
    invoke-direct {p0, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;->lastRightButtonDown:Z

    .line 12
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;->aiming:Z

    .line 13
    new-instance p2, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/AimStatusRecognizer;

    invoke-direct {p2}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/AimStatusRecognizer;-><init>()V

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;->aimStatusRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/AimStatusRecognizer;

    .line 14
    iput p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;->fileNameInt:I

    .line 15
    sget-object p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$AimingMode;->SWITCH:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$AimingMode;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;->aimingMode:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$AimingMode;

    .line 16
    new-instance p1, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector$1;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;->saveWeaponPictureRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic access$508(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;)I
    .locals 2

    iget v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;->fileNameInt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;->fileNameInt:I

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

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->firstWeaponRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;

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

    if-eqz v0, :cond_2

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

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;->saveWeaponPictureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
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

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;->dirname:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;->dirname:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;->handler:Landroid/os/Handler;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->registerEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    return-void
.end method
