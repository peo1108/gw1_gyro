.class public Lmdm/DeviceInfoView;
.super Landroid/widget/LinearLayout;
.source "DeviceInfoView.java"


# instance fields
.field private final tick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance p1, Lmdm/DeviceInfoView$1;

    invoke-direct {p1, p0}, Lmdm/DeviceInfoView$1;-><init>(Lmdm/DeviceInfoView;)V

    iput-object p1, p0, Lmdm/DeviceInfoView;->tick:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance p1, Lmdm/DeviceInfoView$1;

    invoke-direct {p1, p0}, Lmdm/DeviceInfoView$1;-><init>(Lmdm/DeviceInfoView;)V

    iput-object p1, p0, Lmdm/DeviceInfoView;->tick:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance p1, Lmdm/DeviceInfoView$1;

    invoke-direct {p1, p0}, Lmdm/DeviceInfoView$1;-><init>(Lmdm/DeviceInfoView;)V

    iput-object p1, p0, Lmdm/DeviceInfoView;->tick:Ljava/lang/Runnable;

    return-void
.end method

.method private set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 42
    invoke-virtual {p0, p1}, Lmdm/DeviceInfoView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    .line 43
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_d

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method


# virtual methods
.method fill()V
    .registers 8

    const-string v0, "Android "

    .line 48
    :try_start_2
    const-string v1, "v_model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lmdm/DeviceInfoView;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "v_os"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lmdm/DeviceInfoView;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lmdm/DeviceInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 51
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 52
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 53
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 54
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 55
    const-string v2, "v_res"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u00d7 "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lmdm/DeviceInfoView;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lmdm/DeviceInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 57
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 58
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 59
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const/16 v0, 0x14

    shr-long/2addr v2, v0

    .line 60
    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    shr-long v0, v4, v0

    .line 61
    const-string v4, "v_mem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " MB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lmdm/DeviceInfoView;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v4, "bar_mem"

    invoke-virtual {p0, v4}, Lmdm/DeviceInfoView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 63
    instance-of v5, v4, Landroid/widget/ProgressBar;

    if-eqz v5, :cond_b7

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_b7

    .line 64
    check-cast v4, Landroid/widget/ProgressBar;

    const/16 v5, 0x3e8

    .line 65
    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    const-wide/16 v5, 0x3e8

    mul-long/2addr v0, v5

    .line 66
    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_b7
    .catchall {:try_start_2 .. :try_end_b7} :catchall_b7

    :catchall_b7
    :cond_b7
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 30
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 31
    iget-object v0, p0, Lmdm/DeviceInfoView;->tick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmdm/DeviceInfoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 32
    iget-object v0, p0, Lmdm/DeviceInfoView;->tick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmdm/DeviceInfoView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 37
    iget-object v0, p0, Lmdm/DeviceInfoView;->tick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmdm/DeviceInfoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 38
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method
