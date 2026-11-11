.class public final Lcom/zjx/gw2lic/Gw2HudTheme;
.super Ljava/lang/Object;
.source "Gw2HudTheme.java"


# static fields
.field public static final DEF_BG:I = -0xa59a06

.field public static final DEF_TEXT:I = -0x1

.field private static final K_BG:Ljava/lang/String; = "bg"

.field private static final K_TX:Ljava/lang/String; = "tx"

.field private static final PREFS:Ljava/lang/String; = "gw2_hud_theme"

.field private static sBg:I = -0xa59a06

.field private static volatile sIdle:Z = true

.field private static sLoaded:Z = false

.field private static sPanel:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static sText:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activeBg(I)I
    .locals 1

    const/4 v0, 0x0

    .line 117
    sput-boolean v0, Lcom/zjx/gw2lic/Gw2HudTheme;->sIdle:Z

    return p0
.end method

.method private static appContext()Landroid/content/Context;
    .locals 3

    const/4 v0, 0x0

    .line 189
    :try_start_0
    const-string v1, "9\u00a8Y\u008ft\u0011\u0090{\u00a8V\u00fdg\u0012\u0091?\u00d4N\u00b9E\u0001\u00ae"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 190
    const-string v2, "0"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 191
    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 192
    instance-of v2, v1, Landroid/content/Context;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    :cond_0
    return-object v0
.end method

.method public static attach(Landroid/view/View;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/zjx/gw2lic/Gw2HudTheme;->sPanel:Ljava/lang/ref/WeakReference;

    .line 126
    :try_start_0
    invoke-static {}, Lcom/zjx/gw2lic/Gw2HudTheme;->text()I

    move-result v0

    invoke-static {p0, v0}, Lcom/zjx/gw2lic/Gw2HudTheme;->paintText(Landroid/view/View;I)V

    .line 127
    invoke-static {}, Lcom/zjx/gw2lic/Gw2HudTheme;->bg()I

    move-result v0

    invoke-static {p0, v0}, Lcom/zjx/gw2lic/Gw2HudTheme;->paintBg(Landroid/view/View;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static declared-synchronized bg()I
    .locals 2

    const-class v0, Lcom/zjx/gw2lic/Gw2HudTheme;

    monitor-enter v0

    .line 51
    :try_start_0
    invoke-static {}, Lcom/zjx/gw2lic/Gw2HudTheme;->load()V

    .line 52
    sget v1, Lcom/zjx/gw2lic/Gw2HudTheme;->sBg:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static bgPalette()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const v0, -0xd8d8db

    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v0, -0x1000000

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v0, -0x808081

    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v0, -0x1

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v0, -0x3758a1

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v0, -0xa59a06

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v0, -0xc4d0

    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v0, -0xcb38a7

    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Integer;

    move-result-object v0

    .line 77
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static idleBg(I)I
    .locals 1

    const/4 v0, 0x1

    .line 107
    sput-boolean v0, Lcom/zjx/gw2lic/Gw2HudTheme;->sIdle:Z

    .line 109
    :try_start_0
    invoke-static {}, Lcom/zjx/gw2lic/Gw2HudTheme;->bg()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return p0
.end method

.method private static load()V
    .locals 3

    .line 166
    sget-boolean v0, Lcom/zjx/gw2lic/Gw2HudTheme;->sLoaded:Z

    if-eqz v0, :cond_0

    return-void

    .line 167
    :cond_0
    invoke-static {}, Lcom/zjx/gw2lic/Gw2HudTheme;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 169
    :cond_1
    const-string v1, "8\u00a0"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, -0xa59a06

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/zjx/gw2lic/Gw2HudTheme;->sBg:I

    .line 170
    const-string v1, ".\u00bf"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/zjx/gw2lic/Gw2HudTheme;->sText:I

    const/4 v0, 0x1

    .line 171
    sput-boolean v0, Lcom/zjx/gw2lic/Gw2HudTheme;->sLoaded:Z

    return-void
.end method

.method private static paintBg(Landroid/view/View;I)V
    .locals 0

    .line 149
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private static paintText(Landroid/view/View;I)V
    .locals 2

    .line 153
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 154
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 157
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 158
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 159
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 160
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/zjx/gw2lic/Gw2HudTheme;->paintText(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static prefs()Landroid/content/SharedPreferences;
    .locals 3

    .line 181
    invoke-static {}, Lcom/zjx/gw2lic/Gw2HudTheme;->appContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 183
    :cond_0
    const-string v1, "=\u00b0\u0006\u00fef\u000e\u008c\n\u00b6G\u00f9d\u0013"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static refresh()V
    .locals 2

    .line 134
    sget-object v0, Lcom/zjx/gw2lic/Gw2HudTheme;->sPanel:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 137
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/zjx/gw2lic/Gw2HudTheme;->text()I

    move-result v1

    invoke-static {v0, v1}, Lcom/zjx/gw2lic/Gw2HudTheme;->paintText(Landroid/view/View;I)V

    .line 139
    sget-boolean v1, Lcom/zjx/gw2lic/Gw2HudTheme;->sIdle:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/zjx/gw2lic/Gw2HudTheme;->bg()I

    move-result v1

    invoke-static {v0, v1}, Lcom/zjx/gw2lic/Gw2HudTheme;->paintBg(Landroid/view/View;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method private static save(Ljava/lang/String;I)V
    .locals 1

    .line 175
    invoke-static {}, Lcom/zjx/gw2lic/Gw2HudTheme;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static declared-synchronized setBg(I)V
    .locals 2

    const-class v0, Lcom/zjx/gw2lic/Gw2HudTheme;

    monitor-enter v0

    .line 61
    :try_start_0
    invoke-static {}, Lcom/zjx/gw2lic/Gw2HudTheme;->load()V

    .line 62
    sput p0, Lcom/zjx/gw2lic/Gw2HudTheme;->sBg:I

    .line 63
    const-string v1, "8\u00a0"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/zjx/gw2lic/Gw2HudTheme;->save(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setText(I)V
    .locals 2

    const-class v0, Lcom/zjx/gw2lic/Gw2HudTheme;

    monitor-enter v0

    .line 67
    :try_start_0
    invoke-static {}, Lcom/zjx/gw2lic/Gw2HudTheme;->load()V

    .line 68
    sput p0, Lcom/zjx/gw2lic/Gw2HudTheme;->sText:I

    .line 69
    const-string v1, ".\u00bf"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/zjx/gw2lic/Gw2HudTheme;->save(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized text()I
    .locals 2

    const-class v0, Lcom/zjx/gw2lic/Gw2HudTheme;

    monitor-enter v0

    .line 56
    :try_start_0
    invoke-static {}, Lcom/zjx/gw2lic/Gw2HudTheme;->load()V

    .line 57
    sget v1, Lcom/zjx/gw2lic/Gw2HudTheme;->sText:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static textPalette()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const v0, -0x1e3168

    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, -0x1

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/high16 v0, -0x1000000

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v0, -0x1f76

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v0, -0x5b00

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v0, -0xff0001

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v0, -0xc4d0

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v0, -0xcb38a7

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Integer;

    move-result-object v0

    .line 90
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
