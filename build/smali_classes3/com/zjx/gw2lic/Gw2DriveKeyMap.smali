.class public final Lcom/zjx/gw2lic/Gw2DriveKeyMap;
.super Ljava/lang/Object;
.source "Gw2DriveKeyMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/gw2lic/Gw2DriveKeyMap$DragListener;
    }
.end annotation


# static fields
.field private static final D7A:Ljava/lang/String; = "D7.a"

.field private static final DEF_FX:[F

.field private static final DEF_FY:[F

.field public static final DIR_COUNT:I = 0x4

.field private static final K_SCR_H:Ljava/lang/String; = "scrH"

.field private static final K_SCR_W:Ljava/lang/String; = "scrW"

.field private static final K_SET:Ljava/lang/String; = "set"

.field private static final PREFS:Ljava/lang/String; = "gw2_drivekey2"

.field private static final PX:[I

.field private static final PY:[I

.field private static final R5C:Ljava/lang/String; = "R5.c"

.field private static final TAG:Ljava/lang/String; = "Gw2DriveKey"

.field public static volatile lsSpEnabled:Z

.field private static sCl:Ljava/lang/ClassLoader;

.field private static sControl:Landroid/view/View;

.field private static sHidden:Landroid/view/View;

.field private static sInit:Z

.field private static sLastDriving:Z

.field private static volatile sMapped:Z

.field private static sOverlay:Landroid/view/View;

.field private static sPollHandler:Landroid/os/Handler;

.field private static sTargets:[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    .line 76
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->DEF_FX:[F

    .line 77
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->DEF_FY:[F

    .line 79
    new-array v1, v0, [I

    sput-object v1, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->PX:[I

    .line 80
    new-array v0, v0, [I

    sput-object v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->PY:[I

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3dcccccd    # 0.1f
        0x3e75c28f    # 0.24f
        0x3f47ae14    # 0.78f
        0x3daaaa7e    # 0.083333f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_1
    .array-data 4
        0x3f3851ec    # 0.72f
        0x3f51eb85    # 0.82f
        0x3f51eb85    # 0.82f
        0x3f6147ae    # 0.88f
        0x3eaec398
        0x3f298762
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 62
    invoke-static {p0, p1}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->show(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .line 62
    invoke-static {}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->restorePanel()V

    return-void
.end method

.method static synthetic access$1000()[F
    .locals 1

    .line 62
    sget-object v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->DEF_FY:[F

    return-object v0
.end method

.method static synthetic access$1100(Landroid/content/Context;[Landroid/widget/TextView;ILandroid/graphics/Point;)V
    .locals 0

    .line 62
    invoke-static {p0, p1, p2, p3}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->persist(Landroid/content/Context;[Landroid/widget/TextView;ILandroid/graphics/Point;)V

    return-void
.end method

.method static synthetic access$200()[Landroid/view/View;
    .locals 1

    .line 62
    sget-object v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sTargets:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300()[I
    .locals 1

    .line 62
    sget-object v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->PX:[I

    return-object v0
.end method

.method static synthetic access$400()[I
    .locals 1

    .line 62
    sget-object v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->PY:[I

    return-object v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    .line 62
    sput-boolean p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sMapped:Z

    return p0
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 62
    invoke-static {}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->vi()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/view/WindowManager;)V
    .locals 0

    .line 62
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->dismissAll(Landroid/view/WindowManager;)V

    return-void
.end method

.method static synthetic access$800()[F
    .locals 1

    .line 62
    sget-object v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->DEF_FX:[F

    return-object v0
.end method

.method static synthetic access$900(III)I
    .locals 0

    .line 62
    invoke-static {p0, p1, p2}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->clamp(III)I

    move-result p0

    return p0
.end method

.method private static appClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 246
    sget-object v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sCl:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 247
    invoke-static {p0, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static clamp(III)I
    .locals 0

    if-ge p2, p1, :cond_0

    return p1

    :cond_0
    if-ge p0, p1, :cond_1

    move p0, p1

    goto :goto_0

    :cond_1
    if-le p0, p2, :cond_2

    move p0, p2

    :cond_2
    :goto_0
    return p0
.end method

.method private static clampDir(I)I
    .locals 1

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-lt p0, v0, :cond_1

    const/4 p0, 0x5

    :cond_1
    :goto_0
    return p0
.end method

.method public static defPointX(Landroid/content/Context;I)I
    .locals 1

    .line 150
    sget-object v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->DEF_FX:[F

    invoke-static {p1}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->clampDir(I)I

    move-result p1

    aget p1, v0, p1

    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->landscapeSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static defPointY(Landroid/content/Context;I)I
    .locals 1

    .line 151
    sget-object v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->DEF_FY:[F

    invoke-static {p1}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->clampDir(I)I

    move-result p1

    aget p1, v0, p1

    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->landscapeSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static dismissAll(Landroid/view/WindowManager;)V
    .locals 8

    .line 506
    sget-object v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sTargets:[Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 508
    const-string v3, "\u001d\u00b0\u0006\u00e5|\u0012\u009e0\u0089J\u00e5"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_1

    .line 509
    array-length v4, v0

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v0, v5

    if-nez v6, :cond_0

    goto :goto_1

    .line 511
    :cond_0
    :try_start_0
    invoke-interface {p0, v6}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    const-string v7, "(\u00a2Y\u00cex\u001e\u00be<\u00a7X\u00bc}\u0017\u00917\u00d8^\u00b7b\u0010\u00b7\'\u00ddA"

    invoke-static/range {v7 .. v7}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 514
    :cond_1
    sput-object v1, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sTargets:[Landroid/view/View;

    sget-object v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sControl:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 517
    :try_start_1
    invoke-interface {p0, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    const-string v4, "(\u00a2Y\u00cex\u001e\u00be<\u00a7X\u00bcj\u0019\u008d$\u00cfE\u00fb$\u0017\u00bf\"\u00d4@\u00f6"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    :cond_2
    :goto_2
    sput-object v1, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sControl:Landroid/view/View;

    sget-object v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sOverlay:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 522
    :try_start_2
    invoke-interface {p0, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    const-string v0, "(\u00a2Y\u00cex\u001e\u00be<\u00a7X\u00bcf\u0000\u0086\"\u00d1K\u00ee$\u0017\u00bf\"\u00d4@\u00f6"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 520
    :cond_3
    :goto_3
    sput-object v1, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sOverlay:Landroid/view/View;

    .line 524
    invoke-static {v2}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->hideKeymap(Z)V

    .line 525
    invoke-static {}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->restorePanel()V

    return-void
.end method

.method private static fullScreenLp()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 473
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x308

    const/4 v5, -0x3

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7f6

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const v0, 0x800033

    .line 481
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 482
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 483
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_0
    return-object v6
.end method

.method private static hideKeymap(Z)V
    .locals 3

    :try_start_0
    invoke-static {}, LY5/b;->v()LY5/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, LY5/b;->i:LJ6/b;

    if-eqz v1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {v1}, LJ6/b;->R()V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, LJ6/b;->X()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "\u001d\u00b0\u0006\u00e5|\u0012\u009e0\u0089J\u00e5"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1\u00a2M\u00cco\u000b\u00c8=\u00abK\u00f9&\u0005\u008b?\u00ca\n\u00f1e\u0018\u00b2.\u00dc"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private static hintLp(F)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 459
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x31

    .line 461
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    .line 462
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 14

    .line 113
    const-string v0, "1"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_0

    sget-object v1, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sCl:Ljava/lang/ClassLoader;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sput-object v1, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sCl:Ljava/lang/ClassLoader;

    .line 114
    :cond_0
    sget-boolean v1, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sInit:Z

    if-nez v1, :cond_7

    if-nez p0, :cond_1

    goto/16 :goto_2

    .line 116
    :cond_1
    :try_start_0
    const-string v1, "=\u00b0\u0006\u00fej\t\u0081#\u00a7D\u00f9pD"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, ")\u00b0U\u00d1K\u0015\u00897\u00aeJ\u00f8"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, LD6/c;->swapEnabled:Z

    const-string v3, "6\u00b4g\u00d1K\u0015\u00897\u00aeJ\u00f8"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->lsSpEnabled:Z

    const-string v3, ")\u00a2@"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    .line 118
    const-string v3, ")\u00a4F\u00f6"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 119
    const-string v5, ")\u00a4F\u00e9"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 120
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->landscapeSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    if-lez v3, :cond_3

    if-lez v5, :cond_3

    .line 121
    iget v6, p0, Landroid/graphics/Point;->x:I

    if-ne v3, v6, :cond_2

    iget v6, p0, Landroid/graphics/Point;->y:I

    if-eq v5, v6, :cond_3

    :cond_2
    move v6, v4

    goto :goto_0

    :cond_3
    move v6, v2

    :goto_0
    move v7, v2

    :goto_1
    const/4 v8, 0x6

    if-ge v7, v8, :cond_5

    .line 123
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-static/range {v9 .. v9}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 124
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "#"

    invoke-static/range {v10 .. v10}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-eqz v6, :cond_4

    int-to-long v10, v8

    .line 126
    iget v8, p0, Landroid/graphics/Point;->x:I

    int-to-long v12, v8

    mul-long/2addr v10, v12

    int-to-long v12, v3

    div-long/2addr v10, v12

    long-to-int v8, v10

    int-to-long v9, v9

    .line 127
    iget v11, p0, Landroid/graphics/Point;->y:I

    int-to-long v11, v11

    mul-long/2addr v9, v11

    int-to-long v11, v5

    div-long/2addr v9, v11

    long-to-int v9, v9

    .line 129
    :cond_4
    sget-object v10, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->PX:[I

    aput v8, v10, v7

    .line 130
    sget-object v8, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->PY:[I

    aput v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 132
    :cond_5
    sput-boolean v4, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sMapped:Z

    .line 134
    :cond_6
    sput-boolean v4, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 136
    const-string v0, "\u001d\u00b0\u0006\u00e5|\u0012\u009e0\u0089J\u00e5"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3\u00a9]\u00d5.\u001d\u0089<\u00aeJ\u00f8"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_2
    invoke-static {}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->startPolling()V

    return-void
.end method

.method public static isLsSp(Landroid/content/Context;)Z
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "=\u00b0\u0006\u00fej\t\u0081#\u00a7D\u00f9pD"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string p0, "6\u00b4g\u00d1K\u0015\u00897\u00aeJ\u00f8"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->lsSpEnabled:Z

    return v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    sget-boolean v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->lsSpEnabled:Z

    return v0
.end method

.method public static landscapeSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 3

    .line 610
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 612
    :try_start_0
    const-string v1, "-\u00aeZ\u00c5a\u000c"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 613
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 614
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 616
    :catchall_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 617
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p0, v0, Landroid/graphics/Point;->y:I

    .line 619
    :goto_0
    iget p0, v0, Landroid/graphics/Point;->x:I

    iget v1, v0, Landroid/graphics/Point;->y:I

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 620
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 621
    iput p0, v0, Landroid/graphics/Point;->x:I

    .line 622
    iput v1, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method private static makeBarButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Button;
    .locals 2

    .line 467
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 468
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const v1, -0xde6a37

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    return-object v0
.end method

.method private static makeHint(Landroid/content/Context;F)Landroid/widget/TextView;
    .locals 2

    .line 447
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 448
    invoke-static {}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->vi()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 449
    const-string p0, "\u0011.[\u0081:[\u0086\u00af\u00b6\u000f\u00cb&7\u00cc\u0003\u0092n\u00b7r\u0091\u00b1k\u01a9\u00df\u00fc\u0098L\u00af\u1e8d\u0093T\u00ff\u0017G\u00ba\u00bb\u00da;\u0199\u009c\u1ea3\u00ba\u001c\u00c2~\u00ea\u1e333\u00eaO\u00c11\n\u00997\u00abU\u00bfk\u0018\u008b6\u00ec\r\u00e8\u1ed4\u001d\u00c1,\u1e1eE\u00b5N\u01df\u00a9g"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 450
    :cond_0
    const-string p0, "\u001e\u00b5U\u00c6.\u000f\u00800\u00e2I\u00f3|\u0004\u00c3\u0007\u0092k\u00b8W^\u009ak\u00d5D\u00e0\u0094\t\u00ab5\u0093O\u00e3\u008e\u0008\u00f45\u00c6~\u00a8\u009c\u000c\u00e2[\u00c8{\u00e6\u00d0+\u00af_\u00cdr\u0012\u008ex\u00a7G\u00ebx\u0016\u0088 \u00ec\r\u00eeo\u0011\u008fn\u00e8I\u00e3gA"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 448
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, -0x1

    .line 451
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p0, 0x41600000    # 14.0f

    .line 452
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 p0, 0x41400000    # 12.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 453
    invoke-virtual {v0, p0, p1, p0, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 p0, -0x56000000

    .line 454
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    return-object v0
.end method

.method private static makeMarker(Landroid/content/Context;Ljava/lang/String;IF)Landroid/widget/TextView;
    .locals 0

    .line 560
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 561
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, -0x1

    .line 562
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p0, 0x41600000    # 14.0f

    .line 563
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p0, 0x11

    .line 564
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setGravity(I)V

    .line 565
    new-instance p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 p1, 0x1

    .line 566
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const p1, -0x339b4a0a    # -5.995516E7f

    .line 567
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p3, p1

    float-to-int p1, p3

    const p3, -0xde6a37

    .line 568
    invoke-virtual {p0, p1, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 569
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method

.method public static mapped()Z
    .locals 1

    .line 142
    sget-boolean v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sMapped:Z

    return v0
.end method

.method public static open(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 202
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/zjx/gw2lic/Gw2DriveKeyMap$1;

    invoke-direct {v1, p0, p1}, Lcom/zjx/gw2lic/Gw2DriveKeyMap$1;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static persist(Landroid/content/Context;[Landroid/widget/TextView;ILandroid/graphics/Point;)V
    .locals 6

    .line 540
    const-string v0, "=\u00b0\u0006\u00fej\t\u0081#\u00a7D\u00f9pD"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    :goto_0
    const/4 v0, 0x4

    if-ge v1, v0, :cond_0

    .line 542
    aget-object v0, p1, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 543
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    div-int/lit8 v3, p2, 0x2

    add-int/2addr v2, v3

    .line 544
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    .line 545
    sget-object v3, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->PX:[I

    aput v2, v3, v1

    .line 546
    sget-object v3, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->PY:[I

    aput v0, v3, v1

    .line 547
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "1"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 550
    :cond_0
    const-string p1, ")\u00a4F\u00f6"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p2, p3, Landroid/graphics/Point;->x:I

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 551
    const-string p1, ")\u00a4F\u00e9"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p2, p3, Landroid/graphics/Point;->y:I

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 552
    const-string p1, ")\u00a2@"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 553
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 554
    sput-boolean p2, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sMapped:Z

    return-void
.end method

.method public static pollDriving()V
    .locals 4

    sget-boolean v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sInit:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->init(Landroid/content/Context;)V

    :cond_0
    sget-boolean v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->isDriving:Z

    sget-boolean v1, LD6/c;->swapEnabled:Z

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    sget-boolean v1, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sLastDriving:Z

    if-eq v0, v1, :cond_2

    sput-boolean v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sLastDriving:Z

    invoke-static {v0}, LD6/c;->switchMode(Z)V

    :cond_2
    sget-object v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sPollHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/zjx/gw2lic/Gw2DriveKeyPoll;

    invoke-direct {v1}, Lcom/zjx/gw2lic/Gw2DriveKeyPoll;-><init>()V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method private static restorePanel()V
    .locals 3

    .line 529
    sget-object v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sHidden:Landroid/view/View;

    const/4 v1, 0x0

    .line 530
    sput-object v1, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sHidden:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 533
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 535
    const-string v1, "\u001d\u00b0\u0006\u00e5|\u0012\u009e0\u0089J\u00e5"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(\u00a2G\u00d5a\t\u008du\u00a4N\u00f5e\u0013\u0087"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static savePoints(Landroid/content/Context;)V
    .locals 5

    .line 159
    const-string v0, "1"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->landscapeSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    .line 160
    const-string v2, "=\u00b0\u0006\u00fej\t\u0081#\u00a7D\u00f9pD"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    :goto_0
    const/4 v2, 0x6

    if-ge v3, v2, :cond_0

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->PX:[I

    aget v4, v4, v3

    invoke-interface {p0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->PY:[I

    aget v4, v4, v3

    invoke-interface {p0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 165
    :cond_0
    const-string v0, ")\u00a4F\u00f6"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Point;->x:I

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 166
    const-string v0, ")\u00a4F\u00e9"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 167
    const-string v0, ")\u00a2@"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 168
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    sput-boolean v1, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sMapped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 171
    const-string v0, "\u001d\u00b0\u0006\u00e5|\u0012\u009e0\u0089J\u00e5"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ")\u00a6B\u00c4^\u0014\u0081;\u00b6\\\u00bco\u0017\u008a<\u00d8N"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static setLsSp(Landroid/content/Context;Z)V
    .locals 2

    sput-boolean p1, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->lsSpEnabled:Z

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "=\u00b0\u0006\u00fej\t\u0081#\u00a7D\u00f9pD"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "6\u00b4g\u00d1K\u0015\u00897\u00aeJ\u00f8"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method public static setPoint(III)V
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x6

    if-ge p0, v0, :cond_0

    .line 154
    sget-object v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->PX:[I

    aput p1, v0, p0

    sget-object p1, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->PY:[I

    aput p2, p1, p0

    :cond_0
    return-void
.end method

.method private static show(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .line 216
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->init(Landroid/content/Context;)V

    .line 217
    sget-object v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sControl:Landroid/view/View;

    if-nez v0, :cond_4

    sget-object v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 219
    :cond_0
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 220
    invoke-static {}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->vi()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\u000e\u00af]\u1e1e{[\u0099 \u00bb\u1eee\u00f2)\u0000\u1e5ep\u01ac\u00c2\u00b7h\u009b\u00b0k\u1e51K\u00f5\u00df\u0008\u1e3c(\u00d4\u0000\u00e6\u0092\u0086\u00b7"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 221
    :cond_1
    const-string p1, "\u0017\u00aeG\u00d2g\u0015\u008fu\u00a6]\u00fd~[\u008c&\u00d8X\u00bak\u0005\u00b6.\u00ca\u0008\u00f3\u008f\u001c\u00aaf\u00c3E\u00ff\u0097\u000e\u00a72\u00c7t\u00e6"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 220
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 221
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 225
    :cond_2
    const-string v0, "-\u00aeZ\u00c5a\u000c"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_3

    return-void

    .line 237
    :cond_3
    :try_start_0
    invoke-static {p0, v0, p1}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->showNative(Landroid/content/Context;Landroid/view/WindowManager;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 239
    const-string v2, "\u001d\u00b0\u0006\u00e5|\u0012\u009e0\u0089J\u00e5"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4\u00a6@\u00c8x\u001e\u00c8!\u00a3]\u00fbl\u0002\u00c3\'\u00d4N\u00f0a\u0005\u00fe>\u00d6D\u00e4\u009e\u0005\u00b5\'\u00d1L\u00e8\u00d6G\u00a12\u00c7u\u00ef\u00d5\u0004\u00aeP\u00c5t\u00e2\u00936\u00eaZ\u00c5c\u0015\u008e*\u00b6"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    invoke-static {p0, v0, p1}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->showFallback(Landroid/content/Context;Landroid/view/WindowManager;Landroid/view/View;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private static showFallback(Landroid/content/Context;Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->hideKeymap(Z)V

    .line 377
    invoke-static/range {p0 .. p0}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->landscapeSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v9

    .line 378
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr v1, v0

    float-to-int v10, v1

    .line 381
    new-instance v11, Landroid/widget/FrameLayout;

    invoke-direct {v11, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v1, -0x1000000

    .line 382
    invoke-virtual {v11, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 383
    invoke-static {v6, v0}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->makeHint(Landroid/content/Context;F)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->hintLp(F)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x4

    .line 385
    new-array v12, v1, [Landroid/widget/TextView;

    .line 386
    const-string v2, "\u001e"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\t"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\r"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u001b"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    .line 388
    aget-object v5, v2, v4

    invoke-static {v6, v5, v10, v0}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->makeMarker(Landroid/content/Context;Ljava/lang/String;IF)Landroid/widget/TextView;

    move-result-object v5

    aput-object v5, v12, v4

    .line 389
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v13, 0x800033

    .line 390
    iput v13, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 391
    invoke-static {v4, v9}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->startX(ILandroid/graphics/Point;)I

    move-result v13

    div-int/lit8 v14, v10, 0x2

    sub-int/2addr v13, v14

    iget v15, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v15, v10

    invoke-static {v13, v3, v15}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->clamp(III)I

    move-result v13

    iput v13, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 392
    invoke-static {v4, v9}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->startY(ILandroid/graphics/Point;)I

    move-result v13

    sub-int/2addr v13, v14

    iget v14, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v14, v10

    invoke-static {v13, v3, v14}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->clamp(III)I

    move-result v13

    iput v13, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 393
    aget-object v13, v12, v4

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    aget-object v5, v12, v4

    new-instance v13, Lcom/zjx/gw2lic/Gw2DriveKeyMap$DragListener;

    invoke-direct {v13, v11, v9, v10}, Lcom/zjx/gw2lic/Gw2DriveKeyMap$DragListener;-><init>(Landroid/widget/FrameLayout;Landroid/graphics/Point;I)V

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 395
    aget-object v5, v12, v4

    invoke-virtual {v11, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 398
    :cond_0
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 399
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 400
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v14, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x51

    .line 402
    iput v1, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 403
    iput v0, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 405
    invoke-static {}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->vi()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u0016\u0177A"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "\t\u00a6B\u00c4"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v6, v0}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->makeBarButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v15

    .line 406
    new-instance v5, Lcom/zjx/gw2lic/Gw2DriveKeyMap$5;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v12

    move v3, v10

    move-object v4, v9

    move-object v8, v5

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/zjx/gw2lic/Gw2DriveKeyMap$5;-><init>(Landroid/content/Context;[Landroid/widget/TextView;ILandroid/graphics/Point;Landroid/view/WindowManager;)V

    invoke-virtual {v15, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    invoke-static {}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->vi()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u014a\u1e70@\u0081b\u1eda\u0081"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const-string v0, "\u0008\u00a2G\u00c4z"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v6, v0}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->makeBarButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    .line 417
    new-instance v1, Lcom/zjx/gw2lic/Gw2DriveKeyMap$6;

    invoke-direct {v1, v12, v9, v10}, Lcom/zjx/gw2lic/Gw2DriveKeyMap$6;-><init>([Landroid/widget/TextView;Landroid/graphics/Point;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    invoke-static {}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->vi()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "\u0012\u00b2\u1ec3"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    const-string v1, "\u001f\u00bf]\u00d5"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {v6, v1}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->makeBarButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    .line 428
    new-instance v2, Lcom/zjx/gw2lic/Gw2DriveKeyMap$7;

    invoke-direct {v2, v7}, Lcom/zjx/gw2lic/Gw2DriveKeyMap$7;-><init>(Landroid/view/WindowManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 432
    invoke-virtual {v11, v13, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    invoke-static {}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->fullScreenLp()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {v7, v11, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    sput-object v11, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sOverlay:Landroid/view/View;

    new-instance v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$7;

    invoke-direct {v0, v7}, Lcom/zjx/gw2lic/Gw2DriveKeyMap$7;-><init>(Landroid/view/WindowManager;)V

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p2

    if-eqz v0, :cond_4

    .line 438
    sput-object v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sHidden:Landroid/view/View;

    const/16 v1, 0x8

    .line 439
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private static showNative(Landroid/content/Context;Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 266
    const-string v3, "\u001e\u00f0\u001a\u00c0"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->appClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 267
    const-class v4, Landroid/content/Context;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 268
    const-class v5, Landroid/view/WindowManager;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    const-string v6, ")\u00a2@\u00f6g\u0015\u008c:\u00b5b\u00fdg\u0017\u00845\u00cf"

    invoke-static/range {v6 .. v6}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 269
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    const-string v7, ")\u00a2@\u00e5|\u001a\u008f2\u00a3M\u00f0l"

    invoke-static/range {v7 .. v7}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 270
    const-string v7, "=\u00a2@\u00e7|\u001a\u00850"

    invoke-static/range {v7 .. v7}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 271
    const-class v9, Landroid/graphics/Rect;

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v9

    const-string v10, ")\u00a2@\u00e7|\u001a\u00850"

    invoke-static/range {v10 .. v10}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 273
    invoke-static/range {p0 .. p0}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->landscapeSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v9

    .line 274
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    const/high16 v11, 0x42200000    # 40.0f

    mul-float/2addr v11, v10

    float-to-int v11, v11

    const/4 v12, 0x4

    .line 277
    new-array v13, v12, [Landroid/view/View;

    .line 278
    const-string v14, "\u001e"

    invoke-static/range {v14 .. v14}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "\t"

    invoke-static/range {v15 .. v15}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v12, "\r"

    invoke-static/range {v12 .. v12}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v8, "\u001b"

    invoke-static/range {v8 .. v8}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v12, v8, v14, v15}, [Ljava/lang/String;

    move-result-object v8

    .line 284
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 285
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 286
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    const-string v2, "7\u00a6W\u00d3a$\u0087%\u00a7]\u00fd}\u001f\u008c>\u00e2Z\u00f8w\u0018\u00aa\"\u00d7K\u00cd\u009a\u0008\u00b02\u00dcR\u00d2\u008a\u0006\u00ba$\u00c2"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v13

    const-string v13, "6\u00a6M\u00ce{\u000f"

    invoke-static/range {v13 .. v13}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 287
    invoke-virtual {v12, v2, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v13, 0x0

    invoke-virtual {v15, v2, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 289
    const-string v13, ")\u00a6B\u00c4L\u000e\u009c!\u00adA"

    invoke-static/range {v13 .. v13}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "3\u00a3"

    invoke-static/range {v15 .. v15}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v13, v15, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v16, v8

    .line 290
    const-string v8, "(\u00a2G\u00c4z9\u009d!\u00b6@\u00f2"

    invoke-static/range {v8 .. v8}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8, v15, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v18, v4

    .line 291
    const-string v4, "?\u00bf]\u00d5L\u000e\u009c!\u00adA"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4, v15, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v19, v6

    .line 292
    const-string v6, "/\u00a9X\u00cem\u0010\u00aa \u00b6[\u00f3g"

    invoke-static/range {v6 .. v6}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6, v15, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v12, 0x8

    if-eqz v6, :cond_0

    .line 293
    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz v13, :cond_1

    .line 295
    new-instance v6, Lcom/zjx/gw2lic/Gw2DriveKeyMap$2;

    invoke-direct {v6, v0, v7, v9, v1}, Lcom/zjx/gw2lic/Gw2DriveKeyMap$2;-><init>(Landroid/content/Context;Ljava/lang/reflect/Method;Landroid/graphics/Point;Landroid/view/WindowManager;)V

    invoke-virtual {v13, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v8, :cond_2

    .line 319
    new-instance v6, Lcom/zjx/gw2lic/Gw2DriveKeyMap$3;

    invoke-direct {v6, v9, v11, v3}, Lcom/zjx/gw2lic/Gw2DriveKeyMap$3;-><init>(Landroid/graphics/Point;ILjava/lang/reflect/Method;)V

    invoke-virtual {v8, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v4, :cond_3

    .line 332
    new-instance v3, Lcom/zjx/gw2lic/Gw2DriveKeyMap$4;

    invoke-direct {v3, v1}, Lcom/zjx/gw2lic/Gw2DriveKeyMap$4;-><init>(Landroid/view/WindowManager;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    :cond_3
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/high16 v4, 0x43660000    # 230.0f

    mul-float/2addr v4, v10

    float-to-int v4, v4

    const/high16 v6, 0x42a00000    # 80.0f

    mul-float/2addr v6, v10

    float-to-int v6, v6

    const/16 v24, 0x8

    const/16 v25, -0x3

    const/16 v23, 0x7f6

    move-object/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v6

    invoke-direct/range {v20 .. v25}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v4, 0x31

    .line 342
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 343
    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    :try_start_0
    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v4, v19

    :try_start_1
    invoke-virtual {v4, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-object/from16 v4, v19

    .line 345
    :catchall_1
    :goto_0
    sput-object v2, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sControl:Landroid/view/View;

    .line 347
    invoke-static {}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->vi()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "\u0011.[\u0081YT\u00a9z\u0091\u0000\u00d8)\u0000\u0003?\u009dDmpQ\u00a6.\u0094\u0005\u00e0\u1e2c\u0005\u00f9$\u1e16M\u00ad\u00b6\u01d7\u00a1"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 348
    :cond_4
    const-string v2, "\u001e\u00b5U\u00c6.,\u00c7\u0014\u00ed|\u00b3MV\u008c>\u00c9E\u00b7p\u0019\u00bbk\u00ce@\u00fa\u0096\u000f\u00b5#\u0093B\u00f8\u008e\u0013\u00bb/\u00dd7\u00a8\u0081\n\u00aaR\u0089E\u00e2\u00868"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const/4 v3, 0x1

    .line 347
    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 348
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    const/4 v6, 0x4

    if-ge v3, v6, :cond_5

    .line 352
    filled-new-array/range {p0 .. p0}, [Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v8, v18

    invoke-virtual {v8, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 354
    move-object v13, v7

    check-cast v13, Landroid/view/ViewGroup;

    aget-object v14, v16, v3

    invoke-static {v0, v14, v11, v10}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->makeMarker(Landroid/content/Context;Ljava/lang/String;IF)Landroid/widget/TextView;

    move-result-object v14

    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v15, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v7, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v4, v7, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-static {v0, v11}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->targetLp(Landroid/content/Context;I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 361
    invoke-static {v3, v9}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->startX(ILandroid/graphics/Point;)I

    move-result v14

    div-int/lit8 v15, v11, 0x2

    sub-int/2addr v14, v15

    iget v6, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v11

    invoke-static {v14, v2, v6}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->clamp(III)I

    move-result v6

    iput v6, v13, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 362
    invoke-static {v3, v9}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->startY(ILandroid/graphics/Point;)I

    move-result v6

    sub-int/2addr v6, v15

    iget v14, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v14, v11

    invoke-static {v6, v2, v14}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->clamp(III)I

    move-result v6

    iput v6, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 363
    invoke-interface {v1, v7, v13}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    aput-object v7, v17, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 366
    :cond_5
    sput-object v17, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sTargets:[Landroid/view/View;

    move-object/from16 v0, p2

    if-eqz v0, :cond_6

    .line 369
    sput-object v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sHidden:Landroid/view/View;

    .line 370
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public static startPointX(Landroid/content/Context;I)I
    .locals 0

    .line 148
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->landscapeSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->startX(ILandroid/graphics/Point;)I

    move-result p0

    return p0
.end method

.method public static startPointY(Landroid/content/Context;I)I
    .locals 0

    .line 149
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->landscapeSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->startY(ILandroid/graphics/Point;)I

    move-result p0

    return p0
.end method

.method public static startPolling()V
    .locals 2

    sget-object v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sPollHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sPollHandler:Landroid/os/Handler;

    :cond_0
    invoke-static {}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->pollDriving()V

    return-void
.end method

.method private static startX(ILandroid/graphics/Point;)I
    .locals 2

    sget-boolean v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sMapped:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->PX:[I

    aget v1, v0, p0

    if-gtz v1, :cond_1

    :cond_0
    sget-object v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->DEF_FX:[F

    aget v0, v0, p0

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int v1, v0

    :cond_1
    return v1
.end method

.method private static startY(ILandroid/graphics/Point;)I
    .locals 2

    sget-boolean v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->sMapped:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->PY:[I

    aget v1, v0, p0

    if-gtz v1, :cond_1

    :cond_0
    sget-object v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->DEF_FY:[F

    aget v0, v0, p0

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int v1, v0

    :cond_1
    return v1
.end method

.method private static targetLp(Landroid/content/Context;I)Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .line 490
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x308

    const/4 v5, -0x3

    const/16 v3, 0x7f6

    move-object v0, p0

    move v1, p1

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const p1, 0x800033

    .line 497
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 498
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    .line 499
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_0
    return-object p0
.end method

.method private static vi()Z
    .locals 2

    .line 633
    :try_start_0
    const-string v0, ",\u00ae"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public static x(I)I
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x6

    if-ge p0, v0, :cond_0

    .line 179
    sget-object v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->PX:[I

    aget p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static y(I)I
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x6

    if-ge p0, v0, :cond_0

    .line 184
    sget-object v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->PY:[I

    aget p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
