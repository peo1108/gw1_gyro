.class public final Lmdm/RecogCompat;
.super Ljava/lang/Object;
.source "RecogCompat.java"


# static fields
.field static final M416:I = 0x16

.field static final M417:I = 0x2d


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static weaponHint(I)I
    .registers 4

    .line 18
    const/4 v0, -0x1

    if-eq p0, v0, :cond_28

    const/16 v1, 0x16

    if-eq p0, v1, :cond_28

    const/16 v1, 0x2d

    if-ne p0, v1, :cond_c

    goto :goto_28

    .line 22
    :cond_c
    :try_start_c
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c;->e()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v2

    .line 24
    if-eqz v2, :cond_25

    if-eqz v1, :cond_25

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_26

    if-nez v1, :cond_23

    goto :goto_25

    .line 29
    :cond_23
    nop

    .line 30
    return p0

    .line 25
    :cond_25
    :goto_25
    return v0

    .line 27
    :catchall_26
    move-exception p0

    .line 28
    return v0

    .line 19
    :cond_28
    :goto_28
    return v0
.end method
