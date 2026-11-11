.class public Lmdm/DonateRow;
.super Landroid/widget/LinearLayout;
.source "DonateRow.java"


# static fields
.field static final BANK:Ljava/lang/String; = "MB Bank \u00b7 0859855556"

.field static final CHANNEL:Ljava/lang/String; = "https://t.me/MDM_Cam"

.field static final HOLDER:Ljava/lang/String; = "DAO THE VINH"


# instance fields
.field private final dp:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lmdm/DonateRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lmdm/DonateRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-virtual {p0}, Lmdm/DonateRow;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lmdm/DonateRow;->dp:F

    const/4 p1, 0x1

    .line 36
    invoke-virtual {p0, p1}, Lmdm/DonateRow;->setClickable(Z)V

    .line 37
    new-instance p1, Lmdm/DonateRow$1;

    invoke-direct {p1, p0}, Lmdm/DonateRow$1;-><init>(Lmdm/DonateRow;)V

    invoke-virtual {p0, p1}, Lmdm/DonateRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private button(Ljava/lang/String;Z)Landroid/widget/TextView;
    .registers 6

    if-eqz p2, :cond_6

    const v0, -0xe5ebf6

    goto :goto_9

    :cond_6
    const v0, -0x172c5c

    :goto_9
    const/high16 v1, 0x41700000    # 15.0f

    const/4 v2, 0x1

    .line 60
    invoke-direct {p0, p1, v1, v0, v2}, Lmdm/DonateRow;->text(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p2, :cond_15

    .line 61
    const-string p2, "mdm_btn_gold"

    goto :goto_17

    :cond_15
    const-string p2, "mdm_btn_ghost"

    :goto_17
    const-string v0, "drawable"

    invoke-direct {p0, p2, v0}, Lmdm/DonateRow;->res(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_22

    .line 62
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 63
    :cond_22
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    return-object p1
.end method

.method private px(F)I
    .registers 3

    .line 43
    iget v0, p0, Lmdm/DonateRow;->dp:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private res(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 46
    invoke-virtual {p0}, Lmdm/DonateRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lmdm/DonateRow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private text(Ljava/lang/String;FIZ)Landroid/widget/TextView;
    .registers 7

    .line 50
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lmdm/DonateRow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x2

    .line 52
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 53
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x11

    .line 54
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz p4, :cond_22

    .line 55
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_22
    return-object v0
.end method


# virtual methods
.method show()V
    .registers 17

    move-object/from16 v0, p0

    .line 68
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {v0}, Lmdm/DonateRow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 69
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 71
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lmdm/DonateRow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 73
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v4, 0x41e00000    # 28.0f

    .line 74
    invoke-direct {v0, v4}, Lmdm/DonateRow;->px(F)I

    move-result v5

    const/high16 v6, 0x41d00000    # 26.0f

    invoke-direct {v0, v6}, Lmdm/DonateRow;->px(F)I

    move-result v6

    invoke-direct {v0, v4}, Lmdm/DonateRow;->px(F)I

    move-result v4

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-direct {v0, v7}, Lmdm/DonateRow;->px(F)I

    move-result v7

    invoke-virtual {v3, v5, v6, v4, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 75
    const-string v4, "mdm_card"

    const-string v5, "drawable"

    invoke-direct {v0, v4, v5}, Lmdm/DonateRow;->res(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_44

    .line 76
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 78
    :cond_44
    const-string v4, "\u1ee6ng h\u1ed9 MDM"

    const/high16 v6, 0x41a00000    # 20.0f

    const v7, -0xc1528

    invoke-direct {v0, v4, v6, v7, v2}, Lmdm/DonateRow;->text(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    const-string v4, "Qu\u00e9t m\u00e3 QR b\u1eb1ng app ng\u00e2n h\u00e0ng ho\u1eb7c MoMo. C\u1ea3m \u01a1n b\u1ea1n \u0111\u00e3 g\u00f3p ph\u1ea7n chi ph\u00ed ph\u00e1t tri\u1ec3n!"

    const/high16 v8, 0x41500000    # 13.0f

    const v9, -0x57637a

    const/4 v10, 0x0

    invoke-direct {v0, v4, v8, v9, v10}, Lmdm/DonateRow;->text(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 80
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v8, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v13, 0x40c00000    # 6.0f

    .line 81
    invoke-direct {v0, v13}, Lmdm/DonateRow;->px(F)I

    move-result v13

    iput v13, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 82
    invoke-virtual {v3, v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lmdm/DonateRow;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 86
    invoke-virtual {v8, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v13, 0x41800000    # 16.0f

    .line 87
    invoke-direct {v0, v13}, Lmdm/DonateRow;->px(F)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v8, v14}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 88
    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 89
    invoke-direct {v0, v13}, Lmdm/DonateRow;->px(F)I

    move-result v8

    invoke-direct {v0, v13}, Lmdm/DonateRow;->px(F)I

    move-result v14

    invoke-direct {v0, v13}, Lmdm/DonateRow;->px(F)I

    move-result v15

    invoke-direct {v0, v13}, Lmdm/DonateRow;->px(F)I

    move-result v6

    invoke-virtual {v4, v8, v14, v15, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 90
    new-instance v6, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lmdm/DonateRow;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 91
    const-string v8, "mdm_donate_qr"

    invoke-direct {v0, v8, v5}, Lmdm/DonateRow;->res(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_cb

    .line 93
    invoke-virtual {v0}, Lmdm/DonateRow;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v14, 0x0

    invoke-virtual {v8, v5, v14}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 94
    instance-of v8, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_c8

    .line 95
    move-object v8, v5

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8, v10}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 96
    invoke-virtual {v8, v10}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 98
    :cond_c8
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    :cond_cb
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 101
    const-string v5, "M\u00e3 QR \u1ee7ng h\u1ed9"

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 102
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v8, 0x43640000    # 228.0f

    invoke-direct {v0, v8}, Lmdm/DonateRow;->px(F)I

    move-result v14

    invoke-direct {v0, v8}, Lmdm/DonateRow;->px(F)I

    move-result v8

    invoke-direct {v5, v14, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x41900000    # 18.0f

    .line 104
    invoke-direct {v0, v6}, Lmdm/DonateRow;->px(F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 105
    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x41400000    # 12.0f

    .line 108
    invoke-direct {v0, v5}, Lmdm/DonateRow;->px(F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 109
    const-string v5, "DAO THE VINH"

    invoke-direct {v0, v5, v13, v7, v2}, Lmdm/DonateRow;->text(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    const-string v4, "MB Bank \u00b7 0859855556"

    const/high16 v5, 0x41600000    # 14.0f

    invoke-direct {v0, v4, v5, v9, v10}, Lmdm/DonateRow;->text(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lmdm/DonateRow;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 113
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 114
    const-string v6, "\u0110\u00f3ng"

    invoke-direct {v0, v6, v10}, Lmdm/DonateRow;->button(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v6

    .line 115
    const-string v7, "M\u1edf k\u00eanh"

    invoke-direct {v0, v7, v2}, Lmdm/DonateRow;->button(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v7

    .line 116
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x42480000    # 50.0f

    invoke-direct {v0, v9}, Lmdm/DonateRow;->px(F)I

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v8, v10, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 117
    invoke-virtual {v4, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5}, Lmdm/DonateRow;->px(F)I

    move-result v5

    invoke-direct {v8, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 119
    new-instance v2, Landroid/view/View;

    invoke-virtual {v0}, Lmdm/DonateRow;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9}, Lmdm/DonateRow;->px(F)I

    move-result v5

    invoke-direct {v2, v10, v5, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x41a00000    # 20.0f

    .line 122
    invoke-direct {v0, v5}, Lmdm/DonateRow;->px(F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 123
    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    new-instance v2, Lmdm/DonateRow$2;

    invoke-direct {v2, v0, v1}, Lmdm/DonateRow$2;-><init>(Lmdm/DonateRow;Landroid/app/Dialog;)V

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    new-instance v2, Lmdm/DonateRow$3;

    invoke-direct {v2, v0, v1}, Lmdm/DonateRow$3;-><init>(Lmdm/DonateRow;Landroid/app/Dialog;)V

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v4, 0x43be0000    # 380.0f

    invoke-direct {v0, v4}, Lmdm/DonateRow;->px(F)I

    move-result v5

    invoke-direct {v2, v5, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_1aa

    .line 145
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    invoke-direct {v0, v4}, Lmdm/DonateRow;->px(F)I

    move-result v3

    invoke-virtual {v2, v3, v12}, Landroid/view/Window;->setLayout(II)V

    const v3, 0x3f19999a    # 0.6f

    .line 147
    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 149
    :cond_1aa
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method
