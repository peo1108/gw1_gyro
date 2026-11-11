.class public Lmdm/GyroStatusView;
.super Landroid/widget/TextView;
.source "GyroStatusView.java"


# static fields
.field private static final DIM:I = -0x57637a

.field private static final GOLD:I = -0x172c5c

.field private static final GREEN:I = -0x841c5e

.field static final M_DISABLED:I = 0x4

.field static final M_MISSING:I = 0x2

.field static final M_OK:I = 0x1

.field static final M_REBOOT:I = 0x3

.field static final M_UNKNOWN:I = 0x0

.field private static final RED:I = -0x7580


# instance fields
.field private volatile checking:Z

.field private lastCheck:J

.field private volatile module:I

.field private shown:Ljava/lang/String;

.field private final tick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lmdm/GyroStatusView;->module:I

    .line 27
    const-string p1, ""

    iput-object p1, p0, Lmdm/GyroStatusView;->shown:Ljava/lang/String;

    .line 29
    new-instance p1, Lmdm/GyroStatusView$1;

    invoke-direct {p1, p0}, Lmdm/GyroStatusView$1;-><init>(Lmdm/GyroStatusView;)V

    iput-object p1, p0, Lmdm/GyroStatusView;->tick:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lmdm/GyroStatusView;->module:I

    .line 27
    const-string p1, ""

    iput-object p1, p0, Lmdm/GyroStatusView;->shown:Ljava/lang/String;

    .line 29
    new-instance p1, Lmdm/GyroStatusView$1;

    invoke-direct {p1, p0}, Lmdm/GyroStatusView$1;-><init>(Lmdm/GyroStatusView;)V

    iput-object p1, p0, Lmdm/GyroStatusView;->tick:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lmdm/GyroStatusView;->module:I

    .line 27
    const-string p1, ""

    iput-object p1, p0, Lmdm/GyroStatusView;->shown:Ljava/lang/String;

    .line 29
    new-instance p1, Lmdm/GyroStatusView$1;

    invoke-direct {p1, p0}, Lmdm/GyroStatusView$1;-><init>(Lmdm/GyroStatusView;)V

    iput-object p1, p0, Lmdm/GyroStatusView;->tick:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lmdm/GyroStatusView;)J
    .registers 3

    .line 15
    iget-wide v0, p0, Lmdm/GyroStatusView;->lastCheck:J

    return-wide v0
.end method

.method static synthetic access$002(Lmdm/GyroStatusView;J)J
    .registers 3

    .line 15
    iput-wide p1, p0, Lmdm/GyroStatusView;->lastCheck:J

    return-wide p1
.end method

.method static synthetic access$100(Lmdm/GyroStatusView;)V
    .registers 1

    .line 15
    invoke-direct {p0}, Lmdm/GyroStatusView;->checkModules()V

    return-void
.end method

.method static synthetic access$202(Lmdm/GyroStatusView;I)I
    .registers 2

    .line 15
    iput p1, p0, Lmdm/GyroStatusView;->module:I

    return p1
.end method

.method static synthetic access$302(Lmdm/GyroStatusView;Z)Z
    .registers 2

    .line 15
    iput-boolean p1, p0, Lmdm/GyroStatusView;->checking:Z

    return p1
.end method

.method private checkModules()V
    .registers 4

    .line 81
    iget-boolean v0, p0, Lmdm/GyroStatusView;->checking:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lmdm/GyroStatusView;->checking:Z

    .line 83
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmdm/GyroStatusView$2;

    invoke-direct {v1, p0}, Lmdm/GyroStatusView$2;-><init>(Lmdm/GyroStatusView;)V

    const-string v2, "mdm-gyrostat"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static link()I
    .registers 5

    const/4 v0, 0x0

    .line 68
    :try_start_1
    const-string v1, "K6.m"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 69
    const-string v2, "instance"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v4, 0x0

    .line 71
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_19

    return v0

    .line 73
    :cond_19
    const-string v4, "connectedClient"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_27

    const/4 v0, 0x2

    return v0

    .line 74
    :cond_27
    const-string v4, "serverRunning"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_34

    if-eqz v1, :cond_34

    return v3

    :catchall_34
    :cond_34
    return v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 3

    .line 48
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 49
    iget-object v0, p0, Lmdm/GyroStatusView;->tick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmdm/GyroStatusView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lmdm/GyroStatusView;->lastCheck:J

    .line 51
    iget-object v0, p0, Lmdm/GyroStatusView;->tick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmdm/GyroStatusView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 62
    iget-object v0, p0, Lmdm/GyroStatusView;->tick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmdm/GyroStatusView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 63
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 4

    .line 56
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_9

    const-wide/16 v0, 0x0

    .line 57
    iput-wide v0, p0, Lmdm/GyroStatusView;->lastCheck:J

    :cond_9
    return-void
.end method

.method update()V
    .registers 7

    .line 109
    invoke-static {}, Lmdm/GyroStatusView;->link()I

    move-result v0

    .line 110
    iget v1, p0, Lmdm/GyroStatusView;->module:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_10

    const v0, -0x841c5e

    .line 113
    const-string v1, "\u0110\u00e3 k\u1ebft n\u1ed1i"

    goto :goto_32

    :cond_10
    const/16 v4, -0x7580

    if-ne v1, v3, :cond_18

    .line 114
    const-string v1, "Ch\u01b0a c\u00e0i module"

    :goto_16
    move v0, v4

    goto :goto_32

    :cond_18
    const/4 v3, 0x3

    const v5, -0x172c5c

    if-ne v1, v3, :cond_22

    .line 115
    const-string v1, "C\u1ea7n kh\u1edfi \u0111\u1ed9ng l\u1ea1i"

    :goto_20
    move v0, v5

    goto :goto_32

    :cond_22
    const/4 v3, 0x4

    if-ne v1, v3, :cond_28

    .line 116
    const-string v1, "Module \u0111ang t\u1eaft"

    goto :goto_16

    :cond_28
    if-ne v0, v2, :cond_2d

    .line 117
    const-string v1, "Ch\u1edd module"

    goto :goto_20

    :cond_2d
    const v0, -0x57637a

    .line 118
    const-string v1, "B\u1eadt khi v\u00e0o game"

    .line 119
    :goto_32
    iget-object v3, p0, Lmdm/GyroStatusView;->shown:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    return-void

    .line 120
    :cond_3b
    iput-object v1, p0, Lmdm/GyroStatusView;->shown:Ljava/lang/String;

    .line 121
    invoke-virtual {p0, v1}, Lmdm/GyroStatusView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p0, v0}, Lmdm/GyroStatusView;->setTextColor(I)V

    .line 123
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 124
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 125
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 126
    invoke-virtual {p0}, Lmdm/GyroStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 127
    invoke-virtual {v1, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, v1, v0, v0, v0}, Lmdm/GyroStatusView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 129
    invoke-virtual {p0}, Lmdm/GyroStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lmdm/GyroStatusView;->setCompoundDrawablePadding(I)V

    return-void
.end method
