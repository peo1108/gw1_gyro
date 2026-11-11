.class public final Lcom/zjx/gw2lic/LicenseGateActivity;
.super Landroid/app/Activity;
.source "LicenseGateActivity.java"


# static fields
.field private static final BLUE:I = -0xa59a06

.field private static final TEXT_DARK:I = -0x22000000

.field private static final TEXT_DIM:I = -0x67000000


# instance fields
.field private activateBtn:Landroid/widget/Button;

.field private info:Landroid/widget/TextView;

.field private keyInput:Landroid/widget/EditText;

.field private recentBox:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zjx/gw2lic/LicenseGateActivity;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/zjx/gw2lic/LicenseGateActivity;->doActivate()V

    return-void
.end method

.method static synthetic access$100(Lcom/zjx/gw2lic/LicenseGateActivity;)Landroid/widget/Button;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/zjx/gw2lic/LicenseGateActivity;->activateBtn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zjx/gw2lic/LicenseGateActivity;)Landroid/widget/EditText;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/zjx/gw2lic/LicenseGateActivity;->keyInput:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zjx/gw2lic/LicenseGateActivity;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/zjx/gw2lic/LicenseGateActivity;->renderStatus(Ljava/lang/String;)V

    return-void
.end method

.method private doActivate()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/zjx/gw2lic/LicenseGateActivity;->keyInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/zjx/gw2lic/LicenseGateActivity;->info:Landroid/widget/TextView;

    const-string v1, "\u0012$M\u0081`\u0013\u1e45%\u00e2D\u00f9pV\u0088\u00bd\u00deB\u00b7l\u001e\u1e7f?\u0096"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 127
    :cond_0
    invoke-static {p0, v0}, Lcom/zjx/gw2lic/Gw2License;->rememberKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/zjx/gw2lic/LicenseGateActivity;->refreshRecent()V

    .line 129
    iget-object v1, p0, Lcom/zjx/gw2lic/LicenseGateActivity;->activateBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 130
    iget-object v1, p0, Lcom/zjx/gw2lic/LicenseGateActivity;->info:Landroid/widget/TextView;

    const-string v2, "\u014a\u00a6Z\u00c6.\u0010\u00056\u00aa\u000f\u00f4f\u1ed7\u0097~\u0093\u0004"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    new-instance v1, Lcom/zjx/gw2lic/LicenseGateActivity$3;

    invoke-direct {v1, p0}, Lcom/zjx/gw2lic/LicenseGateActivity$3;-><init>(Lcom/zjx/gw2lic/LicenseGateActivity;)V

    invoke-static {p0, v0, v1}, Lcom/zjx/gw2lic/Gw2License;->activate(Landroid/content/Context;Ljava/lang/String;Lcom/zjx/gw2lic/Gw2License$Cb;)V

    return-void
.end method

.method private dp(I)I
    .locals 1

    int-to-float p1, p1

    .line 199
    invoke-virtual {p0}, Lcom/zjx/gw2lic/LicenseGateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private flatButton(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/widget/Button;
    .locals 3

    .line 108
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 110
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 111
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    const p2, -0xa59a06

    .line 112
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 p2, 0x41600000    # 14.0f

    .line 113
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setTextSize(F)V

    const/4 p2, 0x0

    .line 114
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 115
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinWidth(I)V

    .line 116
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinimumWidth(I)V

    const/16 p1, 0x10

    .line 117
    invoke-direct {p0, p1}, Lcom/zjx/gw2lic/LicenseGateActivity;->dp(I)I

    move-result p2

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/zjx/gw2lic/LicenseGateActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/zjx/gw2lic/LicenseGateActivity;->dp(I)I

    move-result p1

    invoke-direct {p0, v1}, Lcom/zjx/gw2lic/LicenseGateActivity;->dp(I)I

    move-result v1

    invoke-virtual {v0, p2, v2, p1, v1}, Landroid/widget/Button;->setPadding(IIII)V

    return-object v0
.end method

.method private refreshRecent()V
    .locals 9

    .line 162
    iget-object v0, p0, Lcom/zjx/gw2lic/LicenseGateActivity;->recentBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 163
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->recentKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 164
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/zjx/gw2lic/LicenseGateActivity;->recentBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/zjx/gw2lic/LicenseGateActivity;->recentBox:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    const-string v1, ")\u00a6Z\u00d2#\u0008\u008d\'\u00abI\u00b1d\u0013\u00879\u00c8G"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 171
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 172
    const-string v5, "\u0011\u00a2M\u0081\u011f\u0098\u00c8;\u00aa\u1e82\u00ec)\u0011\u1e44>\u009d\u013bu}"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41400000    # 12.0f

    .line 173
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v5, -0x67000000

    .line 174
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v5, 0x2

    .line 175
    invoke-direct {p0, v5}, Lcom/zjx/gw2lic/LicenseGateActivity;->dp(I)I

    move-result v6

    invoke-direct {p0, v5}, Lcom/zjx/gw2lic/LicenseGateActivity;->dp(I)I

    move-result v5

    invoke-virtual {v4, v3, v6, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 176
    iget-object v5, p0, Lcom/zjx/gw2lic/LicenseGateActivity;->recentBox:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 179
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 180
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41600000    # 14.0f

    .line 181
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const v6, -0xa59a06

    .line 182
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v6, 0x1

    .line 184
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 185
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 186
    invoke-direct {p0, v2}, Lcom/zjx/gw2lic/LicenseGateActivity;->dp(I)I

    move-result v7

    invoke-direct {p0, v2}, Lcom/zjx/gw2lic/LicenseGateActivity;->dp(I)I

    move-result v8

    invoke-virtual {v5, v3, v7, v3, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 187
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 188
    new-instance v6, Lcom/zjx/gw2lic/LicenseGateActivity$4;

    invoke-direct {v6, p0, v4}, Lcom/zjx/gw2lic/LicenseGateActivity$4;-><init>(Lcom/zjx/gw2lic/LicenseGateActivity;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v4, p0, Lcom/zjx/gw2lic/LicenseGateActivity;->recentBox:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private renderStatus(Ljava/lang/String;)V
    .locals 4

    .line 148
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->publicStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->active(Landroid/content/Context;)Z

    move-result v1

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "P\u00cd"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_0
    const-string p1, "\u000e+Z\u00c9.\u000f\u009a\u1ef4\u00acH\u00a6)"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string v0, "9\u00af\u0184\u00c0.\u0010\u00056\u00aa\u000f\u00f4f\u1ed7\u0097"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "P"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->expiresAt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "\u0012\u1e78@\u0081f\u1eda\u0086o\u00e2"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_2
    const-string p1, "\u000e\u00af]\u1e1ez[\u008a\u1e9e\u00f8\u000f"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->deviceCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object p1, p0, Lcom/zjx/gw2lic/LicenseGateActivity;->info:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    const v0, -0xe485d1

    goto :goto_0

    :cond_3
    const/high16 v0, -0x67000000

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget-object p1, p0, Lcom/zjx/gw2lic/LicenseGateActivity;->info:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 37
    invoke-virtual {p0, p1}, Lcom/zjx/gw2lic/LicenseGateActivity;->requestWindowFeature(I)Z

    .line 39
    const-string v0, ")\u00a6Z\u00d2#\u0008\u008d\'\u00abI\u00b1d\u0013\u00879\u00c8G"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    const/16 v2, 0x18

    .line 40
    invoke-direct {p0, v2}, Lcom/zjx/gw2lic/LicenseGateActivity;->dp(I)I

    move-result v2

    .line 42
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x14

    .line 44
    invoke-direct {p0, v4}, Lcom/zjx/gw2lic/LicenseGateActivity;->dp(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-direct {p0, v5}, Lcom/zjx/gw2lic/LicenseGateActivity;->dp(I)I

    move-result v5

    invoke-virtual {v3, v2, v4, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 46
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 47
    const-string v4, "\u0016\u00aeW\u00c4`\u0008\u008d"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41900000    # 18.0f

    .line 48
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 49
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v4, -0x22000000

    .line 50
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v5, 0xe

    .line 51
    invoke-direct {p0, v5}, Lcom/zjx/gw2lic/LicenseGateActivity;->dp(I)I

    move-result v6

    invoke-virtual {v2, v1, v1, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 52
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 54
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zjx/gw2lic/LicenseGateActivity;->info:Landroid/widget/TextView;

    const/high16 v6, 0x41600000    # 14.0f

    .line 55
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 56
    iget-object v2, p0, Lcom/zjx/gw2lic/LicenseGateActivity;->info:Landroid/widget/TextView;

    const/high16 v6, -0x67000000

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    iget-object v2, p0, Lcom/zjx/gw2lic/LicenseGateActivity;->info:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lcom/zjx/gw2lic/LicenseGateActivity;->dp(I)I

    move-result v5

    invoke-virtual {v2, v1, v1, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 58
    iget-object v2, p0, Lcom/zjx/gw2lic/LicenseGateActivity;->info:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zjx/gw2lic/LicenseGateActivity;->keyInput:Landroid/widget/EditText;

    .line 61
    const-string v5, "\u000c\u00b2]\u0081b\u0089\u00862\u00e2A\u00f4\u1ea4\u0006\u00c3;\u00d8S\u00b7o\u009c\u00bd#\u0098M\u00fd\u1e5e\u0018"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v2, p0, Lcom/zjx/gw2lic/LicenseGateActivity;->keyInput:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 63
    iget-object v2, p0, Lcom/zjx/gw2lic/LicenseGateActivity;->keyInput:Landroid/widget/EditText;

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setTextSize(F)V

    .line 64
    iget-object v2, p0, Lcom/zjx/gw2lic/LicenseGateActivity;->keyInput:Landroid/widget/EditText;

    const v4, 0x81001

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 67
    iget-object v2, p0, Lcom/zjx/gw2lic/LicenseGateActivity;->keyInput:Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 68
    iget-object v2, p0, Lcom/zjx/gw2lic/LicenseGateActivity;->keyInput:Landroid/widget/EditText;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zjx/gw2lic/LicenseGateActivity;->recentBox:Landroid/widget/LinearLayout;

    .line 72
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 73
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x8

    .line 75
    invoke-direct {p0, v2}, Lcom/zjx/gw2lic/LicenseGateActivity;->dp(I)I

    move-result v2

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 76
    iget-object v2, p0, Lcom/zjx/gw2lic/LicenseGateActivity;->recentBox:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v1, 0x800005

    .line 80
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 81
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x10

    .line 83
    invoke-direct {p0, v2}, Lcom/zjx/gw2lic/LicenseGateActivity;->dp(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 84
    invoke-virtual {v3, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    const-string v1, "\u014a\u0014z\u00e6"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/zjx/gw2lic/LicenseGateActivity;->flatButton(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/widget/Button;

    move-result-object v1

    .line 87
    new-instance v2, Lcom/zjx/gw2lic/LicenseGateActivity$1;

    invoke-direct {v2, p0}, Lcom/zjx/gw2lic/LicenseGateActivity$1;-><init>(Lcom/zjx/gw2lic/LicenseGateActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    const-string v1, "\u0011\nw\u00e9.3\u00a7\u1ef5\u0096"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/zjx/gw2lic/LicenseGateActivity;->flatButton(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/gw2lic/LicenseGateActivity;->activateBtn:Landroid/widget/Button;

    .line 95
    new-instance v1, Lcom/zjx/gw2lic/LicenseGateActivity$2;

    invoke-direct {v1, p0}, Lcom/zjx/gw2lic/LicenseGateActivity$2;-><init>(Lcom/zjx/gw2lic/LicenseGateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/zjx/gw2lic/LicenseGateActivity;->activateBtn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    invoke-virtual {p0, v3}, Lcom/zjx/gw2lic/LicenseGateActivity;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 103
    invoke-direct {p0, p1}, Lcom/zjx/gw2lic/LicenseGateActivity;->renderStatus(Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lcom/zjx/gw2lic/LicenseGateActivity;->refreshRecent()V

    return-void
.end method
