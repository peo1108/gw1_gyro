.class public Lmdm/ParamsSheet;
.super Ljava/lang/Object;
.source "ParamsSheet.java"


# static fields
.field static final CARD:I = -0xdebedf1

.field static final DIM:I = -0x57637a

.field static final GOLD:I = -0x172c5c

.field static final GOLD_DIM:I = 0x66e8d3a4

.field static final ON_GOLD:I = -0xe5ebf6

.field static final ROW:I = -0xe3e6eb

.field static final TEXT:I = -0xc1528


# instance fields
.field cells:Landroid/widget/LinearLayout;

.field closeArmed:Z

.field final ctx:Landroid/content/Context;

.field dirty:Z

.field final dp:F

.field final id:Ljava/lang/String;

.field final km:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

.field list:Landroid/widget/LinearLayout;

.field final main:Landroid/os/Handler;

.field root:Landroid/widget/FrameLayout;

.field saveBtn:Landroid/widget/TextView;

.field stance:I

.field stanceTabs:[Landroid/widget/TextView;

.field final title:Ljava/lang/String;

.field weapon:I

.field final weaponRows:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field weaponTitle:Landroid/widget/TextView;

.field wm:Landroid/view/WindowManager;

.field work:Ljava/util/Map;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager;)V
    .registers 7

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmdm/ParamsSheet;->main:Landroid/os/Handler;

    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lmdm/ParamsSheet;->stanceTabs:[Landroid/widget/TextView;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmdm/ParamsSheet;->weaponRows:Ljava/util/Map;

    .line 70
    const/16 v0, 0x16

    iput v0, p0, Lmdm/ParamsSheet;->weapon:I

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lmdm/ParamsSheet;->stance:I

    .line 80
    iput-object p1, p0, Lmdm/ParamsSheet;->ctx:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lmdm/ParamsSheet;->id:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lmdm/ParamsSheet;->title:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lmdm/ParamsSheet;->km:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    .line 84
    invoke-static {p1}, Lmdm/TabletScale;->density(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lmdm/ParamsSheet;->dp:F

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager;)V
    .registers 6

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p5}, Lmdm/ParamsSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager;)V

    .line 77
    return-void
.end method

.method static fmt(D)Ljava/lang/String;
    .registers 4

    .line 425
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_e

    double-to-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_12

    :cond_e
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    :goto_12
    return-object p0
.end method

.method public static openSelected(Landroid/content/Context;Lcom/zjx/jyandroid/ForegroundService/KeymapManager;)V
    .registers 5

    .line 89
    invoke-static {}, Lmdm/LocalKeymapStore;->selectedRcId()Ljava/lang/String;

    move-result-object v0

    .line 90
    if-nez v0, :cond_11

    .line 91
    const-string p1, "Ch\u01b0a ch\u1ecdn c\u1ea5u h\u00ecnh gh\u00ecm t\u00e2m"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 92
    return-void

    .line 94
    :cond_11
    new-instance v1, Lmdm/ParamsSheet;

    invoke-static {v0}, Lmdm/LocalKeymapStore;->nameOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2, p1}, Lmdm/ParamsSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager;)V

    invoke-virtual {v1}, Lmdm/ParamsSheet;->open()V

    .line 95
    return-void
.end method

.method static parse(Ljava/lang/String;)Ljava/lang/Double;
    .registers 3

    .line 414
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 415
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 416
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    return-object v0

    .line 418
    :cond_f
    :try_start_f
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_13} :catch_14

    return-object p0

    .line 419
    :catch_14
    move-exception p0

    .line 420
    return-object v0
.end method


# virtual methods
.method cell(I)Landroid/view/View;
    .registers 12

    .line 348
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmdm/ParamsSheet;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 349
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 350
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 351
    const/high16 v2, 0x41400000    # 12.0f

    const v3, 0x22e8d3a4

    const v4, -0xe3e6eb

    invoke-virtual {p0, v4, v2, v3}, Lmdm/ParamsSheet;->rounded(IFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 352
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {p0, v2}, Lmdm/ParamsSheet;->px(F)I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {p0, v3}, Lmdm/ParamsSheet;->px(F)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lmdm/RcStore;->SLOT_LABELS:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_40

    const-string v3, "  (T\u00e2m tr\u1eafng)"

    goto :goto_42

    :cond_40
    const-string v3, ""

    :goto_42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 354
    const/high16 v3, 0x41700000    # 15.0f

    const v4, -0xc1528

    const/4 v5, 0x1

    invoke-virtual {p0, v2, v3, v4, v5}, Lmdm/ParamsSheet;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p0, Lmdm/ParamsSheet;->ctx:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 357
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 358
    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 359
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setGravity(I)V

    .line 360
    const v4, -0x172c5c

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 361
    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {p0, v4}, Lmdm/ParamsSheet;->sp(F)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 362
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 363
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 364
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 365
    iget-object v1, p0, Lmdm/ParamsSheet;->work:Ljava/util/Map;

    iget v3, p0, Lmdm/ParamsSheet;->weapon:I

    iget v4, p0, Lmdm/ParamsSheet;->stance:I

    invoke-static {v1, v3, v4, p1}, Lmdm/RcStore;->get(Ljava/util/Map;III)D

    move-result-wide v3

    invoke-static {v3, v4}, Lmdm/ParamsSheet;->fmt(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 366
    new-instance v1, Lmdm/ParamsSheet$8;

    invoke-direct {v1, p0, p1}, Lmdm/ParamsSheet$8;-><init>(Lmdm/ParamsSheet;I)V

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 375
    new-instance v1, Lmdm/ParamsSheet$9;

    invoke-direct {v1, p0, v2, p1}, Lmdm/ParamsSheet$9;-><init>(Lmdm/ParamsSheet;Landroid/widget/EditText;I)V

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 381
    const-string v1, "\u2212"

    const/4 v3, -0x1

    invoke-virtual {p0, v1, v2, p1, v3}, Lmdm/ParamsSheet;->step(Ljava/lang/String;Landroid/widget/EditText;II)Landroid/view/View;

    move-result-object v1

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42200000    # 40.0f

    invoke-virtual {p0, v6}, Lmdm/ParamsSheet;->px(F)I

    move-result v7

    const/high16 v8, 0x42100000    # 36.0f

    invoke-virtual {p0, v8}, Lmdm/ParamsSheet;->px(F)I

    move-result v9

    invoke-direct {v4, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x428c0000    # 70.0f

    invoke-virtual {p0, v4}, Lmdm/ParamsSheet;->px(F)I

    move-result v4

    const/high16 v7, 0x42300000    # 44.0f

    invoke-virtual {p0, v7}, Lmdm/ParamsSheet;->px(F)I

    move-result v7

    invoke-direct {v1, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    const-string v1, "+"

    invoke-virtual {p0, v1, v2, p1, v5}, Lmdm/ParamsSheet;->step(Ljava/lang/String;Landroid/widget/EditText;II)Landroid/view/View;

    move-result-object p1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v6}, Lmdm/ParamsSheet;->px(F)I

    move-result v2

    invoke-virtual {p0, v8}, Lmdm/ParamsSheet;->px(F)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmdm/ParamsSheet;->ctx:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 386
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42580000    # 54.0f

    invoke-virtual {p0, v2}, Lmdm/ParamsSheet;->px(F)I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 387
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {p0, v2}, Lmdm/ParamsSheet;->px(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 388
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    return-object p1
.end method

.method cellColumn()Landroid/view/View;
    .registers 11

    .line 277
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmdm/ParamsSheet;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 278
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 279
    const-string v2, ""

    const/high16 v3, 0x41a00000    # 20.0f

    const v4, -0xc1528

    invoke-virtual {p0, v2, v3, v4, v1}, Lmdm/ParamsSheet;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lmdm/ParamsSheet;->weaponTitle:Landroid/widget/TextView;

    .line 280
    iget-object v2, p0, Lmdm/ParamsSheet;->weaponTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 282
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lmdm/ParamsSheet;->ctx:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 283
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 284
    const/high16 v5, 0x41400000    # 12.0f

    const v6, 0x66e8d3a4

    const v7, -0xe3e6eb

    invoke-virtual {p0, v7, v5, v6}, Lmdm/ParamsSheet;->rounded(IFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 285
    const/high16 v5, 0x40400000    # 3.0f

    invoke-virtual {p0, v5}, Lmdm/ParamsSheet;->px(F)I

    move-result v6

    invoke-virtual {p0, v5}, Lmdm/ParamsSheet;->px(F)I

    move-result v7

    invoke-virtual {p0, v5}, Lmdm/ParamsSheet;->px(F)I

    move-result v8

    invoke-virtual {p0, v5}, Lmdm/ParamsSheet;->px(F)I

    move-result v5

    invoke-virtual {v2, v6, v7, v8, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 286
    move v5, v3

    :goto_4d
    const/4 v6, 0x3

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    if-ge v5, v6, :cond_7a

    .line 287
    nop

    .line 288
    sget-object v6, Lmdm/RcStore;->STANCES:[Ljava/lang/String;

    aget-object v6, v6, v5

    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {p0, v6, v9, v4, v1}, Lmdm/ParamsSheet;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    .line 289
    const/16 v9, 0x11

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 290
    new-instance v9, Lmdm/ParamsSheet$7;

    invoke-direct {v9, p0, v5}, Lmdm/ParamsSheet$7;-><init>(Lmdm/ParamsSheet;I)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v3, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    iget-object v7, p0, Lmdm/ParamsSheet;->stanceTabs:[Landroid/widget/TextView;

    aput-object v6, v7, v5

    .line 286
    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    .line 296
    :cond_7a
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42200000    # 40.0f

    invoke-virtual {p0, v5}, Lmdm/ParamsSheet;->px(F)I

    move-result v5

    invoke-direct {v4, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 297
    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {p0, v5}, Lmdm/ParamsSheet;->px(F)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 298
    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    new-instance v2, Landroid/widget/ScrollView;

    iget-object v4, p0, Lmdm/ParamsSheet;->ctx:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 301
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lmdm/ParamsSheet;->ctx:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lmdm/ParamsSheet;->cells:Landroid/widget/LinearLayout;

    .line 302
    iget-object v4, p0, Lmdm/ParamsSheet;->cells:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 303
    iget-object v1, p0, Lmdm/ParamsSheet;->cells:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 304
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 305
    invoke-virtual {p0, v5}, Lmdm/ParamsSheet;->px(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 306
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    return-object v0
.end method

.method close()V
    .registers 3

    .line 185
    :try_start_0
    iget-object v0, p0, Lmdm/ParamsSheet;->wm:Landroid/view/WindowManager;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmdm/ParamsSheet;->root:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmdm/ParamsSheet;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lmdm/ParamsSheet;->root:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    goto :goto_11

    :catchall_10
    move-exception v0

    .line 186
    :cond_11
    :goto_11
    const/4 v0, 0x0

    iput-object v0, p0, Lmdm/ParamsSheet;->root:Landroid/widget/FrameLayout;

    .line 187
    return-void
.end method

.method fillCells()V
    .registers 6

    .line 343
    iget-object v0, p0, Lmdm/ParamsSheet;->cells:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 344
    iget v0, p0, Lmdm/ParamsSheet;->weapon:I

    invoke-static {v0}, Lmdm/RcStore;->availableSlots(I)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_1d

    aget v3, v0, v2

    iget-object v4, p0, Lmdm/ParamsSheet;->cells:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lmdm/ParamsSheet;->cell(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 345
    :cond_1d
    return-void
.end method

.method fillWeapons(Ljava/lang/String;)V
    .registers 11

    .line 249
    iget-object v0, p0, Lmdm/ParamsSheet;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 250
    iget-object v0, p0, Lmdm/ParamsSheet;->weaponRows:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 251
    if-nez p1, :cond_f

    const-string p1, ""

    goto :goto_17

    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 252
    :goto_17
    nop

    .line 253
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    :goto_1b
    sget-object v3, Lmdm/RcStore;->WEAPONS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_b4

    .line 254
    invoke-static {v2}, Lmdm/RcStore;->visible(I)Z

    move-result v3

    if-nez v3, :cond_28

    goto/16 :goto_b0

    .line 255
    :cond_28
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-static {v2}, Lmdm/RcStore;->weaponName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3d

    goto :goto_b0

    .line 256
    :cond_3d
    invoke-static {v2}, Lmdm/RcStore;->weaponGroup(I)Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/high16 v5, 0x40c00000    # 6.0f

    const/high16 v6, 0x41200000    # 10.0f

    if-nez v4, :cond_70

    .line 258
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/high16 v4, 0x41300000    # 11.0f

    const v7, -0x172c5c

    const/4 v8, 0x1

    invoke-virtual {p0, v1, v4, v7, v8}, Lmdm/ParamsSheet;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 259
    invoke-virtual {p0, v5}, Lmdm/ParamsSheet;->px(F)I

    move-result v4

    invoke-virtual {p0, v6}, Lmdm/ParamsSheet;->px(F)I

    move-result v7

    const/high16 v8, 0x40800000    # 4.0f

    invoke-virtual {p0, v8}, Lmdm/ParamsSheet;->px(F)I

    move-result v8

    invoke-virtual {v1, v4, v7, v0, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 260
    iget-object v4, p0, Lmdm/ParamsSheet;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    move-object v1, v3

    .line 263
    :cond_70
    nop

    .line 264
    invoke-static {v2}, Lmdm/RcStore;->weaponName(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41600000    # 14.0f

    const v7, -0xc1528

    invoke-virtual {p0, v3, v4, v7, v0}, Lmdm/ParamsSheet;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 265
    invoke-virtual {p0, v6}, Lmdm/ParamsSheet;->px(F)I

    move-result v4

    invoke-virtual {p0, v5}, Lmdm/ParamsSheet;->px(F)I

    move-result v5

    invoke-virtual {v3, v4, v0, v5, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 266
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 267
    new-instance v4, Lmdm/ParamsSheet$6;

    invoke-direct {v4, p0, v2}, Lmdm/ParamsSheet$6;-><init>(Lmdm/ParamsSheet;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v4, p0, Lmdm/ParamsSheet;->list:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42180000    # 38.0f

    invoke-virtual {p0, v6}, Lmdm/ParamsSheet;->px(F)I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget-object v4, p0, Lmdm/ParamsSheet;->weaponRows:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :goto_b0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1b

    .line 273
    :cond_b4
    invoke-virtual {p0}, Lmdm/ParamsSheet;->markWeapon()V

    .line 274
    return-void
.end method

.method firstVisible()I
    .registers 4

    .line 313
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    sget-object v2, Lmdm/RcStore;->WEAPONS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_11

    invoke-static {v1}, Lmdm/RcStore;->visible(I)Z

    move-result v2

    if-eqz v2, :cond_e

    return v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 314
    :cond_11
    return v0
.end method

.method header()Landroid/view/View;
    .registers 8

    .line 192
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmdm/ParamsSheet;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 193
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 194
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Th\u00f4ng s\u1ed1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmdm/ParamsSheet;->title:Ljava/lang/String;

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lmdm/ParamsSheet;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_3e

    :cond_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmdm/ParamsSheet;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_40

    :cond_3e
    :goto_3e
    const-string v3, ""

    :goto_40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41800000    # 16.0f

    const v4, -0xc1528

    const/4 v5, 0x1

    invoke-virtual {p0, v2, v3, v4, v5}, Lmdm/ParamsSheet;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 196
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 197
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 198
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    const-string v1, "L\u01b0u"

    invoke-virtual {p0, v1, v5}, Lmdm/ParamsSheet;->pill(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lmdm/ParamsSheet;->saveBtn:Landroid/widget/TextView;

    .line 201
    iget-object v1, p0, Lmdm/ParamsSheet;->saveBtn:Landroid/widget/TextView;

    new-instance v2, Lmdm/ParamsSheet$3;

    invoke-direct {v2, p0}, Lmdm/ParamsSheet$3;-><init>(Lmdm/ParamsSheet;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42900000    # 72.0f

    invoke-virtual {p0, v2}, Lmdm/ParamsSheet;->px(F)I

    move-result v2

    const/high16 v3, 0x42000000    # 32.0f

    invoke-virtual {p0, v3}, Lmdm/ParamsSheet;->px(F)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 205
    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p0, v2}, Lmdm/ParamsSheet;->px(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 206
    iget-object v2, p0, Lmdm/ParamsSheet;->saveBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    const/high16 v1, 0x41700000    # 15.0f

    const v2, -0x172c5c

    const-string v4, "\u2715"

    invoke-virtual {p0, v4, v1, v2, v5}, Lmdm/ParamsSheet;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 209
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 210
    invoke-virtual {p0}, Lmdm/ParamsSheet;->oval()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 211
    new-instance v2, Lmdm/ParamsSheet$4;

    invoke-direct {v2, p0}, Lmdm/ParamsSheet$4;-><init>(Lmdm/ParamsSheet;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v3}, Lmdm/ParamsSheet;->px(F)I

    move-result v4

    invoke-virtual {p0, v3}, Lmdm/ParamsSheet;->px(F)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    return-object v0
.end method

.method label(Ljava/lang/String;FIZ)Landroid/widget/TextView;
    .registers 7

    .line 459
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lmdm/ParamsSheet;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 460
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 462
    const/4 p1, 0x2

    invoke-virtual {p0, p2}, Lmdm/ParamsSheet;->sp(F)F

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 463
    if-eqz p4, :cond_1c

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 464
    :cond_1c
    return-object v0
.end method

.method markWeapon()V
    .registers 7

    .line 325
    iget-object v0, p0, Lmdm/ParamsSheet;->weaponRows:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 326
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lmdm/ParamsSheet;->weapon:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_27

    const/4 v2, 0x1

    goto :goto_28

    :cond_27
    move v2, v4

    .line 327
    :goto_28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v2, :cond_34

    const v5, -0xe5ebf6

    goto :goto_37

    :cond_34
    const v5, -0xc1528

    :goto_37
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v2, :cond_4c

    const v2, -0x172c5c

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p0, v2, v3, v4}, Lmdm/ParamsSheet;->rounded(IFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    goto :goto_4d

    :cond_4c
    const/4 v2, 0x0

    :goto_4d
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 329
    goto :goto_a

    .line 330
    :cond_51
    return-void
.end method

.method public open()V
    .registers 4

    .line 110
    :try_start_0
    iget-object v0, p0, Lmdm/ParamsSheet;->km:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    iget-object v1, p0, Lmdm/ParamsSheet;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lmdm/LocalKeymapStore;->loadRcLive(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 111
    if-nez v0, :cond_10

    .line 112
    const-string v0, "Kh\u00f4ng \u0111\u1ecdc \u0111\u01b0\u1ee3c c\u1ea5u h\u00ecnh"

    invoke-virtual {p0, v0}, Lmdm/ParamsSheet;->toast(Ljava/lang/String;)V

    .line 113
    return-void

    .line 116
    :cond_10
    sget-object v1, Lmdm/LocalKeymapStore;->GSON:Lcom/google/gson/Gson;

    sget-object v2, Lmdm/LocalKeymapStore;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Ljava/util/HashMap;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lmdm/ParamsSheet;->work:Ljava/util/Map;

    .line 117
    iget-object v0, p0, Lmdm/ParamsSheet;->work:Ljava/util/Map;

    invoke-static {v0}, Lmdm/RcStore;->isV2(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lmdm/ParamsSheet;->work:Ljava/util/Map;

    invoke-static {v0}, Lmdm/RcStore;->makeDefault(Ljava/util/Map;)V

    .line 118
    :cond_2f
    invoke-virtual {p0}, Lmdm/ParamsSheet;->show()V
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_33

    .line 121
    goto :goto_4a

    .line 119
    :catchall_33
    move-exception v0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L\u1ed7i m\u1edf b\u1ea3ng th\u00f4ng s\u1ed1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmdm/ParamsSheet;->toast(Ljava/lang/String;)V

    .line 122
    :goto_4a
    return-void
.end method

.method oval()Landroid/graphics/drawable/GradientDrawable;
    .registers 4

    .line 483
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 484
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 485
    const v2, -0xdfe3ea

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 486
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lmdm/ParamsSheet;->px(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const v2, 0x66e8d3a4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 487
    return-object v0
.end method

.method pill(Ljava/lang/String;Z)Landroid/widget/TextView;
    .registers 7

    .line 468
    const v0, -0x172c5c

    if-eqz p2, :cond_9

    const v1, -0xe5ebf6

    goto :goto_a

    :cond_9
    move v1, v0

    :goto_a
    const/4 v2, 0x1

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p0, p1, v3, v1, v2}, Lmdm/ParamsSheet;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 469
    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 470
    const/high16 v1, 0x42c80000    # 100.0f

    if-eqz p2, :cond_20

    const/4 p2, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lmdm/ParamsSheet;->rounded(IFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    goto :goto_2a

    :cond_20
    const p2, 0x14ffffff

    const v0, 0x66e8d3a4

    invoke-virtual {p0, p2, v1, v0}, Lmdm/ParamsSheet;->rounded(IFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    :goto_2a
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 471
    return-object p1
.end method

.method px(F)I
    .registers 3

    .line 97
    iget v0, p0, Lmdm/ParamsSheet;->dp:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method requestClose()V
    .registers 2

    .line 176
    iget-boolean v0, p0, Lmdm/ParamsSheet;->dirty:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lmdm/ParamsSheet;->closeArmed:Z

    if-nez v0, :cond_11

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmdm/ParamsSheet;->closeArmed:Z

    .line 178
    const-string v0, "C\u00f2n thay \u0111\u1ed5i ch\u01b0a l\u01b0u \u2014 b\u1ea5m \u0111\u00f3ng l\u1ea7n n\u1eefa \u0111\u1ec3 b\u1ecf"

    invoke-virtual {p0, v0}, Lmdm/ParamsSheet;->toast(Ljava/lang/String;)V

    .line 179
    return-void

    .line 181
    :cond_11
    invoke-virtual {p0}, Lmdm/ParamsSheet;->close()V

    .line 182
    return-void
.end method

.method rounded(IFI)Landroid/graphics/drawable/GradientDrawable;
    .registers 5

    .line 475
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 476
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 477
    invoke-virtual {p0, p2}, Lmdm/ParamsSheet;->px(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 478
    if-eqz p3, :cond_20

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lmdm/ParamsSheet;->px(F)I

    move-result p1

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 479
    :cond_20
    return-object v0
.end method

.method save()V
    .registers 5

    .line 431
    iget-object v0, p0, Lmdm/ParamsSheet;->km:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    if-nez v0, :cond_a

    .line 432
    const-string v0, "Kh\u00f4ng c\u00f3 k\u1ebft n\u1ed1i c\u1ea5u h\u00ecnh"

    invoke-virtual {p0, v0}, Lmdm/ParamsSheet;->toast(Ljava/lang/String;)V

    .line 433
    return-void

    .line 435
    :cond_a
    iget-object v0, p0, Lmdm/ParamsSheet;->saveBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 437
    :try_start_10
    iget-object v0, p0, Lmdm/ParamsSheet;->km:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    iget-object v1, p0, Lmdm/ParamsSheet;->work:Ljava/util/Map;

    iget-object v2, p0, Lmdm/ParamsSheet;->id:Ljava/lang/String;

    new-instance v3, Lmdm/ParamsSheet$11;

    invoke-direct {v3, p0}, Lmdm/ParamsSheet$11;-><init>(Lmdm/ParamsSheet;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->L(Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$UpdateKeymapCompletionHandler;)V
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_1f

    .line 453
    goto :goto_3c

    .line 450
    :catchall_1f
    move-exception v0

    .line 451
    iget-object v1, p0, Lmdm/ParamsSheet;->saveBtn:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L\u01b0u l\u1ed7i: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmdm/ParamsSheet;->toast(Ljava/lang/String;)V

    .line 454
    :goto_3c
    return-void
.end method

.method selectStance(I)V
    .registers 7

    .line 333
    iput p1, p0, Lmdm/ParamsSheet;->stance:I

    .line 334
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    const/4 v2, 0x3

    if-ge v1, v2, :cond_33

    .line 335
    if-ne v1, p1, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    move v2, v0

    .line 336
    :goto_c
    iget-object v3, p0, Lmdm/ParamsSheet;->stanceTabs:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    if-eqz v2, :cond_16

    const v4, -0xe5ebf6

    goto :goto_19

    :cond_16
    const v4, -0xc1528

    :goto_19
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 337
    iget-object v3, p0, Lmdm/ParamsSheet;->stanceTabs:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    if-eqz v2, :cond_2c

    const v2, -0x172c5c

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {p0, v2, v4, v0}, Lmdm/ParamsSheet;->rounded(IFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 339
    :cond_33
    invoke-virtual {p0}, Lmdm/ParamsSheet;->fillCells()V

    .line 340
    return-void
.end method

.method selectWeapon(I)V
    .registers 5

    .line 318
    iput p1, p0, Lmdm/ParamsSheet;->weapon:I

    .line 319
    invoke-virtual {p0}, Lmdm/ParamsSheet;->markWeapon()V

    .line 320
    iget-object v0, p0, Lmdm/ParamsSheet;->weaponTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lmdm/RcStore;->weaponName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lmdm/RcStore;->weaponGroup(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget p1, p0, Lmdm/ParamsSheet;->stance:I

    invoke-virtual {p0, p1}, Lmdm/ParamsSheet;->selectStance(I)V

    .line 322
    return-void
.end method

.method show()V
    .registers 10

    .line 125
    iget-object v0, p0, Lmdm/ParamsSheet;->ctx:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lmdm/ParamsSheet;->wm:Landroid/view/WindowManager;

    .line 126
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmdm/ParamsSheet;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmdm/ParamsSheet;->root:Landroid/widget/FrameLayout;

    .line 127
    iget-object v0, p0, Lmdm/ParamsSheet;->root:Landroid/widget/FrameLayout;

    const/high16 v1, -0x67000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 128
    iget-object v0, p0, Lmdm/ParamsSheet;->root:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 129
    iget-object v0, p0, Lmdm/ParamsSheet;->root:Landroid/widget/FrameLayout;

    new-instance v2, Lmdm/ParamsSheet$1;

    invoke-direct {v2, p0}, Lmdm/ParamsSheet$1;-><init>(Lmdm/ParamsSheet;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lmdm/ParamsSheet;->root:Landroid/widget/FrameLayout;

    new-instance v2, Lmdm/ParamsSheet$2;

    invoke-direct {v2, p0}, Lmdm/ParamsSheet$2;-><init>(Lmdm/ParamsSheet;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 142
    iget-object v0, p0, Lmdm/ParamsSheet;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 143
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const v3, 0x3f70a3d7    # 0.94f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v3, 0x44430000    # 780.0f

    invoke-virtual {p0, v3}, Lmdm/ParamsSheet;->px(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 144
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 145
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lmdm/ParamsSheet;->ctx:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 146
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 147
    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {p0, v4}, Lmdm/ParamsSheet;->px(F)I

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {p0, v6}, Lmdm/ParamsSheet;->px(F)I

    move-result v6

    invoke-virtual {p0, v4}, Lmdm/ParamsSheet;->px(F)I

    move-result v4

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {p0, v7}, Lmdm/ParamsSheet;->px(F)I

    move-result v8

    invoke-virtual {v3, v5, v6, v4, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 148
    const/high16 v4, 0x41800000    # 16.0f

    const v5, 0x66e8d3a4

    const v6, -0xdebedf1

    invoke-virtual {p0, v6, v4, v5}, Lmdm/ParamsSheet;->rounded(IFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 149
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 150
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v1, v2, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 151
    iget-object v0, p0, Lmdm/ParamsSheet;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    invoke-virtual {p0}, Lmdm/ParamsSheet;->header()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {p0, v2}, Lmdm/ParamsSheet;->px(F)I

    move-result v2

    const/4 v4, -0x1

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmdm/ParamsSheet;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 155
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 156
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 157
    const/high16 v6, 0x41000000    # 8.0f

    invoke-virtual {p0, v6}, Lmdm/ParamsSheet;->px(F)I

    move-result v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 158
    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    invoke-virtual {p0}, Lmdm/ParamsSheet;->weaponColumn()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x432a0000    # 170.0f

    invoke-virtual {p0, v6}, Lmdm/ParamsSheet;->px(F)I

    move-result v6

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 161
    invoke-virtual {p0, v7}, Lmdm/ParamsSheet;->px(F)I

    move-result v1

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 162
    invoke-virtual {p0}, Lmdm/ParamsSheet;->cellColumn()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0x100

    const/4 v8, -0x3

    const/4 v5, -0x1

    const/16 v6, 0x7f6

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 169
    const/16 v0, 0x10

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 170
    iget-object v0, p0, Lmdm/ParamsSheet;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lmdm/ParamsSheet;->root:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v0, p0, Lmdm/ParamsSheet;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 172
    iget v0, p0, Lmdm/ParamsSheet;->weapon:I

    invoke-static {v0}, Lmdm/RcStore;->visible(I)Z

    move-result v0

    if-eqz v0, :cond_11b

    iget v0, p0, Lmdm/ParamsSheet;->weapon:I

    goto :goto_11f

    :cond_11b
    invoke-virtual {p0}, Lmdm/ParamsSheet;->firstVisible()I

    move-result v0

    :goto_11f
    invoke-virtual {p0, v0}, Lmdm/ParamsSheet;->selectWeapon(I)V

    .line 173
    return-void
.end method

.method sp(F)F
    .registers 2

    .line 99
    invoke-static {p1}, Lmdm/TabletScale;->sp(F)F

    move-result p1

    return p1
.end method

.method step(Ljava/lang/String;Landroid/widget/EditText;II)Landroid/view/View;
    .registers 8

    .line 394
    const v0, -0x172c5c

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {p0, p1, v2, v0, v1}, Lmdm/ParamsSheet;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 395
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 396
    const/high16 v0, 0x41200000    # 10.0f

    const v1, 0x66e8d3a4

    const v2, 0x14ffffff

    invoke-virtual {p0, v2, v0, v1}, Lmdm/ParamsSheet;->rounded(IFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 397
    new-instance v0, Lmdm/ParamsSheet$10;

    invoke-direct {v0, p0, p3, p4, p2}, Lmdm/ParamsSheet$10;-><init>(Lmdm/ParamsSheet;IILandroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    return-object p1
.end method

.method toast(Ljava/lang/String;)V
    .registers 4

    .line 102
    :try_start_0
    iget-object v0, p0, Lmdm/ParamsSheet;->ctx:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    goto :goto_c

    :catchall_b
    move-exception p1

    .line 103
    :goto_c
    return-void
.end method

.method weaponColumn()Landroid/view/View;
    .registers 8

    .line 219
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmdm/ParamsSheet;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 220
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 221
    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p0, Lmdm/ParamsSheet;->ctx:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 222
    const-string v3, "T\u00ecm s\u00fang\u2026"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 223
    const v3, -0x57637a

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 224
    const v3, -0xc1528

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 225
    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {p0, v3}, Lmdm/ParamsSheet;->sp(F)F

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 226
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 227
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 228
    const v3, 0x66e8d3a4

    const v4, -0xe3e6eb

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {p0, v4, v5, v3}, Lmdm/ParamsSheet;->rounded(IFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 229
    invoke-virtual {p0, v5}, Lmdm/ParamsSheet;->px(F)I

    move-result v3

    invoke-virtual {p0, v5}, Lmdm/ParamsSheet;->px(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 230
    new-instance v3, Lmdm/ParamsSheet$5;

    invoke-direct {v3, p0}, Lmdm/ParamsSheet$5;-><init>(Lmdm/ParamsSheet;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 235
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42100000    # 36.0f

    invoke-virtual {p0, v4}, Lmdm/ParamsSheet;->px(F)I

    move-result v4

    const/4 v6, -0x1

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    new-instance v2, Landroid/widget/ScrollView;

    iget-object v3, p0, Lmdm/ParamsSheet;->ctx:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 238
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lmdm/ParamsSheet;->ctx:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lmdm/ParamsSheet;->list:Landroid/widget/LinearLayout;

    .line 239
    iget-object v3, p0, Lmdm/ParamsSheet;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 240
    iget-object v1, p0, Lmdm/ParamsSheet;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 241
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v6, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 242
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {p0, v3}, Lmdm/ParamsSheet;->px(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 243
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    const-string v1, ""

    invoke-virtual {p0, v1}, Lmdm/ParamsSheet;->fillWeapons(Ljava/lang/String;)V

    .line 245
    return-object v0
.end method

.method write(ID)V
    .registers 10

    .line 408
    iget-object v0, p0, Lmdm/ParamsSheet;->work:Ljava/util/Map;

    iget v1, p0, Lmdm/ParamsSheet;->weapon:I

    iget v2, p0, Lmdm/ParamsSheet;->stance:I

    move v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lmdm/RcStore;->set(Ljava/util/Map;IIID)Z

    .line 409
    const/4 p1, 0x1

    iput-boolean p1, p0, Lmdm/ParamsSheet;->dirty:Z

    .line 410
    const/4 p1, 0x0

    iput-boolean p1, p0, Lmdm/ParamsSheet;->closeArmed:Z

    .line 411
    return-void
.end method
