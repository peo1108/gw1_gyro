.class public final Lmdm/ForceRedDot;
.super Ljava/lang/Object;
.source "ForceRedDot.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "force_red_dot_recognition"

.field public static final PREFS:Ljava/lang/String; = "force_red_dot_prefs"

.field public static final TAG:Ljava/lang/String; = "forceRedDotRecognitionCell"

.field private static history:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Landroid/view/View;)V
    .registers 2

    .line 61
    if-nez p0, :cond_3

    return-void

    .line 62
    :cond_3
    const-string v0, "forceRedDotRecognitionCell"

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    .line 63
    instance-of v0, p0, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    if-nez v0, :cond_e

    return-void

    .line 64
    :cond_e
    check-cast p0, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object p0, p0, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    .line 65
    if-nez p0, :cond_15

    return-void

    .line 66
    :cond_15
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    invoke-static {}, Lmdm/ForceRedDot;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 68
    new-instance v0, Lmdm/ForceRedDot$1;

    invoke-direct {v0}, Lmdm/ForceRedDot$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 74
    return-void
.end method

.method public static filter(Lk/j;I)I
    .registers 4

    .line 43
    if-nez p1, :cond_1e

    iget-object p0, p0, Lk/j;->a:Landroid/graphics/Bitmap;

    if-nez p0, :cond_7

    goto :goto_1e

    .line 46
    :cond_7
    invoke-static {}, Lmdm/ForceRedDot;->isEnabled()Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_11

    .line 47
    sput p1, Lmdm/ForceRedDot;->history:I

    .line 48
    return p1

    .line 50
    :cond_11
    sget p0, Lmdm/ForceRedDot;->history:I

    const/4 v0, 0x1

    add-int/2addr p0, v0

    .line 51
    const/4 v1, 0x2

    if-lt p0, v1, :cond_1b

    .line 52
    sput p1, Lmdm/ForceRedDot;->history:I

    .line 53
    return v0

    .line 55
    :cond_1b
    sput p0, Lmdm/ForceRedDot;->history:I

    .line 56
    return p1

    .line 44
    :cond_1e
    :goto_1e
    return p1
.end method

.method public static isEnabled()Z
    .registers 3

    .line 27
    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 28
    const/4 v1, 0x0

    if-eqz v0, :cond_16

    const-string v2, "force_red_dot_prefs"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "force_red_dot_recognition"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public static setEnabled(Z)V
    .registers 4

    .line 32
    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_1a

    .line 34
    const-string v1, "force_red_dot_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "force_red_dot_recognition"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 36
    :cond_1a
    return-void
.end method
