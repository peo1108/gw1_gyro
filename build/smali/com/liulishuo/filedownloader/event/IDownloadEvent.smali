.class public abstract Lcom/liulishuo/filedownloader/event/IDownloadEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public callback:Ljava/lang/Runnable;

.field protected final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/liulishuo/filedownloader/event/IDownloadEvent;->callback:Ljava/lang/Runnable;

    .line 3
    iput-object p1, p0, Lcom/liulishuo/filedownloader/event/IDownloadEvent;->id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/liulishuo/filedownloader/event/IDownloadEvent;->callback:Ljava/lang/Runnable;

    .line 6
    iput-object p1, p0, Lcom/liulishuo/filedownloader/event/IDownloadEvent;->id:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 7
    const-string p2, "do not handle ORDER any more, %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/event/IDownloadEvent;->id:Ljava/lang/String;

    return-object v0
.end method
