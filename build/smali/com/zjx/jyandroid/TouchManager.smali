.class public Lcom/zjx/jyandroid/TouchManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/TouchManager$GeneratedTouchEventsReceiver;
    }
.end annotation


# static fields
.field public static l:Lcom/zjx/jyandroid/TouchManager;

.field public static m:Lcom/zjx/jyandroid/ADB/BinderClientApplication;


# instance fields
.field public a:Ljava/util/concurrent/locks/Lock;

.field public b:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Random;

.field public d:Ljava/lang/Object;

.field public e:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/zjx/jyandroid/TouchManager$GeneratedTouchEventsReceiver;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/io/DataOutputStream;

.field public g:Ljava/io/DataInputStream;

.field public h:Landroid/os/ParcelFileDescriptor;

.field public i:Ljava/lang/Thread;

.field public j:Landroid/os/ParcelFileDescriptor;

.field public k:Lcom/zjx/jyandroid/ReceivingTouchHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/zjx/jyandroid/ADB/BinderClientApplication;->sharedInstance()Lcom/zjx/jyandroid/ADB/BinderClientApplication;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/TouchManager;->m:Lcom/zjx/jyandroid/ADB/BinderClientApplication;

    return-void
.end method

.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/TouchManager;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/TouchManager;->e:Ljava/util/LinkedHashSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/TouchManager;->f:Ljava/io/DataOutputStream;

    iput-object v0, p0, Lcom/zjx/jyandroid/TouchManager;->g:Ljava/io/DataInputStream;

    iput-object v0, p0, Lcom/zjx/jyandroid/TouchManager;->i:Ljava/lang/Thread;

    sget-object v0, Lcom/zjx/jyandroid/TouchManager;->l:Lcom/zjx/jyandroid/TouchManager;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/TouchManager;->a:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/TouchManager;->b:Ljava/util/SortedSet;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/TouchManager;->c:Ljava/util/Random;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/zjx/jyandroid/TouchManager;->b:Ljava/util/SortedSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v0, [Landroid/os/ParcelFileDescriptor;

    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/zjx/jyandroid/TouchManager;->h:Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/zjx/jyandroid/TouchManager;->j:Landroid/os/ParcelFileDescriptor;

    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/zjx/jyandroid/TouchManager;->j:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/TouchManager;->f:Ljava/io/DataOutputStream;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "An touch manager instance already exists"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static f()Lcom/zjx/jyandroid/TouchManager;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/TouchManager;->l:Lcom/zjx/jyandroid/TouchManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/TouchManager;

    invoke-direct {v0}, Lcom/zjx/jyandroid/TouchManager;-><init>()V

    sput-object v0, Lcom/zjx/jyandroid/TouchManager;->l:Lcom/zjx/jyandroid/TouchManager;

    :cond_0
    sget-object v0, Lcom/zjx/jyandroid/TouchManager;->l:Lcom/zjx/jyandroid/TouchManager;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/TouchManager;->h:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public declared-synchronized b(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/TouchManager;->g:Ljava/io/DataInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :cond_0
    :goto_0
    :try_start_2
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/TouchManager;->g:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lcom/zjx/jyandroid/TouchManager;->h()V

    iget-object p1, p0, Lcom/zjx/jyandroid/TouchManager;->g:Ljava/io/DataInputStream;

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/TouchManager;->g(Ljava/io/DataInputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final c(Lcom/zjx/jyandroid/base/Touch/TouchInfo;)V
    .locals 3

    iget v0, p1, Lcom/zjx/jyandroid/base/Touch/TouchInfo;->type:I

    iget v1, p1, Lcom/zjx/jyandroid/base/Touch/TouchInfo;->fingerIndex:I

    iget v2, p1, Lcom/zjx/jyandroid/base/Touch/TouchInfo;->x:F

    iget p1, p1, Lcom/zjx/jyandroid/base/Touch/TouchInfo;->y:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/zjx/jyandroid/TouchManager;->e(IIFF)V

    return-void
.end method

.method public d(Lcom/zjx/jyandroid/TouchManager$GeneratedTouchEventsReceiver;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/TouchManager;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e(IIFF)V
    .locals 11

    const/16 v0, 0x8

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    ushr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p3

    ushr-int/lit8 v3, p3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    ushr-int/lit8 v4, p3, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    ushr-int/lit8 v5, p3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    ushr-int/lit8 v6, p4, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    ushr-int/lit8 v7, p4, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    ushr-int/lit8 v8, p4, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    const/16 v9, 0xc

    new-array v9, v9, [B

    const/4 v10, 0x0

    aput-byte v1, v9, v10

    const/4 v1, 0x1

    aput-byte p1, v9, v1

    const/4 p1, 0x2

    aput-byte v2, v9, p1

    const/4 p1, 0x3

    aput-byte p2, v9, p1

    const/4 p1, 0x4

    aput-byte v3, v9, p1

    const/4 p1, 0x5

    aput-byte v4, v9, p1

    const/4 p1, 0x6

    aput-byte v5, v9, p1

    const/4 p1, 0x7

    aput-byte p3, v9, p1

    aput-byte v6, v9, v0

    const/16 p1, 0x9

    aput-byte v7, v9, p1

    const/16 p1, 0xa

    aput-byte v8, v9, p1

    const/16 p1, 0xb

    aput-byte p4, v9, p1

    :try_start_0
    iget-object p1, p0, Lcom/zjx/jyandroid/TouchManager;->f:Ljava/io/DataOutputStream;

    invoke-virtual {p1, v9}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cannot send motion event: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final declared-synchronized g(Ljava/io/DataInputStream;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/TouchManager;->i:Ljava/lang/Thread;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zjx/jyandroid/ReceivingTouchHandler;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ReceivingTouchHandler;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/TouchManager;->k:Lcom/zjx/jyandroid/ReceivingTouchHandler;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zjx/jyandroid/TouchManager$1;

    invoke-direct {v1, p0, p1}, Lcom/zjx/jyandroid/TouchManager$1;-><init>(Lcom/zjx/jyandroid/TouchManager;Ljava/io/DataInputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/TouchManager;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object p1, p0, Lcom/zjx/jyandroid/TouchManager;->i:Ljava/lang/Thread;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized h()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/TouchManager;->i:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/zjx/jyandroid/TouchManager;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :goto_0
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/zjx/jyandroid/TouchManager;->i:Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public i(FF)I
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ca3d70a    # 0.02f

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/zjx/jyandroid/TouchManager;->j(FFFFIILcom/zjx/jyandroid/base/FloatPoint;)I

    move-result p1

    return p1
.end method

.method public j(FFFFIILcom/zjx/jyandroid/base/FloatPoint;)I
    .locals 12
    .param p7    # Lcom/zjx/jyandroid/base/FloatPoint;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v1, p0

    move-object/from16 v0, p7

    iget-object v2, v1, Lcom/zjx/jyandroid/TouchManager;->b:Ljava/util/SortedSet;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lcom/zjx/jyandroid/TouchManager;->b:Ljava/util/SortedSet;

    invoke-interface {v3}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v4, v1, Lcom/zjx/jyandroid/TouchManager;->b:Ljava/util/SortedSet;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p5, :cond_0

    iget-object v2, v1, Lcom/zjx/jyandroid/TouchManager;->c:Ljava/util/Random;

    mul-int/lit8 v3, p5, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sub-int v2, v2, p5

    int-to-float v2, v2

    add-float/2addr v2, p1

    move v7, v2

    goto :goto_0

    :cond_0
    move v7, p1

    :goto_0
    if-lez p6, :cond_1

    iget-object v2, v1, Lcom/zjx/jyandroid/TouchManager;->c:Ljava/util/Random;

    mul-int/lit8 v3, p6, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sub-int v2, v2, p6

    int-to-float v2, v2

    add-float/2addr v2, p2

    move v8, v2

    goto :goto_1

    :cond_1
    move v8, p2

    :goto_1
    if-eqz v0, :cond_2

    iput v7, v0, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iput v8, v0, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    :cond_2
    new-instance v0, Lcom/zjx/jyandroid/base/Touch/TouchInfo;

    const/4 v5, 0x0

    move-object v4, v0

    move v6, v11

    move v9, p3

    move/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/zjx/jyandroid/base/Touch/TouchInfo;-><init>(IIFFFF)V

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/TouchManager;->c(Lcom/zjx/jyandroid/base/Touch/TouchInfo;)V

    return v11

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public k(FFII)I
    .locals 8

    const v4, 0x3ca3d70a    # 0.02f

    const/4 v7, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/zjx/jyandroid/TouchManager;->j(FFFFIILcom/zjx/jyandroid/base/FloatPoint;)I

    move-result p1

    return p1
.end method

.method public l(FFIILcom/zjx/jyandroid/base/FloatPoint;)I
    .locals 8
    .param p5    # Lcom/zjx/jyandroid/base/FloatPoint;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ca3d70a    # 0.02f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/zjx/jyandroid/TouchManager;->j(FFFFIILcom/zjx/jyandroid/base/FloatPoint;)I

    move-result p1

    return p1
.end method

.method public m(IFF)V
    .locals 6

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3ca3d70a    # 0.02f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/zjx/jyandroid/TouchManager;->n(IFFFF)V

    return-void
.end method

.method public n(IFFFF)V
    .locals 8

    new-instance v7, Lcom/zjx/jyandroid/base/Touch/TouchInfo;

    const/4 v1, 0x1

    move-object v0, v7

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/zjx/jyandroid/base/Touch/TouchInfo;-><init>(IIFFFF)V

    invoke-virtual {p0, v7}, Lcom/zjx/jyandroid/TouchManager;->c(Lcom/zjx/jyandroid/base/Touch/TouchInfo;)V

    return-void
.end method

.method public o(IFF)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3ca3d70a    # 0.02f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/zjx/jyandroid/TouchManager;->p(IFFFFII)V

    return-void
.end method

.method public p(IFFFFII)V
    .locals 7

    if-gez p1, :cond_0

    return-void

    :cond_0
    if-lez p6, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/TouchManager;->c:Ljava/util/Random;

    mul-int/lit8 v1, p6, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sub-int/2addr v0, p6

    int-to-float p6, v0

    add-float/2addr p2, p6

    :cond_1
    move v3, p2

    if-lez p7, :cond_2

    iget-object p2, p0, Lcom/zjx/jyandroid/TouchManager;->c:Ljava/util/Random;

    mul-int/lit8 p6, p7, 0x2

    invoke-virtual {p2, p6}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    sub-int/2addr p2, p7

    int-to-float p2, p2

    add-float/2addr p3, p2

    :cond_2
    move v4, p3

    new-instance p2, Lcom/zjx/jyandroid/base/Touch/TouchInfo;

    const/4 v1, 0x2

    move-object v0, p2

    move v2, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/zjx/jyandroid/base/Touch/TouchInfo;-><init>(IIFFFF)V

    invoke-virtual {p0, p2}, Lcom/zjx/jyandroid/TouchManager;->c(Lcom/zjx/jyandroid/base/Touch/TouchInfo;)V

    iget-object p2, p0, Lcom/zjx/jyandroid/TouchManager;->b:Ljava/util/SortedSet;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lcom/zjx/jyandroid/TouchManager;->b:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public q(IFFII)V
    .locals 8

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3ca3d70a    # 0.02f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/zjx/jyandroid/TouchManager;->p(IFFFFII)V

    return-void
.end method

.method public r(Lcom/zjx/jyandroid/TouchManager$GeneratedTouchEventsReceiver;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/TouchManager;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    return-void
.end method
