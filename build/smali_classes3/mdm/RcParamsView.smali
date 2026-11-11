.class public Lmdm/RcParamsView;
.super Ljava/lang/Object;
.source "RcParamsView.java"


# static fields
.field private static final DIM:I = -0x57637a

.field private static final GLASS:I = -0xde5e8ec

.field private static final GOLD:I = -0x172c5c

.field private static final GOLD_LO:I = -0x365a9a

.field private static final GREEN:I = -0x841c5e

.field private static final ON_GOLD:I = -0xe5ebf6

.field private static final SCRIM:I = -0x34000000

.field private static final TEXT:I = -0xc1528


# instance fields
.field private final anchor:Landroid/view/View;

.field private attached:Z

.field private final bundleId:Ljava/lang/String;

.field private final ctx:Landroid/content/Context;

.field private final dp:F

.field private expanded:I

.field private filter:Ljava/lang/String;

.field private hint:Landroid/widget/TextView;

.field private host:Landroid/view/ViewGroup;

.field private final id:Ljava/lang/String;

.field private final km:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

.field private listBody:Landroid/widget/LinearLayout;

.field private final main:Landroid/os/Handler;

.field private onEdited:Z

.field private original:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private root:Landroid/widget/LinearLayout;

.field private saveBtn:Landroid/widget/TextView;

.field private shell:Landroid/widget/FrameLayout;

.field private final stances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Ljava/lang/String;

.field private working:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager;)V
    .registers 8

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmdm/RcParamsView;->main:Landroid/os/Handler;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lmdm/RcParamsView;->filter:Ljava/lang/String;

    .line 78
    const/4 v1, -0x1

    iput v1, p0, Lmdm/RcParamsView;->expanded:I

    .line 82
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lmdm/RcParamsView;->stances:Ljava/util/HashMap;

    .line 92
    iput-object p1, p0, Lmdm/RcParamsView;->anchor:Landroid/view/View;

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    .line 94
    iget-object p1, p0, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lmdm/RcParamsView;->dp:F

    .line 95
    iput-object p2, p0, Lmdm/RcParamsView;->id:Ljava/lang/String;

    .line 96
    if-nez p3, :cond_37

    move-object p3, v0

    :cond_37
    iput-object p3, p0, Lmdm/RcParamsView;->title:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Lmdm/RcParamsView;->bundleId:Ljava/lang/String;

    .line 98
    iput-object p5, p0, Lmdm/RcParamsView;->km:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lmdm/RcParamsView;Ljava/util/Map;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lmdm/RcParamsView;->bind(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$100(Lmdm/RcParamsView;)V
    .registers 1

    .line 45
    invoke-direct {p0}, Lmdm/RcParamsView;->show()V

    return-void
.end method

.method static synthetic access$1000(Lmdm/RcParamsView;II)V
    .registers 3

    .line 45
    invoke-direct {p0, p1, p2}, Lmdm/RcParamsView;->pickStance(II)V

    return-void
.end method

.method static synthetic access$1100(Lmdm/RcParamsView;)Ljava/util/Map;
    .registers 1

    .line 45
    iget-object p0, p0, Lmdm/RcParamsView;->working:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1102(Lmdm/RcParamsView;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    .line 45
    iput-object p1, p0, Lmdm/RcParamsView;->working:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$1202(Lmdm/RcParamsView;Z)Z
    .registers 2

    .line 45
    iput-boolean p1, p0, Lmdm/RcParamsView;->onEdited:Z

    return p1
.end method

.method static synthetic access$1300(Lmdm/RcParamsView;)V
    .registers 1

    .line 45
    invoke-direct {p0}, Lmdm/RcParamsView;->updateHint()V

    return-void
.end method

.method static synthetic access$1400(Lmdm/RcParamsView;D)D
    .registers 3

    .line 45
    invoke-direct {p0, p1, p2}, Lmdm/RcParamsView;->clampEdit(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1500(Lmdm/RcParamsView;IIILandroid/widget/TextView;Landroid/widget/SeekBar;)V
    .registers 6

    .line 45
    invoke-direct/range {p0 .. p5}, Lmdm/RcParamsView;->promptValue(IIILandroid/widget/TextView;Landroid/widget/SeekBar;)V

    return-void
.end method

.method static synthetic access$1600(Lmdm/RcParamsView;Landroid/widget/FrameLayout;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lmdm/RcParamsView;->popModal(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method static synthetic access$1700(Lmdm/RcParamsView;)Landroid/widget/TextView;
    .registers 1

    .line 45
    iget-object p0, p0, Lmdm/RcParamsView;->saveBtn:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1800(Lmdm/RcParamsView;)Ljava/util/Map;
    .registers 1

    .line 45
    iget-object p0, p0, Lmdm/RcParamsView;->original:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1802(Lmdm/RcParamsView;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    .line 45
    iput-object p1, p0, Lmdm/RcParamsView;->original:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$200(Lmdm/RcParamsView;Ljava/lang/String;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lmdm/RcParamsView;->toast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lmdm/RcParamsView;)Landroid/os/Handler;
    .registers 1

    .line 45
    iget-object p0, p0, Lmdm/RcParamsView;->main:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lmdm/RcParamsView;)V
    .registers 1

    .line 45
    invoke-direct {p0}, Lmdm/RcParamsView;->close()V

    return-void
.end method

.method static synthetic access$502(Lmdm/RcParamsView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 45
    iput-object p1, p0, Lmdm/RcParamsView;->filter:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lmdm/RcParamsView;)V
    .registers 1

    .line 45
    invoke-direct {p0}, Lmdm/RcParamsView;->rebuild()V

    return-void
.end method

.method static synthetic access$700(Lmdm/RcParamsView;)V
    .registers 1

    .line 45
    invoke-direct {p0}, Lmdm/RcParamsView;->confirmReset()V

    return-void
.end method

.method static synthetic access$800(Lmdm/RcParamsView;)V
    .registers 1

    .line 45
    invoke-direct {p0}, Lmdm/RcParamsView;->save()V

    return-void
.end method

.method static synthetic access$900(Lmdm/RcParamsView;)I
    .registers 1

    .line 45
    iget p0, p0, Lmdm/RcParamsView;->expanded:I

    return p0
.end method

.method static synthetic access$902(Lmdm/RcParamsView;I)I
    .registers 2

    .line 45
    iput p1, p0, Lmdm/RcParamsView;->expanded:I

    return p1
.end method

.method private bind(Ljava/util/Map;)V
    .registers 3

    .line 135
    if-nez p1, :cond_7

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 136
    :cond_7
    invoke-static {p1}, Lmdm/RcParams;->copyContent(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lmdm/RcParamsView;->original:Ljava/util/Map;

    .line 137
    invoke-static {p1}, Lmdm/RcParams;->copyContent(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lmdm/RcParamsView;->working:Ljava/util/Map;

    .line 138
    return-void
.end method

.method private bundleLabel()Ljava/lang/String;
    .registers 3

    .line 295
    iget-object v0, p0, Lmdm/RcParamsView;->bundleId:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 296
    :cond_7
    iget-object v0, p0, Lmdm/RcParamsView;->bundleId:Ljava/lang/String;

    const-string v1, "pubg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "PUBG \u00b7 gh\u00ecm t\u00e2m"

    return-object v0

    .line 297
    :cond_14
    iget-object v0, p0, Lmdm/RcParamsView;->bundleId:Ljava/lang/String;

    const-string v1, "gnyx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "Gnyx \u00b7 gh\u00ecm t\u00e2m"

    return-object v0

    .line 298
    :cond_21
    iget-object v0, p0, Lmdm/RcParamsView;->bundleId:Ljava/lang/String;

    const-string v1, "GeneralRC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "GeneralRC \u00b7 gh\u00ecm t\u00e2m"

    return-object v0

    .line 299
    :cond_2e
    iget-object v0, p0, Lmdm/RcParamsView;->bundleId:Ljava/lang/String;

    return-object v0
.end method

.method private chipDivider()Landroid/view/View;
    .registers 6

    .line 427
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 428
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-direct {p0, v2}, Lmdm/RcParamsView;->px(F)I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 429
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-direct {p0, v2}, Lmdm/RcParamsView;->px(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v2}, Lmdm/RcParamsView;->px(F)I

    move-result v2

    invoke-virtual {v1, v3, v4, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 430
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    const v1, 0x1fffffff

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 432
    return-object v0
.end method

.method private clampEdit(D)D
    .registers 9

    .line 543
    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x4069000000000000L    # 200.0

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lmdm/RcParams;->clamp(DDD)D

    move-result-wide p1

    return-wide p1
.end method

.method private close()V
    .registers 3

    .line 283
    iget-boolean v0, p0, Lmdm/RcParamsView;->attached:Z

    if-nez v0, :cond_5

    return-void

    .line 284
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmdm/RcParamsView;->attached:Z

    .line 286
    :try_start_8
    iget-object v0, p0, Lmdm/RcParamsView;->host:Landroid/view/ViewGroup;

    iget-object v1, p0, Lmdm/RcParamsView;->shell:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    .line 288
    goto :goto_11

    .line 287
    :catchall_10
    move-exception v0

    .line 289
    :goto_11
    const/4 v0, 0x0

    iput-object v0, p0, Lmdm/RcParamsView;->shell:Landroid/widget/FrameLayout;

    .line 290
    iput-object v0, p0, Lmdm/RcParamsView;->root:Landroid/widget/LinearLayout;

    .line 291
    iput-object v0, p0, Lmdm/RcParamsView;->listBody:Landroid/widget/LinearLayout;

    .line 292
    return-void
.end method

.method private comboChip(Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/view/View;
    .registers 8

    .line 436
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 437
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    const/4 p1, 0x2

    const/high16 v1, 0x41380000    # 11.5f

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 439
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 440
    if-eqz p2, :cond_1d

    const p1, -0xe5ebf6

    goto :goto_20

    :cond_1d
    const p1, -0x172c5c

    :goto_20
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 441
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 442
    const/high16 v1, 0x41100000    # 9.0f

    invoke-direct {p0, v1}, Lmdm/RcParamsView;->px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 443
    if-eqz p2, :cond_47

    .line 444
    const p2, -0x152958

    const v1, -0x365a9a

    filled-new-array {p2, v1}, [I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 445
    sget-object p2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_59

    .line 447
    :cond_47
    const p2, 0x14ffffff

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 448
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p0, p2}, Lmdm/RcParamsView;->px(F)I

    move-result p2

    const v1, 0x44e8d3a4

    invoke-virtual {p1, p2, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 450
    :goto_59
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 451
    const/high16 p1, 0x41300000    # 11.0f

    invoke-direct {p0, p1}, Lmdm/RcParamsView;->px(F)I

    move-result p2

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-direct {p0, v1}, Lmdm/RcParamsView;->px(F)I

    move-result v2

    invoke-direct {p0, p1}, Lmdm/RcParamsView;->px(F)I

    move-result p1

    invoke-direct {p0, v1}, Lmdm/RcParamsView;->px(F)I

    move-result v3

    invoke-virtual {v0, p2, v2, p1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 452
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 454
    invoke-direct {p0, v1}, Lmdm/RcParamsView;->px(F)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 455
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    new-instance p1, Lmdm/RcParamsView$11;

    invoke-direct {p1, p0, p3}, Lmdm/RcParamsView$11;-><init>(Lmdm/RcParamsView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    return-object v0
.end method

.method private comboStrip(II)Landroid/view/View;
    .registers 10

    .line 401
    new-instance v0, Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 402
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 403
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 404
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 405
    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {p0, v3}, Lmdm/RcParamsView;->px(F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-direct {p0, v4}, Lmdm/RcParamsView;->px(F)I

    move-result v4

    invoke-virtual {v2, v1, v3, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 407
    const/4 v3, 0x1

    if-nez p2, :cond_29

    move v4, v3

    goto :goto_2a

    :cond_29
    move v4, v1

    :goto_2a
    new-instance v5, Lmdm/RcParamsView$8;

    invoke-direct {v5, p0, p1}, Lmdm/RcParamsView$8;-><init>(Lmdm/RcParamsView;I)V

    const-string v6, "\u0110\u1ee9ng"

    invoke-direct {p0, v6, v4, v5}, Lmdm/RcParamsView;->comboChip(Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 410
    if-ne p2, v3, :cond_3c

    move v4, v3

    goto :goto_3d

    :cond_3c
    move v4, v1

    :goto_3d
    new-instance v5, Lmdm/RcParamsView$9;

    invoke-direct {v5, p0, p1}, Lmdm/RcParamsView$9;-><init>(Lmdm/RcParamsView;I)V

    const-string v6, "Ng\u1ed3i"

    invoke-direct {p0, v6, v4, v5}, Lmdm/RcParamsView;->comboChip(Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 413
    const/4 v4, 0x2

    if-ne p2, v4, :cond_4f

    move v1, v3

    :cond_4f
    new-instance p2, Lmdm/RcParamsView$10;

    invoke-direct {p2, p0, p1}, Lmdm/RcParamsView$10;-><init>(Lmdm/RcParamsView;I)V

    const-string p1, "N\u1eb1m"

    invoke-direct {p0, p1, v1, p2}, Lmdm/RcParamsView;->comboChip(Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 417
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 418
    return-object v0
.end method

.method private confirmReset()V
    .registers 14

    .line 735
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 736
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 737
    const/high16 v2, 0x41900000    # 18.0f

    invoke-direct {p0, v2}, Lmdm/RcParamsView;->glassCard(F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 738
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-direct {p0, v3}, Lmdm/RcParamsView;->px(F)I

    move-result v4

    invoke-direct {p0, v2}, Lmdm/RcParamsView;->px(F)I

    move-result v2

    invoke-direct {p0, v3}, Lmdm/RcParamsView;->px(F)I

    move-result v3

    const/high16 v5, 0x41600000    # 14.0f

    invoke-direct {p0, v5}, Lmdm/RcParamsView;->px(F)I

    move-result v6

    invoke-virtual {v0, v4, v2, v3, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 739
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 741
    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v8, "\u0110\u1eb7t l\u1ea1i to\u00e0n b\u1ed9?"

    const/high16 v9, 0x41800000    # 16.0f

    const v10, -0xc1528

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lmdm/RcParamsView;->label(Ljava/lang/String;FIZF)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 742
    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v7, "M\u1ecdi thay \u0111\u1ed5i ch\u01b0a l\u01b0u trong b\u1ea3ng n\u00e0y s\u1ebd m\u1ea5t. C\u1ea5u h\u00ecnh \u0111\u00e3 l\u01b0u tr\u00ean m\u00e1y kh\u00f4ng b\u1ecb \u1ea3nh h\u01b0\u1edfng cho t\u1edbi khi b\u1ea5m L\u01b0u."

    const/high16 v8, 0x41400000    # 12.0f

    const v9, -0x57637a

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lmdm/RcParamsView;->label(Ljava/lang/String;FIZF)Landroid/widget/TextView;

    move-result-object v2

    .line 744
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-direct {p0, v3}, Lmdm/RcParamsView;->px(F)I

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-direct {p0, v4}, Lmdm/RcParamsView;->px(F)I

    move-result v4

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v3, v7, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 745
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 747
    new-array v2, v1, [Landroid/widget/FrameLayout;

    .line 749
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, v6, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 750
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 751
    const v4, 0x800005

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 752
    invoke-direct {p0, v5}, Lmdm/RcParamsView;->px(F)I

    move-result v4

    invoke-virtual {v3, v7, v4, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 754
    const-string v4, "Hu\u1ef7"

    invoke-direct {p0, v4, v7}, Lmdm/RcParamsView;->pill(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v4

    .line 755
    new-instance v5, Lmdm/RcParamsView$20;

    invoke-direct {v5, p0, v2}, Lmdm/RcParamsView$20;-><init>(Lmdm/RcParamsView;[Landroid/widget/FrameLayout;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 758
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 760
    const-string v4, "\u0110\u1eb7t l\u1ea1i"

    invoke-direct {p0, v4, v1}, Lmdm/RcParamsView;->pill(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v1

    .line 761
    new-instance v4, Lmdm/RcParamsView$21;

    invoke-direct {v4, p0, v2}, Lmdm/RcParamsView$21;-><init>(Lmdm/RcParamsView;[Landroid/widget/FrameLayout;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 769
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 770
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 772
    invoke-direct {p0}, Lmdm/RcParamsView;->modalWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lmdm/RcParamsView;->pushModal(Landroid/view/View;I)Landroid/widget/FrameLayout;

    move-result-object v0

    aput-object v0, v2, v7

    .line 773
    return-void
.end method

.method private countDiff()I
    .registers 16

    .line 686
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    .line 687
    nop

    .line 688
    iget-object v1, p0, Lmdm/RcParamsView;->working:Ljava/util/Map;

    invoke-static {v1}, Lmdm/RcParams;->weaponCount(Ljava/util/Map;)I

    move-result v1

    .line 689
    move v3, v2

    move v4, v3

    :goto_10
    if-ge v3, v1, :cond_4e

    .line 690
    iget-object v5, p0, Lmdm/RcParamsView;->working:Ljava/util/Map;

    invoke-static {v5, v3}, Lmdm/RcParams;->weaponEntry(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_1b

    goto :goto_4b

    .line 691
    :cond_1b
    sget-object v5, Lmdm/RcParams;->EDITABLE_SCOPES:[I

    array-length v6, v5

    move v7, v2

    :goto_1f
    if-ge v7, v6, :cond_4b

    aget v8, v5, v7

    .line 692
    move v9, v2

    :goto_24
    const/4 v10, 0x3

    if-ge v9, v10, :cond_48

    aget v10, v0, v9

    .line 693
    iget-object v11, p0, Lmdm/RcParamsView;->original:Ljava/util/Map;

    invoke-static {v11, v3, v8, v10}, Lmdm/RcParams;->valueFor(Ljava/util/Map;III)D

    move-result-wide v11

    .line 694
    iget-object v13, p0, Lmdm/RcParamsView;->working:Ljava/util/Map;

    invoke-static {v13, v3, v8, v10}, Lmdm/RcParams;->valueFor(Ljava/util/Map;III)D

    move-result-wide v13

    .line 695
    sub-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v10, v10, v12

    if-lez v10, :cond_45

    add-int/lit8 v4, v4, 0x1

    .line 692
    :cond_45
    add-int/lit8 v9, v9, 0x1

    goto :goto_24

    .line 691
    :cond_48
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 689
    :cond_4b
    :goto_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 699
    :cond_4e
    return v4
.end method

.method private glassCard(F)Landroid/graphics/drawable/GradientDrawable;
    .registers 4

    .line 815
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 816
    invoke-direct {p0, p1}, Lmdm/RcParamsView;->px(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 817
    const p1, -0xde5e8ec

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 818
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Lmdm/RcParamsView;->px(F)I

    move-result p1

    const v1, 0x38e8d3a4

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 819
    return-object v0
.end method

.method private label(Ljava/lang/String;FIZF)Landroid/widget/TextView;
    .registers 8

    .line 778
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 779
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    const/4 p1, 0x2

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 781
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 782
    if-eqz p4, :cond_1b

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 783
    :cond_1b
    const/4 p1, 0x0

    cmpl-float p1, p5, p1

    if-lez p1, :cond_23

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 784
    :cond_23
    return-object v0
.end method

.method private modalWidth()I
    .registers 4

    .line 605
    iget-object v0, p0, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 606
    const/high16 v1, 0x43b40000    # 360.0f

    invoke-direct {p0, v1}, Lmdm/RcParamsView;->px(F)I

    move-result v1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-direct {p0, v2}, Lmdm/RcParamsView;->px(F)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private pickStance(II)V
    .registers 4

    .line 422
    iget-object v0, p0, Lmdm/RcParamsView;->stances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    invoke-direct {p0}, Lmdm/RcParamsView;->rebuild()V

    .line 424
    return-void
.end method

.method private pill(Ljava/lang/String;Z)Landroid/widget/TextView;
    .registers 6

    .line 788
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 789
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    const/4 p1, 0x2

    const/high16 v1, 0x41580000    # 13.5f

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 791
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 792
    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 793
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 794
    const/high16 v1, 0x41600000    # 14.0f

    invoke-direct {p0, v1}, Lmdm/RcParamsView;->px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 795
    if-eqz p2, :cond_47

    .line 796
    const p2, -0x152958

    const v1, -0x365a9a

    filled-new-array {p2, v1}, [I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 797
    sget-object p2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 798
    const p2, -0xe5ebf6

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5f

    .line 800
    :cond_47
    const p2, 0x14ffffff

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 801
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p0, p2}, Lmdm/RcParamsView;->px(F)I

    move-result p2

    const v1, 0x44e8d3a4

    invoke-virtual {p1, p2, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 802
    const p2, -0x172c5c

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 804
    :goto_5f
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 805
    const/high16 p1, 0x41a00000    # 20.0f

    invoke-direct {p0, p1}, Lmdm/RcParamsView;->px(F)I

    move-result p2

    const/high16 v1, 0x41100000    # 9.0f

    invoke-direct {p0, v1}, Lmdm/RcParamsView;->px(F)I

    move-result v2

    invoke-direct {p0, p1}, Lmdm/RcParamsView;->px(F)I

    move-result p1

    invoke-direct {p0, v1}, Lmdm/RcParamsView;->px(F)I

    move-result v1

    invoke-virtual {v0, p2, v2, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 806
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 808
    const/high16 p2, 0x40c00000    # 6.0f

    invoke-direct {p0, p2}, Lmdm/RcParamsView;->px(F)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 809
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 810
    return-object v0
.end method

.method private popModal(Landroid/widget/FrameLayout;)V
    .registers 3

    .line 596
    iget-object v0, p0, Lmdm/RcParamsView;->host:Landroid/view/ViewGroup;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    .line 598
    :try_start_6
    iget-object v0, p0, Lmdm/RcParamsView;->host:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_c

    .line 600
    goto :goto_d

    .line 599
    :catchall_c
    move-exception p1

    .line 602
    :cond_d
    :goto_d
    return-void
.end method

.method private promptValue(IIILandroid/widget/TextView;Landroid/widget/SeekBar;)V
    .registers 22

    .line 612
    move-object/from16 v0, p0

    new-instance v6, Landroid/widget/EditText;

    iget-object v1, v0, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-direct {v6, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 613
    iget-object v1, v0, Lmdm/RcParamsView;->working:Ljava/util/Map;

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-static {v1, v7, v8, v9}, Lmdm/RcParams;->valueFor(Ljava/util/Map;III)D

    move-result-wide v1

    invoke-static {v1, v2}, Lmdm/RcParams;->fmt(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 614
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 615
    const/16 v1, 0x2002

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 616
    const v1, -0xc1528

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 617
    const v1, -0x57637a

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 618
    const/high16 v1, 0x41400000    # 12.0f

    invoke-direct {v0, v1}, Lmdm/RcParamsView;->px(F)I

    move-result v2

    invoke-direct {v0, v1}, Lmdm/RcParamsView;->px(F)I

    move-result v3

    invoke-direct {v0, v1}, Lmdm/RcParamsView;->px(F)I

    move-result v4

    invoke-direct {v0, v1}, Lmdm/RcParamsView;->px(F)I

    move-result v1

    invoke-virtual {v6, v2, v3, v4, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 619
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 620
    const/high16 v2, 0x41000000    # 8.0f

    invoke-direct {v0, v2}, Lmdm/RcParamsView;->px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 621
    const v2, 0x14ffffff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 622
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2}, Lmdm/RcParamsView;->px(F)I

    move-result v2

    const v3, 0x40e8d3a4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 623
    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 625
    new-instance v11, Landroid/widget/LinearLayout;

    iget-object v1, v0, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-direct {v11, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 626
    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 627
    const/high16 v1, 0x41900000    # 18.0f

    invoke-direct {v0, v1}, Lmdm/RcParamsView;->glassCard(F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 628
    invoke-direct {v0, v1}, Lmdm/RcParamsView;->px(F)I

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-direct {v0, v3}, Lmdm/RcParamsView;->px(F)I

    move-result v3

    invoke-direct {v0, v1}, Lmdm/RcParamsView;->px(F)I

    move-result v1

    const/high16 v12, 0x41600000    # 14.0f

    invoke-direct {v0, v12}, Lmdm/RcParamsView;->px(F)I

    move-result v4

    invoke-virtual {v11, v2, v3, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 629
    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 630
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v1, "Gi\u00e1 tr\u1ecb gh\u00ecm t\u00e2m"

    const/high16 v2, 0x41700000    # 15.0f

    const v3, -0xc1528

    invoke-direct/range {v0 .. v5}, Lmdm/RcParamsView;->label(Ljava/lang/String;FIZF)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 631
    const/4 v4, 0x0

    const-string v1, "0 \u2013 200, cho ph\u00e9p s\u1ed1 l\u1ebb"

    const/high16 v2, 0x41380000    # 11.5f

    const v3, -0x57637a

    invoke-direct/range {v0 .. v5}, Lmdm/RcParamsView;->label(Ljava/lang/String;FIZF)Landroid/widget/TextView;

    move-result-object v1

    .line 632
    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v0, v2}, Lmdm/RcParamsView;->px(F)I

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-direct {v0, v3}, Lmdm/RcParamsView;->px(F)I

    move-result v3

    const/4 v13, 0x0

    invoke-virtual {v1, v13, v2, v13, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 633
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 634
    invoke-virtual {v11, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 636
    new-array v3, v10, [Landroid/widget/FrameLayout;

    .line 638
    new-instance v14, Landroid/widget/LinearLayout;

    iget-object v1, v0, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-direct {v14, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 639
    invoke-virtual {v14, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 640
    const v1, 0x800005

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 641
    invoke-direct {v0, v12}, Lmdm/RcParamsView;->px(F)I

    move-result v1

    invoke-virtual {v14, v13, v1, v13, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 643
    const-string v1, "Hu\u1ef7"

    invoke-direct {v0, v1, v13}, Lmdm/RcParamsView;->pill(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v1

    .line 644
    new-instance v2, Lmdm/RcParamsView$17;

    invoke-direct {v2, v0, v3}, Lmdm/RcParamsView$17;-><init>(Lmdm/RcParamsView;[Landroid/widget/FrameLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 649
    const-string v1, "\u0110\u1eb7t"

    invoke-direct {v0, v1, v10}, Lmdm/RcParamsView;->pill(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v10

    .line 650
    new-instance v0, Lmdm/RcParamsView$18;

    move-object/from16 v1, p0

    move-object v2, v6

    move v4, v7

    move v5, v8

    move v6, v9

    move-object/from16 v8, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v8}, Lmdm/RcParamsView$18;-><init>(Lmdm/RcParamsView;Landroid/widget/EditText;[Landroid/widget/FrameLayout;IIILandroid/widget/SeekBar;Landroid/widget/TextView;)V

    move-object v15, v1

    move-object v1, v0

    move-object v0, v15

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    invoke-virtual {v14, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 669
    invoke-virtual {v11, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 671
    invoke-direct {v0}, Lmdm/RcParamsView;->modalWidth()I

    move-result v1

    invoke-direct {v0, v11, v1}, Lmdm/RcParamsView;->pushModal(Landroid/view/View;I)Landroid/widget/FrameLayout;

    move-result-object v1

    aput-object v1, v3, v13

    .line 672
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 673
    return-void
.end method

.method private pushModal(Landroid/view/View;I)Landroid/widget/FrameLayout;
    .registers 6

    .line 576
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 577
    const/high16 v1, -0x34000000    # -3.3554432E7f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 578
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 579
    new-instance v1, Lmdm/RcParamsView$16;

    invoke-direct {v1, p0}, Lmdm/RcParamsView$16;-><init>(Lmdm/RcParamsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, p2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 585
    const/16 p2, 0x11

    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 586
    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    iget-object p1, p0, Lmdm/RcParamsView;->host:Landroid/view/ViewGroup;

    if-eqz p1, :cond_34

    .line 589
    iget-object p1, p0, Lmdm/RcParamsView;->host:Landroid/view/ViewGroup;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p2, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 592
    :cond_34
    return-object v0
.end method

.method private px(F)I
    .registers 3

    .line 101
    iget v0, p0, Lmdm/RcParamsView;->dp:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private rebuild()V
    .registers 15

    .line 305
    iget-object v0, p0, Lmdm/RcParamsView;->listBody:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    return-void

    .line 306
    :cond_5
    iget-object v0, p0, Lmdm/RcParamsView;->listBody:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 307
    nop

    .line 309
    iget-object v0, p0, Lmdm/RcParamsView;->working:Ljava/util/Map;

    invoke-static {v0}, Lmdm/RcParams;->groupedWeapons(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 310
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/high16 v4, 0x40c00000    # 6.0f

    if-eqz v3, :cond_bc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 311
    aget-object v5, v3, v1

    check-cast v5, Ljava/lang/String;

    .line 312
    const/4 v6, 0x1

    aget-object v3, v3, v6

    check-cast v3, [I

    .line 314
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 315
    array-length v8, v3

    move v9, v1

    :goto_35
    if-ge v9, v8, :cond_69

    aget v10, v3, v9

    .line 316
    iget-object v11, p0, Lmdm/RcParamsView;->working:Ljava/util/Map;

    invoke-static {v11, v10}, Lmdm/RcParams;->weaponEntry(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v11

    if-nez v11, :cond_42

    goto :goto_66

    .line 317
    :cond_42
    iget-object v11, p0, Lmdm/RcParamsView;->working:Ljava/util/Map;

    invoke-static {v11, v10}, Lmdm/RcParams;->weaponName(Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 318
    iget-object v12, p0, Lmdm/RcParamsView;->filter:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5f

    iget-object v12, p0, Lmdm/RcParamsView;->filter:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5f

    goto :goto_66

    .line 319
    :cond_5f
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :goto_66
    add-int/lit8 v9, v9, 0x1

    goto :goto_35

    .line 321
    :cond_69
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_70

    goto :goto_17

    .line 323
    :cond_70
    nop

    .line 324
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x1

    const v13, 0x3dcccccd    # 0.1f

    const/high16 v10, 0x41280000    # 10.5f

    const v11, -0x57637a

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lmdm/RcParamsView;->label(Ljava/lang/String;FIZF)Landroid/widget/TextView;

    move-result-object v2

    .line 325
    invoke-direct {p0, v4}, Lmdm/RcParamsView;->px(F)I

    move-result v3

    const/high16 v5, 0x41600000    # 14.0f

    invoke-direct {p0, v5}, Lmdm/RcParamsView;->px(F)I

    move-result v5

    invoke-direct {p0, v4}, Lmdm/RcParamsView;->px(F)I

    move-result v4

    invoke-virtual {v2, v3, v5, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 326
    iget-object v3, v8, Lmdm/RcParamsView;->listBody:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 328
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 329
    iget-object v4, v8, Lmdm/RcParamsView;->listBody:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lmdm/RcParamsView;->weaponRow(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 330
    goto :goto_9f

    .line 331
    :cond_b9
    move v2, v6

    goto/16 :goto_17

    .line 333
    :cond_bc
    move-object v8, p0

    if-nez v2, :cond_10d

    .line 334
    iget-object v0, v8, Lmdm/RcParamsView;->filter:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 335
    const-string v0, "C\u1ea5u h\u00ecnh n\u00e0y ch\u01b0a c\u00f3 d\u1eef li\u1ec7u gh\u00ecm t\u00e2m."

    move-object v9, v0

    goto :goto_e7

    .line 336
    :cond_cb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Kh\u00f4ng c\u00f3 s\u00fang kh\u1edbp \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lmdm/RcParamsView;->filter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    :goto_e7
    nop

    .line 334
    const/high16 v10, 0x41500000    # 13.0f

    const v11, -0x57637a

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lmdm/RcParamsView;->label(Ljava/lang/String;FIZF)Landroid/widget/TextView;

    move-result-object v0

    .line 337
    invoke-direct {p0, v4}, Lmdm/RcParamsView;->px(F)I

    move-result v1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-direct {p0, v2}, Lmdm/RcParamsView;->px(F)I

    move-result v3

    invoke-direct {p0, v4}, Lmdm/RcParamsView;->px(F)I

    move-result v4

    invoke-direct {p0, v2}, Lmdm/RcParamsView;->px(F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 338
    iget-object v1, v8, Lmdm/RcParamsView;->listBody:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 341
    :cond_10d
    invoke-direct {p0}, Lmdm/RcParamsView;->updateHint()V

    .line 342
    return-void
.end method

.method private save()V
    .registers 5

    .line 703
    iget-object v0, p0, Lmdm/RcParamsView;->working:Ljava/util/Map;

    .line 704
    iget-object v1, p0, Lmdm/RcParamsView;->saveBtn:Landroid/widget/TextView;

    if-eqz v1, :cond_14

    .line 705
    iget-object v1, p0, Lmdm/RcParamsView;->saveBtn:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 706
    iget-object v1, p0, Lmdm/RcParamsView;->saveBtn:Landroid/widget/TextView;

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 709
    :cond_14
    :try_start_14
    iget-object v1, p0, Lmdm/RcParamsView;->km:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    iget-object v2, p0, Lmdm/RcParamsView;->id:Ljava/lang/String;

    new-instance v3, Lmdm/RcParamsView$19;

    invoke-direct {v3, p0, v0}, Lmdm/RcParamsView$19;-><init>(Lmdm/RcParamsView;Ljava/util/Map;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->L(Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$UpdateKeymapCompletionHandler;)V
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_21

    .line 731
    goto :goto_49

    .line 725
    :catchall_21
    move-exception v0

    .line 726
    iget-object v1, p0, Lmdm/RcParamsView;->saveBtn:Landroid/widget/TextView;

    if-eqz v1, :cond_33

    .line 727
    iget-object v1, p0, Lmdm/RcParamsView;->saveBtn:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 728
    iget-object v1, p0, Lmdm/RcParamsView;->saveBtn:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 730
    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L\u1ed7i l\u01b0u: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmdm/RcParamsView;->toast(Ljava/lang/String;)V

    .line 732
    :goto_49
    return-void
.end method

.method private scopeBody(I)Landroid/view/View;
    .registers 8

    .line 386
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 387
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 388
    const/high16 v1, 0x41400000    # 12.0f

    invoke-direct {p0, v1}, Lmdm/RcParamsView;->px(F)I

    move-result v2

    invoke-direct {p0, v1}, Lmdm/RcParamsView;->px(F)I

    move-result v1

    const/high16 v3, 0x41200000    # 10.0f

    invoke-direct {p0, v3}, Lmdm/RcParamsView;->px(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 390
    iget-object v1, p0, Lmdm/RcParamsView;->stances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 391
    if-nez v1, :cond_2f

    move v1, v4

    goto :goto_33

    :cond_2f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 393
    :goto_33
    invoke-direct {p0, p1, v1}, Lmdm/RcParamsView;->comboStrip(II)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 394
    sget-object v2, Lmdm/RcParams;->EDITABLE_SCOPES:[I

    array-length v3, v2

    :goto_3d
    if-ge v4, v3, :cond_4b

    aget v5, v2, v4

    .line 395
    invoke-direct {p0, p1, v5, v1}, Lmdm/RcParamsView;->scopeRow(III)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 394
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 397
    :cond_4b
    return-object v0
.end method

.method private scopeRow(III)Landroid/view/View;
    .registers 21

    .line 463
    move-object/from16 v1, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v0, v1, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 464
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 465
    const/16 v0, 0x10

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 466
    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {v1, v0}, Lmdm/RcParamsView;->px(F)I

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-direct {v1, v3}, Lmdm/RcParamsView;->px(F)I

    move-result v4

    invoke-direct {v1, v0}, Lmdm/RcParamsView;->px(F)I

    move-result v0

    invoke-direct {v1, v3}, Lmdm/RcParamsView;->px(F)I

    move-result v3

    invoke-virtual {v9, v2, v4, v0, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 468
    sget-object v0, Lmdm/RcParams;->SCOPE_LABELS:[Ljava/lang/String;

    aget-object v0, v0, v7

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v2, 0x41480000    # 12.5f

    const v3, -0x172c5c

    move-object/from16 v16, v1

    move-object v1, v0

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v5}, Lmdm/RcParamsView;->label(Ljava/lang/String;FIZF)Landroid/widget/TextView;

    move-result-object v1

    .line 469
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42500000    # 52.0f

    invoke-direct {v0, v3}, Lmdm/RcParamsView;->px(F)I

    move-result v3

    const/4 v11, -0x2

    invoke-direct {v2, v3, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 472
    iget-object v1, v0, Lmdm/RcParamsView;->working:Ljava/util/Map;

    invoke-static {v1, v6, v7, v8}, Lmdm/RcParams;->valueFor(Ljava/util/Map;III)D

    move-result-wide v1

    .line 473
    iget-object v3, v0, Lmdm/RcParamsView;->working:Ljava/util/Map;

    invoke-static {v3, v6, v7, v8}, Lmdm/RcParams;->recordsFor(Ljava/util/Map;III)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    .line 475
    xor-int/lit8 v13, v12, 0x1

    new-instance v14, Landroid/widget/SeekBar;

    iget-object v3, v0, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-direct {v14, v3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 476
    const/16 v3, 0xc8

    invoke-virtual {v14, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 477
    const-wide/high16 v3, 0x4069000000000000L    # 200.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v14, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 478
    invoke-virtual {v14, v10, v10, v10, v10}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 479
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-direct {v0, v4}, Lmdm/RcParamsView;->px(F)I

    move-result v4

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v3, v10, v4, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v14, v3}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    invoke-direct {v0, v14}, Lmdm/RcParamsView;->tintSeek(Landroid/widget/SeekBar;)V

    .line 481
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 483
    invoke-static {v1, v2}, Lmdm/RcParams;->fmt(D)Ljava/lang/String;

    move-result-object v1

    if-nez v12, :cond_a4

    const v2, -0xc1528

    goto :goto_a7

    :cond_a4
    const v2, -0x57637a

    :goto_a7
    move v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v2, 0x41600000    # 14.0f

    invoke-direct/range {v0 .. v5}, Lmdm/RcParamsView;->label(Ljava/lang/String;FIZF)Landroid/widget/TextView;

    move-result-object v1

    .line 484
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 485
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42600000    # 56.0f

    invoke-direct {v0, v3}, Lmdm/RcParamsView;->px(F)I

    move-result v3

    invoke-direct {v2, v3, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 488
    const-string v2, "\u2212"

    invoke-direct {v0, v2}, Lmdm/RcParamsView;->stepper(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v10

    .line 489
    const-string v2, "+"

    invoke-direct {v0, v2}, Lmdm/RcParamsView;->stepper(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v11

    .line 490
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 491
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 493
    invoke-virtual {v14, v13}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 494
    const v2, 0x3eb33333    # 0.35f

    if-nez v12, :cond_e2

    move v3, v15

    goto :goto_e3

    :cond_e2
    move v3, v2

    :goto_e3
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 495
    if-nez v12, :cond_e9

    move v2, v15

    :cond_e9
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 497
    new-instance v0, Lmdm/RcParamsView$12;

    move v3, v6

    move v4, v7

    move v5, v8

    move v2, v13

    move-object v6, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lmdm/RcParamsView$12;-><init>(Lmdm/RcParamsView;ZIIILandroid/widget/TextView;)V

    invoke-virtual {v14, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 509
    new-instance v0, Lmdm/RcParamsView$13;

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object v7, v6

    move-object v6, v14

    invoke-direct/range {v0 .. v7}, Lmdm/RcParamsView$13;-><init>(Lmdm/RcParamsView;ZIIILandroid/widget/SeekBar;Landroid/widget/TextView;)V

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    new-instance v0, Lmdm/RcParamsView$14;

    invoke-direct/range {v0 .. v7}, Lmdm/RcParamsView$14;-><init>(Lmdm/RcParamsView;ZIIILandroid/widget/SeekBar;Landroid/widget/TextView;)V

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    new-instance v0, Lmdm/RcParamsView$15;

    move-object v1, v7

    move-object v7, v6

    move-object v6, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lmdm/RcParamsView$15;-><init>(Lmdm/RcParamsView;ZIIILandroid/widget/TextView;Landroid/widget/SeekBar;)V

    move-object v7, v6

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    if-nez v12, :cond_124

    goto :goto_127

    :cond_124
    const v15, 0x3ecccccd    # 0.4f

    :goto_127
    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 540
    return-object v9
.end method

.method private show()V
    .registers 15

    .line 155
    iget-boolean v0, p0, Lmdm/RcParamsView;->attached:Z

    if-eqz v0, :cond_5

    return-void

    .line 156
    :cond_5
    invoke-direct {p0}, Lmdm/RcParamsView;->windowRoot()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lmdm/RcParamsView;->host:Landroid/view/ViewGroup;

    .line 157
    iget-object v0, p0, Lmdm/RcParamsView;->host:Landroid/view/ViewGroup;

    if-nez v0, :cond_15

    .line 158
    const-string v0, "Kh\u00f4ng m\u1edf \u0111\u01b0\u1ee3c b\u1ea3ng"

    invoke-direct {p0, v0}, Lmdm/RcParamsView;->toast(Ljava/lang/String;)V

    .line 159
    return-void

    .line 162
    :cond_15
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmdm/RcParamsView;->shell:Landroid/widget/FrameLayout;

    .line 163
    iget-object v0, p0, Lmdm/RcParamsView;->shell:Landroid/widget/FrameLayout;

    const/high16 v1, -0x34000000    # -3.3554432E7f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 164
    iget-object v0, p0, Lmdm/RcParamsView;->shell:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 165
    iget-object v0, p0, Lmdm/RcParamsView;->shell:Landroid/widget/FrameLayout;

    new-instance v2, Lmdm/RcParamsView$2;

    invoke-direct {v2, p0}, Lmdm/RcParamsView$2;-><init>(Lmdm/RcParamsView;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmdm/RcParamsView;->root:Landroid/widget/LinearLayout;

    .line 170
    iget-object v0, p0, Lmdm/RcParamsView;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 171
    iget-object v0, p0, Lmdm/RcParamsView;->root:Landroid/widget/LinearLayout;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-direct {p0, v2}, Lmdm/RcParamsView;->glassCard(F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v0, p0, Lmdm/RcParamsView;->root:Landroid/widget/LinearLayout;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-direct {p0, v2}, Lmdm/RcParamsView;->px(F)I

    move-result v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-direct {p0, v4}, Lmdm/RcParamsView;->px(F)I

    move-result v4

    invoke-direct {p0, v2}, Lmdm/RcParamsView;->px(F)I

    move-result v2

    const/high16 v5, 0x41600000    # 14.0f

    invoke-direct {p0, v5}, Lmdm/RcParamsView;->px(F)I

    move-result v5

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 173
    iget-object v0, p0, Lmdm/RcParamsView;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 174
    iget-object v0, p0, Lmdm/RcParamsView;->root:Landroid/widget/LinearLayout;

    new-instance v2, Lmdm/RcParamsView$3;

    invoke-direct {v2, p0}, Lmdm/RcParamsView$3;-><init>(Lmdm/RcParamsView;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 180
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 181
    const/4 v7, 0x1

    const v8, 0x3e0f5c29    # 0.14f

    const-string v4, "TH\u00d4NG S\u1ed0 GH\u00ccM T\u00c2M"

    const/high16 v5, 0x41280000    # 10.5f

    const v6, -0x172c5c

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lmdm/RcParamsView;->label(Ljava/lang/String;FIZF)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    iget-object v4, v3, Lmdm/RcParamsView;->title:Ljava/lang/String;

    const/4 v8, 0x0

    const/high16 v5, 0x41a00000    # 20.0f

    const v6, -0xc1528

    invoke-direct/range {v3 .. v8}, Lmdm/RcParamsView;->label(Ljava/lang/String;FIZF)Landroid/widget/TextView;

    move-result-object v2

    .line 183
    const/high16 v4, 0x40400000    # 3.0f

    invoke-direct {p0, v4}, Lmdm/RcParamsView;->px(F)I

    move-result v4

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v4, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 184
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    invoke-direct {p0}, Lmdm/RcParamsView;->bundleLabel()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/high16 v5, 0x41380000    # 11.5f

    const v6, -0x57637a

    invoke-direct/range {v3 .. v8}, Lmdm/RcParamsView;->label(Ljava/lang/String;FIZF)Landroid/widget/TextView;

    move-result-object v2

    .line 186
    const/high16 v10, 0x40000000    # 2.0f

    invoke-direct {p0, v10}, Lmdm/RcParamsView;->px(F)I

    move-result v4

    invoke-virtual {v2, v9, v4, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 187
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 188
    iget-object v2, v3, Lmdm/RcParamsView;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 191
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, v3, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 192
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 193
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 194
    const/high16 v4, 0x41400000    # 12.0f

    invoke-direct {p0, v4}, Lmdm/RcParamsView;->glassCard(F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 195
    invoke-direct {p0, v4}, Lmdm/RcParamsView;->px(F)I

    move-result v5

    invoke-direct {p0, v4}, Lmdm/RcParamsView;->px(F)I

    move-result v6

    invoke-virtual {v0, v5, v9, v6, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 196
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 197
    const/high16 v6, 0x42280000    # 42.0f

    invoke-direct {p0, v6}, Lmdm/RcParamsView;->px(F)I

    move-result v6

    const/4 v11, -0x1

    invoke-direct {v5, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 198
    invoke-direct {p0, v4}, Lmdm/RcParamsView;->px(F)I

    move-result v4

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 199
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    const-string v4, "\u2315"

    const/high16 v5, 0x41a00000    # 20.0f

    const v6, -0x57637a

    invoke-direct/range {v3 .. v8}, Lmdm/RcParamsView;->label(Ljava/lang/String;FIZF)Landroid/widget/TextView;

    move-result-object v4

    .line 202
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    new-instance v4, Landroid/widget/EditText;

    iget-object v5, v3, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 204
    const/4 v5, 0x2

    const/high16 v6, 0x41580000    # 13.5f

    invoke-virtual {v4, v5, v6}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 205
    const v5, -0xc1528

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTextColor(I)V

    .line 206
    const v5, -0x57637a

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 207
    const-string v5, "T\u00ecm s\u00fang\u2026"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 208
    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 209
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 210
    const/high16 v12, 0x41200000    # 10.0f

    invoke-direct {p0, v12}, Lmdm/RcParamsView;->px(F)I

    move-result v5

    invoke-virtual {v4, v5, v9, v9, v9}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 211
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v5, v9, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    new-instance v5, Lmdm/RcParamsView$4;

    invoke-direct {v5, p0}, Lmdm/RcParamsView$4;-><init>(Lmdm/RcParamsView;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 220
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    iget-object v4, v3, Lmdm/RcParamsView;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v4, v3, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 225
    invoke-virtual {v0, v9}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 226
    invoke-virtual {v0, v9}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 227
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 229
    invoke-direct {p0, v12}, Lmdm/RcParamsView;->px(F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 230
    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, v3, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lmdm/RcParamsView;->listBody:Landroid/widget/LinearLayout;

    .line 232
    iget-object v4, v3, Lmdm/RcParamsView;->listBody:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 233
    iget-object v4, v3, Lmdm/RcParamsView;->listBody:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v11, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    iget-object v4, v3, Lmdm/RcParamsView;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    const-string v4, ""

    const/high16 v5, 0x41380000    # 11.5f

    const v6, -0x57637a

    invoke-direct/range {v3 .. v8}, Lmdm/RcParamsView;->label(Ljava/lang/String;FIZF)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, v3, Lmdm/RcParamsView;->hint:Landroid/widget/TextView;

    .line 239
    iget-object v0, v3, Lmdm/RcParamsView;->hint:Landroid/widget/TextView;

    invoke-direct {p0, v10}, Lmdm/RcParamsView;->px(F)I

    move-result v4

    invoke-direct {p0, v12}, Lmdm/RcParamsView;->px(F)I

    move-result v5

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-direct {p0, v6}, Lmdm/RcParamsView;->px(F)I

    move-result v6

    invoke-virtual {v0, v4, v5, v9, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 240
    iget-object v0, v3, Lmdm/RcParamsView;->root:Landroid/widget/LinearLayout;

    iget-object v4, v3, Lmdm/RcParamsView;->hint:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, v3, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 243
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 244
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 246
    const-string v2, "M\u1eb7c \u0111\u1ecbnh"

    invoke-direct {p0, v2, v9}, Lmdm/RcParamsView;->pill(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v2

    .line 247
    new-instance v4, Lmdm/RcParamsView$5;

    invoke-direct {v4, p0}, Lmdm/RcParamsView$5;-><init>(Lmdm/RcParamsView;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 252
    new-instance v2, Landroid/view/View;

    iget-object v4, v3, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 253
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v1, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 256
    const-string v2, "L\u01b0u"

    invoke-direct {p0, v2, v1}, Lmdm/RcParamsView;->pill(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v3, Lmdm/RcParamsView;->saveBtn:Landroid/widget/TextView;

    .line 257
    iget-object v2, v3, Lmdm/RcParamsView;->saveBtn:Landroid/widget/TextView;

    new-instance v4, Lmdm/RcParamsView$6;

    invoke-direct {v4, p0}, Lmdm/RcParamsView$6;-><init>(Lmdm/RcParamsView;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v2, v3, Lmdm/RcParamsView;->saveBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    iget-object v2, v3, Lmdm/RcParamsView;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 265
    iget-object v0, v3, Lmdm/RcParamsView;->host:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 266
    if-gtz v0, :cond_21a

    iget-object v0, v3, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 267
    :cond_21a
    int-to-float v0, v0

    const v2, 0x3f5c28f6    # 0.86f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 269
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v11, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 271
    const/16 v0, 0x50

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 272
    const/high16 v0, 0x41000000    # 8.0f

    invoke-direct {p0, v0}, Lmdm/RcParamsView;->px(F)I

    move-result v4

    invoke-direct {p0, v0}, Lmdm/RcParamsView;->px(F)I

    move-result v5

    invoke-direct {p0, v0}, Lmdm/RcParamsView;->px(F)I

    move-result v6

    invoke-direct {p0, v0}, Lmdm/RcParamsView;->px(F)I

    move-result v0

    invoke-virtual {v2, v4, v5, v6, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 273
    iget-object v0, v3, Lmdm/RcParamsView;->shell:Landroid/widget/FrameLayout;

    iget-object v4, v3, Lmdm/RcParamsView;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    iget-object v0, v3, Lmdm/RcParamsView;->host:Landroid/view/ViewGroup;

    iget-object v2, v3, Lmdm/RcParamsView;->shell:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iput-boolean v1, v3, Lmdm/RcParamsView;->attached:Z

    .line 279
    invoke-direct {p0}, Lmdm/RcParamsView;->rebuild()V

    .line 280
    return-void
.end method

.method private stepper(Ljava/lang/String;)Landroid/widget/TextView;
    .registers 5

    .line 555
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 556
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    const/4 p1, 0x2

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 558
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 559
    const p1, -0x172c5c

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 560
    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 561
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 562
    const/high16 v1, 0x41100000    # 9.0f

    invoke-direct {p0, v1}, Lmdm/RcParamsView;->px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 563
    const v1, 0x14ffffff

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 564
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Lmdm/RcParamsView;->px(F)I

    move-result v1

    const v2, 0x44e8d3a4

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 565
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 566
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x42080000    # 34.0f

    invoke-direct {p0, v1}, Lmdm/RcParamsView;->px(F)I

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-direct {p0, v2}, Lmdm/RcParamsView;->px(F)I

    move-result v2

    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 567
    const/high16 v1, 0x40800000    # 4.0f

    invoke-direct {p0, v1}, Lmdm/RcParamsView;->px(F)I

    move-result v1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 568
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 569
    return-object v0
.end method

.method private tintSeek(Landroid/widget/SeekBar;)V
    .registers 3

    .line 547
    const v0, -0x172c5c

    :try_start_3
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 548
    const v0, -0xa193c

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 549
    const v0, 0x22ffffff

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1f

    .line 551
    goto :goto_20

    .line 550
    :catchall_1f
    move-exception p1

    .line 552
    :goto_20
    return-void
.end method

.method private toast(Ljava/lang/String;)V
    .registers 4

    .line 142
    :try_start_0
    iget-object v0, p0, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 144
    goto :goto_c

    .line 143
    :catchall_b
    move-exception p1

    .line 145
    :goto_c
    return-void
.end method

.method private updateHint()V
    .registers 5

    .line 678
    iget-object v0, p0, Lmdm/RcParamsView;->hint:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    .line 679
    :cond_5
    invoke-direct {p0}, Lmdm/RcParamsView;->countDiff()I

    move-result v0

    .line 680
    iget-object v1, p0, Lmdm/RcParamsView;->hint:Landroid/widget/TextView;

    if-lez v0, :cond_21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " gi\u00e1 tr\u1ecb \u0111\u00e3 \u0111\u1ed5i \u00b7 b\u1ea5m L\u01b0u \u0111\u1ec3 ghi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_23

    :cond_21
    const-string v2, "Ch\u01b0a c\u00f3 thay \u0111\u1ed5i"

    :goto_23
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    iget-object v1, p0, Lmdm/RcParamsView;->hint:Landroid/widget/TextView;

    if-lez v0, :cond_2e

    const v0, -0x841c5e

    goto :goto_31

    :cond_2e
    const v0, -0x57637a

    :goto_31
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 682
    return-void
.end method

.method private weaponRow(I)Landroid/view/View;
    .registers 14

    .line 345
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 346
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 347
    const/high16 v2, 0x41600000    # 14.0f

    invoke-direct {p0, v2}, Lmdm/RcParamsView;->glassCard(F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 348
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 350
    const/high16 v4, 0x40c00000    # 6.0f

    invoke-direct {p0, v4}, Lmdm/RcParamsView;->px(F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 351
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 354
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 355
    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 356
    invoke-direct {p0, v2}, Lmdm/RcParamsView;->px(F)I

    move-result v2

    const/high16 v6, 0x41300000    # 11.0f

    invoke-direct {p0, v6}, Lmdm/RcParamsView;->px(F)I

    move-result v7

    const/high16 v8, 0x41400000    # 12.0f

    invoke-direct {p0, v8}, Lmdm/RcParamsView;->px(F)I

    move-result v8

    invoke-direct {p0, v6}, Lmdm/RcParamsView;->px(F)I

    move-result v6

    invoke-virtual {v3, v2, v7, v8, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 358
    iget v2, p0, Lmdm/RcParamsView;->expanded:I

    if-ne v2, p1, :cond_54

    const-string v2, "\u25be"

    goto :goto_56

    :cond_54
    const-string v2, "\u25b8"

    :goto_56
    move-object v7, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v8, 0x41500000    # 13.0f

    const v9, -0x172c5c

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lmdm/RcParamsView;->label(Ljava/lang/String;FIZF)Landroid/widget/TextView;

    move-result-object v2

    .line 359
    const/high16 v7, 0x41200000    # 10.0f

    invoke-direct {p0, v7}, Lmdm/RcParamsView;->px(F)I

    move-result v7

    invoke-virtual {v2, v4, v4, v7, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 360
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 362
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v7, v6, Lmdm/RcParamsView;->ctx:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 363
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 364
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    iget-object v1, v6, Lmdm/RcParamsView;->working:Ljava/util/Map;

    invoke-static {v1, p1}, Lmdm/RcParams;->weaponName(Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    const/high16 v8, 0x41700000    # 15.0f

    const v9, -0xc1528

    invoke-direct/range {v6 .. v11}, Lmdm/RcParamsView;->label(Ljava/lang/String;FIZF)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 366
    iget-object v1, v6, Lmdm/RcParamsView;->working:Ljava/util/Map;

    invoke-static {v1, p1}, Lmdm/RcParams;->summary(Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    const/high16 v8, 0x41380000    # 11.5f

    const v9, -0x57637a

    invoke-direct/range {v6 .. v11}, Lmdm/RcParamsView;->label(Ljava/lang/String;FIZF)Landroid/widget/TextView;

    move-result-object v1

    .line 367
    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {p0, v5}, Lmdm/RcParamsView;->px(F)I

    move-result v5

    invoke-virtual {v1, v4, v5, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 368
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 369
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 370
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 372
    new-instance v1, Lmdm/RcParamsView$7;

    invoke-direct {v1, p0, p1}, Lmdm/RcParamsView$7;-><init>(Lmdm/RcParamsView;I)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    iget v1, v6, Lmdm/RcParamsView;->expanded:I

    if-ne v1, p1, :cond_cb

    .line 380
    invoke-direct {p0, p1}, Lmdm/RcParamsView;->scopeBody(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 382
    :cond_cb
    return-object v0
.end method

.method private windowRoot()Landroid/view/ViewGroup;
    .registers 3

    .line 150
    iget-object v0, p0, Lmdm/RcParamsView;->anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 151
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_d

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method


# virtual methods
.method public open()V
    .registers 4

    .line 107
    iget-object v0, p0, Lmdm/RcParamsView;->km:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    if-nez v0, :cond_a

    .line 108
    const-string v0, "Kh\u00f4ng c\u00f3 k\u1ebft n\u1ed1i c\u1ea5u h\u00ecnh"

    invoke-direct {p0, v0}, Lmdm/RcParamsView;->toast(Ljava/lang/String;)V

    .line 109
    return-void

    .line 112
    :cond_a
    :try_start_a
    iget-object v0, p0, Lmdm/RcParamsView;->km:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    iget-object v1, p0, Lmdm/RcParamsView;->id:Ljava/lang/String;

    new-instance v2, Lmdm/RcParamsView$1;

    invoke-direct {v2, p0}, Lmdm/RcParamsView$1;-><init>(Lmdm/RcParamsView;)V

    invoke-virtual {v0, v1, v2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->r(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;)V
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_17

    .line 131
    goto :goto_2e

    .line 129
    :catchall_17
    move-exception v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L\u1ed7i \u0111\u1ecdc c\u1ea5u h\u00ecnh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmdm/RcParamsView;->toast(Ljava/lang/String;)V

    .line 132
    :goto_2e
    return-void
.end method
