.class public final Lcom/zjx/gw2lic/AutoRandomizer;
.super Ljava/lang/Object;
.source "AutoRandomizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/gw2lic/AutoRandomizer$StepClick;
    }
.end annotation


# static fields
.field private static final BASE_KEYS:[Ljava/lang/String;

.field private static final HANDLER:Landroid/os/Handler;

.field private static final KEY_INTERVAL:Ljava/lang/String; = "auto_rand_interval"

.field private static final LOOP:Ljava/lang/Runnable;

.field private static final ORIG_KEYS:[Ljava/lang/String;

.field private static final PREFS:Ljava/lang/String; = "gamwing_prefs"

.field private static final TAP_REVERT_DELAY:J = 0x12cL

.field private static final TAP_THRESHOLD:I = 0xf

.field private static final TARGET_TAGS:[Ljava/lang/String;

.field private static interval:I

.field private static final lastProgress:[I

.field private static looping:Z

.field private static final pending:[Ljava/lang/Runnable;

.field private static root:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, ")\u00b3U\u00d3z)\u009b\u0006\u00a7J\u00f7K\u0017\u0091"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "?\u00a9P\u00d1a\u0012\u0086!\u0090\\\u00cfl\u0013\u0088\u0012\u00dcX"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(\u00b4g\u00c4k\u0010\u00aa4\u00b0"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zjx/gw2lic/AutoRandomizer;->TARGET_TAGS:[Ljava/lang/String;

    const-string v1, "0\u00a8M\u00d2z\u0012\u008b>\u009d\\\u00e8h\u0004\u0097\u000f\u00cfK\u00f9`\u001e\u00b3\u0014\u00c8F\u00e6"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0\u00a8M\u00d2z\u0012\u008b>\u009dJ\u00f2m\u0006\u008c9\u00d3^\u00c8v\u0010\u00b0/\u00d7H\u00cd\u008f\u000f\u00ad"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0\u00a8M\u00d2z\u0012\u008b>\u009d]\u00fdg\u0012\u008c=\u00e2Z\u00f4p"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 40
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zjx/gw2lic/AutoRandomizer;->ORIG_KEYS:[Ljava/lang/String;

    const-string v1, ";\u00b2@\u00ceQ\t\u0089;\u00a6p\u00feh\u0005\u0086\u000f\u00ce^\u00f6v\u0005"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ";\u00b2@\u00ceQ\t\u0089;\u00a6p\u00feh\u0005\u0086\u000f\u00d8D\u00f3"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ";\u00b2@\u00ceQ\t\u0089;\u00a6p\u00feh\u0005\u0086\u000f\u00de_\u00e5r\u0014"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zjx/gw2lic/AutoRandomizer;->BASE_KEYS:[Ljava/lang/String;

    .line 52
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/zjx/gw2lic/AutoRandomizer;->HANDLER:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 55
    sput v1, Lcom/zjx/gw2lic/AutoRandomizer;->interval:I

    .line 57
    array-length v2, v0

    new-array v2, v2, [I

    sput-object v2, Lcom/zjx/gw2lic/AutoRandomizer;->lastProgress:[I

    .line 59
    sput-boolean v1, Lcom/zjx/gw2lic/AutoRandomizer;->looping:Z

    .line 61
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Runnable;

    sput-object v0, Lcom/zjx/gw2lic/AutoRandomizer;->pending:[Ljava/lang/Runnable;

    .line 65
    new-instance v0, Lcom/zjx/gw2lic/AutoRandomizer$1;

    invoke-direct {v0}, Lcom/zjx/gw2lic/AutoRandomizer$1;-><init>()V

    sput-object v0, Lcom/zjx/gw2lic/AutoRandomizer;->LOOP:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accept(II)V
    .locals 3

    .line 214
    sget-object v0, Lcom/zjx/gw2lic/AutoRandomizer;->lastProgress:[I

    aput p1, v0, p0

    .line 215
    sget-object v0, Lcom/zjx/gw2lic/AutoRandomizer;->root:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "=\u00a6Y\u00d6g\u0015\u008f\n\u00b2]\u00f9o\u0005"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 216
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/zjx/gw2lic/AutoRandomizer;->BASE_KEYS:[Ljava/lang/String;

    aget-object p0, v1, p0

    invoke-static {p1}, Lcom/zjx/gw2lic/AutoRandomizer;->clamp(I)I

    move-result p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic access$000()Landroid/view/View;
    .locals 1

    .line 30
    sget-object v0, Lcom/zjx/gw2lic/AutoRandomizer;->root:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 30
    sget v0, Lcom/zjx/gw2lic/AutoRandomizer;->interval:I

    return v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/zjx/gw2lic/AutoRandomizer;->TARGET_TAGS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/zjx/gw2lic/AutoRandomizer;->BASE_KEYS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/zjx/gw2lic/AutoRandomizer;->ORIG_KEYS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    .line 30
    sput-boolean p0, Lcom/zjx/gw2lic/AutoRandomizer;->looping:Z

    return p0
.end method

.method static synthetic access$600()[I
    .locals 1

    .line 30
    sget-object v0, Lcom/zjx/gw2lic/AutoRandomizer;->lastProgress:[I

    return-object v0
.end method

.method static synthetic access$700()Landroid/os/Handler;
    .locals 1

    .line 30
    sget-object v0, Lcom/zjx/gw2lic/AutoRandomizer;->HANDLER:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800()[Ljava/lang/Runnable;
    .locals 1

    .line 30
    sget-object v0, Lcom/zjx/gw2lic/AutoRandomizer;->pending:[Ljava/lang/Runnable;

    return-object v0
.end method

.method static apply(I)V
    .locals 7

    .line 241
    sget-object v0, Lcom/zjx/gw2lic/AutoRandomizer;->root:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-gez p0, :cond_1

    move p0, v0

    :cond_1
    const/16 v1, 0x1e

    if-le p0, v1, :cond_2

    move p0, v1

    .line 246
    :cond_2
    sget v1, Lcom/zjx/gw2lic/AutoRandomizer;->interval:I

    const/4 v2, 0x1

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v0

    .line 247
    :goto_0
    sput p0, Lcom/zjx/gw2lic/AutoRandomizer;->interval:I

    move v3, v0

    .line 248
    :goto_1
    sget-object v4, Lcom/zjx/gw2lic/AutoRandomizer;->TARGET_TAGS:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 249
    invoke-static {v3}, Lcom/zjx/gw2lic/AutoRandomizer;->cancelPending(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 251
    :cond_4
    sget-object v3, Lcom/zjx/gw2lic/AutoRandomizer;->root:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "=\u00a6Y\u00d6g\u0015\u008f\n\u00b2]\u00f9o\u0005"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 252
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, ";\u00b2@\u00ceQ\t\u0089;\u00a6p\u00f5g\u0002\u0086\"\u00cbK\u00fb"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 253
    invoke-interface {v4, v5, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v5, ";\u00b2@\u00ce\\\u001a\u00861\u008eN\u00fel\u001a"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-lez p0, :cond_6

    if-eqz v1, :cond_5

    move v1, v0

    .line 257
    :goto_2
    sget-object v2, Lcom/zjx/gw2lic/AutoRandomizer;->TARGET_TAGS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 258
    sget-object v2, Lcom/zjx/gw2lic/AutoRandomizer;->ORIG_KEYS:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {v3, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/zjx/gw2lic/AutoRandomizer;->clamp(I)I

    move-result v2

    .line 259
    sget-object v6, Lcom/zjx/gw2lic/AutoRandomizer;->BASE_KEYS:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-interface {v4, v6, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 260
    sget-object v6, Lcom/zjx/gw2lic/AutoRandomizer;->lastProgress:[I

    aput v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 263
    :cond_5
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 264
    sget-object v0, Lcom/zjx/gw2lic/AutoRandomizer;->root:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, p0}, Lcom/zjx/gw2lic/AutoRandomizer;->updateLabel(Landroid/widget/TextView;I)V

    .line 265
    invoke-static {}, Lcom/zjx/gw2lic/AutoRandomizer;->ensureRunning()V

    goto :goto_5

    .line 267
    :cond_6
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 268
    sget-object p0, Lcom/zjx/gw2lic/AutoRandomizer;->root:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/zjx/gw2lic/AutoRandomizer;->updateLabel(Landroid/widget/TextView;I)V

    .line 269
    sget-object p0, Lcom/zjx/gw2lic/AutoRandomizer;->HANDLER:Landroid/os/Handler;

    sget-object v1, Lcom/zjx/gw2lic/AutoRandomizer;->LOOP:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move p0, v0

    .line 271
    :goto_3
    sget-object v1, Lcom/zjx/gw2lic/AutoRandomizer;->TARGET_TAGS:[Ljava/lang/String;

    array-length v4, v1

    if-ge p0, v4, :cond_9

    .line 272
    sget-object v4, Lcom/zjx/gw2lic/AutoRandomizer;->root:Landroid/view/View;

    aget-object v1, v1, p0

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    if-nez v1, :cond_7

    goto :goto_4

    .line 276
    :cond_7
    sget-object v4, Lcom/zjx/gw2lic/AutoRandomizer;->BASE_KEYS:[Ljava/lang/String;

    aget-object v5, v4, p0

    invoke-interface {v3, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 277
    aget-object v4, v4, p0

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/zjx/gw2lic/AutoRandomizer;->clamp(I)I

    move-result v4

    .line 278
    sput-boolean v2, Lcom/zjx/gw2lic/AutoRandomizer;->looping:Z

    .line 280
    :try_start_0
    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    sput-boolean v0, Lcom/zjx/gw2lic/AutoRandomizer;->looping:Z

    .line 284
    sget-object v1, Lcom/zjx/gw2lic/AutoRandomizer;->lastProgress:[I

    aput v4, v1, p0

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 282
    sput-boolean v0, Lcom/zjx/gw2lic/AutoRandomizer;->looping:Z

    .line 283
    throw p0

    :cond_8
    :goto_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_9
    :goto_5
    return-void
.end method

.method public static bind(Landroid/view/View;)V
    .locals 5

    const-string v0, ";\u00b2@\u00ce\\\u001a\u00861\u0091J\u00f9b4\u0082\""

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    sput-object p0, Lcom/zjx/gw2lic/AutoRandomizer;->root:Landroid/view/View;

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "=\u00a6Y\u00d6g\u0015\u008f\n\u00b2]\u00f9o\u0005"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, ";\u00b2@\u00ceQ\t\u0089;\u00a6p\u00f5g\u0002\u0086\"\u00cbK\u00fb"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_1

    move v1, v3

    :cond_1
    const/16 v2, 0x1e

    if-le v1, v2, :cond_2

    move v1, v2

    .line 114
    :cond_2
    sput v1, Lcom/zjx/gw2lic/AutoRandomizer;->interval:I

    .line 116
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    const-string v2, ";\u00b2@\u00ce\\\u001a\u00861\u008eN\u00fel\u001a"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/zjx/gw2lic/AutoRandomizer;->updateLabel(Landroid/widget/TextView;I)V

    move v1, v3

    .line 119
    :goto_0
    sget-object v2, Lcom/zjx/gw2lic/AutoRandomizer;->TARGET_TAGS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_4

    .line 120
    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    if-eqz v2, :cond_3

    .line 122
    sget-object v4, Lcom/zjx/gw2lic/AutoRandomizer;->lastProgress:[I

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    aput v2, v4, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_4
    new-instance v1, Lcom/zjx/gw2lic/AutoRandomizer$2;

    invoke-direct {v1}, Lcom/zjx/gw2lic/AutoRandomizer$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 139
    :goto_1
    sget-object v1, Lcom/zjx/gw2lic/AutoRandomizer;->TARGET_TAGS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v3, v1, :cond_5

    .line 140
    invoke-static {v3}, Lcom/zjx/gw2lic/AutoRandomizer;->cancelPending(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const-string v1, ";\u00b2@\u00ce\\\u001a\u00861\u008fF\u00f2|\u0005"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    const-string v2, ";\u00b2@\u00ce\\\u001a\u00861\u0092C\u00e9z"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    if-eqz v1, :cond_6

    .line 144
    new-instance v2, Lcom/zjx/gw2lic/AutoRandomizer$StepClick;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3}, Lcom/zjx/gw2lic/AutoRandomizer$StepClick;-><init>(Landroid/widget/SeekBar;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    if-eqz p0, :cond_7

    .line 145
    new-instance v1, Lcom/zjx/gw2lic/AutoRandomizer$StepClick;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/zjx/gw2lic/AutoRandomizer$StepClick;-><init>(Landroid/widget/SeekBar;I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    :cond_7
    invoke-static {}, Lcom/zjx/gw2lic/AutoRandomizer;->ensureRunning()V

    return-void
.end method

.method private static cancelPending(I)V
    .locals 3

    .line 220
    sget-object v0, Lcom/zjx/gw2lic/AutoRandomizer;->pending:[Ljava/lang/Runnable;

    aget-object v1, v0, p0

    if-eqz v1, :cond_0

    .line 222
    sget-object v2, Lcom/zjx/gw2lic/AutoRandomizer;->HANDLER:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 223
    aput-object v1, v0, p0

    :cond_0
    return-void
.end method

.method private static clamp(I)I
    .locals 1

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0x64

    if-le p0, v0, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method public static ensureRunning()V
    .locals 6

    .line 234
    sget-object v0, Lcom/zjx/gw2lic/AutoRandomizer;->HANDLER:Landroid/os/Handler;

    sget-object v1, Lcom/zjx/gw2lic/AutoRandomizer;->LOOP:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    sget v2, Lcom/zjx/gw2lic/AutoRandomizer;->interval:I

    if-lez v2, :cond_0

    sget-object v3, Lcom/zjx/gw2lic/AutoRandomizer;->root:Landroid/view/View;

    if-eqz v3, :cond_0

    int-to-long v2, v2

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    .line 236
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static onProgressChange(II)V
    .locals 4

    if-ltz p0, :cond_5

    .line 160
    sget-object v0, Lcom/zjx/gw2lic/AutoRandomizer;->TARGET_TAGS:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    sget-boolean v0, Lcom/zjx/gw2lic/AutoRandomizer;->looping:Z

    if-eqz v0, :cond_1

    .line 165
    sget-object v0, Lcom/zjx/gw2lic/AutoRandomizer;->lastProgress:[I

    aput p1, v0, p0

    .line 166
    invoke-static {p0}, Lcom/zjx/gw2lic/AutoRandomizer;->cancelPending(I)V

    return-void

    .line 169
    :cond_1
    sget v0, Lcom/zjx/gw2lic/AutoRandomizer;->interval:I

    if-lez v0, :cond_5

    sget-object v0, Lcom/zjx/gw2lic/AutoRandomizer;->root:Landroid/view/View;

    if-nez v0, :cond_2

    goto :goto_0

    .line 172
    :cond_2
    sget-object v0, Lcom/zjx/gw2lic/AutoRandomizer;->pending:[Ljava/lang/Runnable;

    aget-object v1, v0, p0

    if-eqz v1, :cond_3

    .line 175
    sget-object v2, Lcom/zjx/gw2lic/AutoRandomizer;->HANDLER:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 176
    aput-object v1, v0, p0

    .line 177
    invoke-static {p0, p1}, Lcom/zjx/gw2lic/AutoRandomizer;->accept(II)V

    return-void

    .line 180
    :cond_3
    sget-object v1, Lcom/zjx/gw2lic/AutoRandomizer;->lastProgress:[I

    aget v2, v1, p0

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0xf

    if-gt v2, v3, :cond_4

    .line 182
    invoke-static {p0, p1}, Lcom/zjx/gw2lic/AutoRandomizer;->accept(II)V

    goto :goto_0

    .line 186
    :cond_4
    aget p1, v1, p0

    .line 187
    new-instance v1, Lcom/zjx/gw2lic/AutoRandomizer$3;

    invoke-direct {v1, p0, p1}, Lcom/zjx/gw2lic/AutoRandomizer$3;-><init>(II)V

    .line 207
    aput-object v1, v0, p0

    .line 208
    sget-object p0, Lcom/zjx/gw2lic/AutoRandomizer;->HANDLER:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_0
    return-void
.end method

.method private static updateLabel(Landroid/widget/TextView;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "\u0015\u0081r"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 295
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 297
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "z\u00aa]\u00cf"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
