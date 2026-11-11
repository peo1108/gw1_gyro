.class public final Lmdm/RootGate;
.super Ljava/lang/Object;
.source "RootGate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmdm/RootGate$Cover;
    }
.end annotation


# static fields
.field private static final BG:I = -0xf4f4f5

.field private static final DIM:I = -0x57637a

.field private static final GOLD:I = -0x172c5c

.field private static final RECHECK_GUARD_MS:J = 0x7d0L

.field private static final TEXT:I = -0xc1528

.field private static final TIMEOUT_MS:J = 0x7530L

.field private static checking:Z

.field private static cover:Lmdm/RootGate$Cover;

.field private static lastFailAt:J

.field private static volatile ok:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 27
    sget-boolean v0, Lmdm/RootGate;->checking:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .line 27
    sput-boolean p0, Lmdm/RootGate;->checking:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    .line 27
    sput-boolean p0, Lmdm/RootGate;->ok:Z

    return p0
.end method

.method static synthetic access$200()V
    .registers 0

    .line 27
    invoke-static {}, Lmdm/RootGate;->removeCover()V

    return-void
.end method

.method static synthetic access$302(J)J
    .registers 2

    .line 27
    sput-wide p0, Lmdm/RootGate;->lastFailAt:J

    return-wide p0
.end method

.method static synthetic access$400()Lmdm/RootGate$Cover;
    .registers 1

    .line 27
    sget-object v0, Lmdm/RootGate;->cover:Lmdm/RootGate$Cover;

    return-object v0
.end method

.method static synthetic access$500()V
    .registers 0

    .line 27
    invoke-static {}, Lmdm/RootGate;->check()V

    return-void
.end method

.method private static check()V
    .registers 3

    .line 61
    const/4 v0, 0x1

    sput-boolean v0, Lmdm/RootGate;->checking:Z

    .line 62
    sget-object v0, Lmdm/RootGate;->cover:Lmdm/RootGate$Cover;

    if-eqz v0, :cond_c

    sget-object v0, Lmdm/RootGate;->cover:Lmdm/RootGate$Cover;

    invoke-virtual {v0}, Lmdm/RootGate$Cover;->showChecking()V

    .line 63
    :cond_c
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 64
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lmdm/RootGate$1;

    invoke-direct {v2, v0}, Lmdm/RootGate$1;-><init>(Landroid/os/Handler;)V

    const-string v0, "mdm-rootgate"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 83
    return-void
.end method

.method static exitApp(Landroid/app/Activity;)V
    .registers 4

    .line 248
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 249
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lmdm/RootGate$3;

    invoke-direct {v0}, Lmdm/RootGate$3;-><init>()V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 253
    return-void
.end method

.method static hasRoot()Z
    .registers 7

    .line 94
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Process;

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lmdm/RootGate$2;

    invoke-direct {v4, v1, v2}, Lmdm/RootGate$2;-><init>([Ljava/lang/Process;Ljava/lang/StringBuilder;)V

    const-string v5, "mdm-rootgate-su"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 119
    const-wide/16 v4, 0x7530

    :try_start_19
    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 121
    goto :goto_1e

    .line 120
    :catch_1d
    move-exception v4

    .line 122
    :goto_1e
    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_34

    .line 123
    monitor-enter v1

    :try_start_26
    aget-object v0, v1, v4

    if-eqz v0, :cond_2f

    aget-object v0, v1, v4

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_2f
    monitor-exit v1

    .line 124
    return v4

    .line 123
    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_31

    throw v0

    .line 127
    :cond_34
    monitor-enter v2

    :try_start_35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_57

    .line 128
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v3, v4

    :goto_42
    if-ge v3, v2, :cond_56

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    return v0

    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 129
    :cond_56
    return v4

    .line 127
    :catchall_57
    move-exception v0

    :try_start_58
    monitor-exit v2
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v0
.end method

.method public static onResume(Landroid/app/Activity;)V
    .registers 5

    .line 42
    sget-boolean v0, Lmdm/RootGate;->ok:Z

    if-eqz v0, :cond_8

    .line 43
    invoke-static {}, Lmdm/RootGate;->removeCover()V

    .line 44
    return-void

    .line 46
    :cond_8
    sget-object v0, Lmdm/RootGate;->cover:Lmdm/RootGate$Cover;

    if-eqz v0, :cond_1c

    sget-object v0, Lmdm/RootGate;->cover:Lmdm/RootGate$Cover;

    iget-object v0, v0, Lmdm/RootGate$Cover;->activity:Landroid/app/Activity;

    if-ne v0, p0, :cond_1c

    sget-object v0, Lmdm/RootGate;->cover:Lmdm/RootGate$Cover;

    iget-object v0, v0, Lmdm/RootGate$Cover;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_48

    .line 47
    :cond_1c
    invoke-static {}, Lmdm/RootGate;->removeCover()V

    .line 48
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 49
    if-nez v0, :cond_34

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 50
    :cond_34
    new-instance v1, Lmdm/RootGate$Cover;

    invoke-direct {v1, p0}, Lmdm/RootGate$Cover;-><init>(Landroid/app/Activity;)V

    sput-object v1, Lmdm/RootGate;->cover:Lmdm/RootGate$Cover;

    .line 51
    sget-object p0, Lmdm/RootGate;->cover:Lmdm/RootGate$Cover;

    iget-object p0, p0, Lmdm/RootGate$Cover;->root:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    :cond_48
    sget-object p0, Lmdm/RootGate;->cover:Lmdm/RootGate$Cover;

    iget-object p0, p0, Lmdm/RootGate$Cover;->root:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 55
    sget-boolean p0, Lmdm/RootGate;->checking:Z

    if-eqz p0, :cond_54

    return-void

    .line 56
    :cond_54
    sget-wide v0, Lmdm/RootGate;->lastFailAt:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_6a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lmdm/RootGate;->lastFailAt:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p0, v0, v2

    if-gez p0, :cond_6a

    return-void

    .line 57
    :cond_6a
    invoke-static {}, Lmdm/RootGate;->check()V

    .line 58
    return-void
.end method

.method private static removeCover()V
    .registers 2

    .line 86
    sget-object v0, Lmdm/RootGate;->cover:Lmdm/RootGate$Cover;

    if-nez v0, :cond_5

    return-void

    .line 87
    :cond_5
    sget-object v0, Lmdm/RootGate;->cover:Lmdm/RootGate$Cover;

    iget-object v0, v0, Lmdm/RootGate$Cover;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 88
    if-eqz v0, :cond_18

    sget-object v1, Lmdm/RootGate;->cover:Lmdm/RootGate$Cover;

    iget-object v1, v1, Lmdm/RootGate$Cover;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 89
    :cond_18
    const/4 v0, 0x0

    sput-object v0, Lmdm/RootGate;->cover:Lmdm/RootGate$Cover;

    .line 90
    return-void
.end method
