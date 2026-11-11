.class public final Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;
.super Ljava/lang/Object;
.source "XSourceEventGrabber"


# static fields
.field public static volatile p:Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;


# instance fields
.field public e:Z

.field public f:Z

.field public k:Lu5/a;

.field public l:Lu5/b;

.field public n:Landroid/os/FileObserver;

.field public o:[Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;

    iput-object v0, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->o:[Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;

    return-void
.end method

.method public static E()Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;
    .locals 2

    sget-object v0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->p:Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;

    if-nez v0, :cond_1

    const-class v1, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->p:Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;

    invoke-direct {v0}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;-><init>()V

    sput-object v0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->p:Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static native checkIsKeyboardInputDeviceNative(Ljava/lang/String;)Z
.end method

.method public static native checkIsMouseInputDeviceNative(Ljava/lang/String;)Z
.end method

.method public static native getDeviceNameNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static q()Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/io/File;

    const-string v1, "u\u00a3Q\u00d7!\u0012\u0086%\u00b7["

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_2

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "?\u00b1Q\u00cfz"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$a;

    invoke-direct {v0}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$a;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-object v1
.end method

.method public static native startGrabbingEventsFromDeviceNative(Ljava/lang/String;Lcom/zjx/gw2lic/devicehid/Gw2RawListener;)Z
.end method

.method public static native stopGrabbingEventsFromDeviceNative(Ljava/lang/String;)V
.end method


# virtual methods
.method public final C(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->p(Ljava/io/File;)Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;

    move-result-object v0

    iget v1, v0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->c:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->o:[Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;

    invoke-virtual {p0, p1}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->o(Ljava/lang/String;)I

    move-result p1

    aput-object v0, v1, p1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->e:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->b(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2, v1}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->c(IZ)V

    :cond_0
    iget-boolean v2, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->f:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2, v1}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->c(IZ)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->v(Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;)V

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public F()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->z()V

    iget-object v0, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->n:Landroid/os/FileObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$h;

    invoke-direct {v0, p0}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$h;-><init>(Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;)V

    iput-object v0, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->n:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public I()V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->o:[Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->b(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3, v0}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->c(IZ)V

    iget-boolean v3, v2, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->e:Z

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->d:I

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v3}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->stopGrabbingEventsFromDeviceNative(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iput-boolean v0, v2, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->e:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->k:Lu5/a;

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final l(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->o:[Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;

    invoke-virtual {p0, p1}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->o(Ljava/lang/String;)I

    move-result v1

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->e:Z

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->stopGrabbingEventsFromDeviceNative(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    aput-object p1, v0, v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public o(Ljava/lang/String;)I
    .locals 2

    const-string v0, "\u0006\u0083"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u000f\u00a9G\u00d4~\u000b\u0087\'\u00b6J\u00f8)\u001f\u008d \u00c8^\u00b7t\u0010\u00aa#"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x40

    if-lt p1, v0, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u0013\u00a9D\u00d4z[\u0081;\u00a6J\u00e4)\u0019\u0096$\u009dE\u00f1$\u0003\u00bf%\u00df@"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return p1
.end method

.method public final p(Ljava/io/File;)Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;
    .locals 4

    new-instance v0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;

    invoke-direct {v0, p0}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;-><init>(Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->a:Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->getDeviceNameNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->checkIsKeyboardInputDeviceNative(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->d(IZ)V

    invoke-static {v1}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->checkIsMouseInputDeviceNative(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->d(IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public r()Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->q()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {p0, v2}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->p(Ljava/io/File;)Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;

    move-result-object v2

    iget v3, v2, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->c:I

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final u(Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;)Z
    .locals 5

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->k:Lu5/a;

    if-eqz v1, :cond_0

    new-instance v2, Lv5/b;

    invoke-direct {v2, v1}, Lv5/b;-><init>(Lu5/a;)V

    iput-object v2, p1, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->f:Lv5/b;

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->l:Lu5/b;

    if-eqz v1, :cond_1

    new-instance v2, Lv5/c;

    invoke-direct {v2, v1}, Lv5/c;-><init>(Lu5/b;)V

    iput-object v2, p1, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->g:Lv5/c;

    :cond_1
    iget-object v0, p1, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->f:Lv5/b;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->g:Lv5/c;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    iget-object v0, p1, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->a:Ljava/lang/String;

    new-instance v1, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$b;

    invoke-direct {v1, p0, p1}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$b;-><init>(Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;)V

    :try_start_0
    invoke-static {v0, v1}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->startGrabbingEventsFromDeviceNative(Ljava/lang/String;Lcom/zjx/gw2lic/devicehid/Gw2RawListener;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->e:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->e:Z

    return v0
.end method

.method public final v(Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;)V
    .locals 1

    iget-boolean v0, p1, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->e:Z

    if-nez v0, :cond_0

    iget v0, p1, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->d:I

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->u(Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;)Z

    :cond_0
    return-void
.end method

.method public w(Lu5/a;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->k:Lu5/a;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->e:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->o:[Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->f:Lv5/b;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->k:Lu5/a;

    new-instance v4, Lv5/b;

    invoke-direct {v4, v3}, Lv5/b;-><init>(Lu5/a;)V

    iput-object v4, v1, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->f:Lv5/b;

    :cond_0
    invoke-virtual {v1, v2, p1}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->c(IZ)V

    invoke-virtual {p0, v1}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->v(Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public x(Lu5/b;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->l:Lu5/b;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->f:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->o:[Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->g:Lv5/c;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->l:Lu5/b;

    new-instance v4, Lv5/c;

    invoke-direct {v4, v3}, Lv5/c;-><init>(Lu5/b;)V

    iput-object v4, v1, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->g:Lv5/c;

    :cond_0
    invoke-virtual {v1, v2, p1}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->c(IZ)V

    invoke-virtual {p0, v1}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->v(Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final z()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->o:[Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;

    :try_start_0
    iget-object v2, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->o:[Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;

    iget-object v3, v1, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->a:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->o(Ljava/lang/String;)I

    move-result v3

    aput-object v1, v2, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    return-void
.end method
