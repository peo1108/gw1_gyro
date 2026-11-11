.class Lcom/zjx/gw2lic/AutoRandomizer$1;
.super Ljava/lang/Object;
.source "AutoRandomizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/gw2lic/AutoRandomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 68
    invoke-static {}, Lcom/zjx/gw2lic/AutoRandomizer;->access$000()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/zjx/gw2lic/AutoRandomizer;->access$100()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    .line 74
    :cond_0
    invoke-static {}, Lcom/zjx/gw2lic/AutoRandomizer;->access$000()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "=\u00a6Y\u00d6g\u0015\u008f\n\u00b2]\u00f9o\u0005"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    move v1, v2

    .line 75
    :goto_0
    invoke-static {}, Lcom/zjx/gw2lic/AutoRandomizer;->access$200()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 76
    invoke-static {}, Lcom/zjx/gw2lic/AutoRandomizer;->access$000()Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/zjx/gw2lic/AutoRandomizer;->access$200()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    if-nez v3, :cond_1

    goto :goto_1

    .line 80
    :cond_1
    invoke-static {}, Lcom/zjx/gw2lic/AutoRandomizer;->access$300()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-static {}, Lcom/zjx/gw2lic/AutoRandomizer;->access$400()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 81
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide/high16 v7, 0x4020000000000000L    # 8.0

    mul-double/2addr v5, v7

    double-to-int v5, v5

    add-int/lit8 v5, v5, 0x5

    sub-int v6, v4, v5

    .line 83
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    cmpg-double v7, v7, v9

    if-gez v7, :cond_2

    add-int v6, v4, v5

    :cond_2
    if-gez v6, :cond_3

    move v6, v2

    :cond_3
    const/16 v4, 0x64

    if-le v6, v4, :cond_4

    move v6, v4

    :cond_4
    const/4 v4, 0x1

    .line 88
    invoke-static {v4}, Lcom/zjx/gw2lic/AutoRandomizer;->access$502(Z)Z

    .line 90
    :try_start_0
    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-static {v2}, Lcom/zjx/gw2lic/AutoRandomizer;->access$502(Z)Z

    .line 94
    invoke-static {}, Lcom/zjx/gw2lic/AutoRandomizer;->access$600()[I

    move-result-object v3

    aput v6, v3, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 92
    invoke-static {v2}, Lcom/zjx/gw2lic/AutoRandomizer;->access$502(Z)Z

    .line 93
    throw v0

    .line 96
    :cond_5
    invoke-static {}, Lcom/zjx/gw2lic/AutoRandomizer;->access$700()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/zjx/gw2lic/AutoRandomizer;->access$100()I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0xea60

    mul-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_2
    return-void
.end method
