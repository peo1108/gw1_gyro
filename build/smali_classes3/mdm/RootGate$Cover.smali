.class final Lmdm/RootGate$Cover;
.super Ljava/lang/Object;
.source "RootGate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmdm/RootGate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cover"
.end annotation


# instance fields
.field final activity:Landroid/app/Activity;

.field final buttons:Landroid/widget/LinearLayout;

.field final dp:F

.field final msg:Landroid/widget/TextView;

.field final root:Landroid/widget/FrameLayout;

.field final title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 12

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lmdm/RootGate$Cover;->activity:Landroid/app/Activity;

    .line 141
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lmdm/RootGate$Cover;->dp:F

    .line 142
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmdm/RootGate$Cover;->root:Landroid/widget/FrameLayout;

    .line 143
    iget-object v0, p0, Lmdm/RootGate$Cover;->root:Landroid/widget/FrameLayout;

    const v1, -0xf4f4f5

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 144
    iget-object v0, p0, Lmdm/RootGate$Cover;->root:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 145
    iget-object v0, p0, Lmdm/RootGate$Cover;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 147
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 149
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 150
    const/high16 v2, 0x41c00000    # 24.0f

    invoke-direct {p0, v2}, Lmdm/RootGate$Cover;->px(F)I

    move-result v3

    invoke-direct {p0, v2}, Lmdm/RootGate$Cover;->px(F)I

    move-result v4

    invoke-direct {p0, v2}, Lmdm/RootGate$Cover;->px(F)I

    move-result v5

    invoke-direct {p0, v2}, Lmdm/RootGate$Cover;->px(F)I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 152
    const-string v3, "mdm_logo"

    invoke-direct {p0, v3}, Lmdm/RootGate$Cover;->drawable(Ljava/lang/String;)I

    move-result v3

    .line 153
    if-eqz v3, :cond_72

    .line 154
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 157
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42c00000    # 96.0f

    invoke-direct {p0, v5}, Lmdm/RootGate$Cover;->px(F)I

    move-result v6

    invoke-direct {p0, v5}, Lmdm/RootGate$Cover;->px(F)I

    move-result v5

    invoke-direct {v3, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    :cond_72
    const/high16 v3, 0x41b00000    # 22.0f

    const v4, -0xc1528

    invoke-direct {p0, v3, v4, v1}, Lmdm/RootGate$Cover;->label(FIZ)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lmdm/RootGate$Cover;->title:Landroid/widget/TextView;

    .line 161
    invoke-direct {p0}, Lmdm/RootGate$Cover;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 162
    const/high16 v4, 0x41800000    # 16.0f

    invoke-direct {p0, v4}, Lmdm/RootGate$Cover;->px(F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 163
    iget-object v4, p0, Lmdm/RootGate$Cover;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    const/high16 v3, 0x41600000    # 14.0f

    const v4, -0x57637a

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lmdm/RootGate$Cover;->label(FIZ)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lmdm/RootGate$Cover;->msg:Landroid/widget/TextView;

    .line 166
    iget-object v3, p0, Lmdm/RootGate$Cover;->msg:Landroid/widget/TextView;

    const/high16 v4, 0x43e60000    # 460.0f

    invoke-direct {p0, v4}, Lmdm/RootGate$Cover;->px(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 167
    iget-object v3, p0, Lmdm/RootGate$Cover;->msg:Landroid/widget/TextView;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-direct {p0, v4}, Lmdm/RootGate$Cover;->px(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 168
    invoke-direct {p0}, Lmdm/RootGate$Cover;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 169
    const/high16 v4, 0x41000000    # 8.0f

    invoke-direct {p0, v4}, Lmdm/RootGate$Cover;->px(F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 170
    iget-object v4, p0, Lmdm/RootGate$Cover;->msg:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lmdm/RootGate$Cover;->buttons:Landroid/widget/LinearLayout;

    .line 173
    iget-object v3, p0, Lmdm/RootGate$Cover;->buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 174
    iget-object v3, p0, Lmdm/RootGate$Cover;->buttons:Landroid/widget/LinearLayout;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 175
    const-string v3, "Tho\u00e1t"

    invoke-direct {p0, v3, v5}, Lmdm/RootGate$Cover;->pill(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v3

    .line 176
    new-instance v5, Lmdm/RootGate$Cover$1;

    invoke-direct {v5, p0, p1}, Lmdm/RootGate$Cover$1;-><init>(Lmdm/RootGate$Cover;Landroid/app/Activity;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v5, p0, Lmdm/RootGate$Cover;->buttons:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42300000    # 44.0f

    invoke-direct {p0, v7}, Lmdm/RootGate$Cover;->px(F)I

    move-result v8

    const/4 v9, -0x2

    invoke-direct {v6, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 182
    iget-object p1, p0, Lmdm/RootGate$Cover;->buttons:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-direct {p0, v6}, Lmdm/RootGate$Cover;->px(F)I

    move-result v6

    invoke-direct {v5, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    const-string p1, "Th\u1eed l\u1ea1i"

    invoke-direct {p0, p1, v1}, Lmdm/RootGate$Cover;->pill(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object p1

    .line 184
    new-instance v1, Lmdm/RootGate$Cover$2;

    invoke-direct {v1, p0}, Lmdm/RootGate$Cover$2;-><init>(Lmdm/RootGate$Cover;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v1, p0, Lmdm/RootGate$Cover;->buttons:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v7}, Lmdm/RootGate$Cover;->px(F)I

    move-result v5

    invoke-direct {v3, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    invoke-direct {p0}, Lmdm/RootGate$Cover;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    .line 192
    invoke-direct {p0, v2}, Lmdm/RootGate$Cover;->px(F)I

    move-result v1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 193
    iget-object v1, p0, Lmdm/RootGate$Cover;->buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iget-object p1, p0, Lmdm/RootGate$Cover;->root:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v9, v9, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    invoke-virtual {p0}, Lmdm/RootGate$Cover;->showChecking()V

    .line 198
    return-void
.end method

.method private drawable(Ljava/lang/String;)I
    .registers 5

    .line 222
    iget-object v0, p0, Lmdm/RootGate$Cover;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lmdm/RootGate$Cover;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private label(FIZ)Landroid/widget/TextView;
    .registers 6

    .line 226
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lmdm/RootGate$Cover;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 227
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 228
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 230
    if-eqz p3, :cond_1d

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 231
    :cond_1d
    return-object v0
.end method

.method private pill(Ljava/lang/String;Z)Landroid/widget/TextView;
    .registers 7

    .line 235
    if-eqz p2, :cond_6

    const v0, -0xe5ebf6

    goto :goto_9

    :cond_6
    const v0, -0x172c5c

    :goto_9
    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lmdm/RootGate$Cover;->label(FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 236
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    const/high16 p1, 0x41b00000    # 22.0f

    invoke-direct {p0, p1}, Lmdm/RootGate$Cover;->px(F)I

    move-result v1

    invoke-direct {p0, p1}, Lmdm/RootGate$Cover;->px(F)I

    move-result p1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 238
    const/high16 p1, 0x42dc0000    # 110.0f

    invoke-direct {p0, p1}, Lmdm/RootGate$Cover;->px(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 239
    if-eqz p2, :cond_2f

    const-string p1, "mdm_btn_gold"

    goto :goto_31

    :cond_2f
    const-string p1, "mdm_btn_ghost"

    :goto_31
    invoke-direct {p0, p1}, Lmdm/RootGate$Cover;->drawable(Ljava/lang/String;)I

    move-result p1

    .line 240
    if-eqz p1, :cond_3a

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 241
    :cond_3a
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 242
    return-object v0
.end method

.method private px(F)I
    .registers 3

    .line 214
    iget v0, p0, Lmdm/RootGate$Cover;->dp:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private wrap()Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    .line 217
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method showChecking()V
    .registers 3

    .line 201
    iget-object v0, p0, Lmdm/RootGate$Cover;->title:Landroid/widget/TextView;

    const-string v1, "MDM"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lmdm/RootGate$Cover;->msg:Landroid/widget/TextView;

    const-string v1, "\u0110ang ki\u1ec3m tra quy\u1ec1n root\u2026"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lmdm/RootGate$Cover;->buttons:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    return-void
.end method

.method showDenied()V
    .registers 3

    .line 207
    iget-object v0, p0, Lmdm/RootGate$Cover;->title:Landroid/widget/TextView;

    const-string v1, "C\u1ea7n quy\u1ec1n Root"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lmdm/RootGate$Cover;->msg:Landroid/widget/TextView;

    const-string v1, "MDM ch\u1ec9 ch\u1ea1y tr\u00ean m\u00e1y \u0111\u00e3 root.\nM\u1edf tr\u00ecnh qu\u1ea3n l\u00fd root (Magisk / KernelSU / APatch), cho ph\u00e9p MDM, r\u1ed3i quay l\u1ea1i app ho\u1eb7c b\u1ea5m Th\u1eed l\u1ea1i."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lmdm/RootGate$Cover;->buttons:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 212
    return-void
.end method
