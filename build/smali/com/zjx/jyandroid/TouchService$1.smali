.class Lcom/zjx/jyandroid/TouchService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/TouchService;->main([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$touchInputStream:Ljava/io/DataInputStream;


# direct methods
.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/TouchService$1;->val$touchInputStream:Ljava/io/DataInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/16 v0, -0x14

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    const/16 v0, 0xc

    new-array v0, v0, [B

    iget-object v2, p0, Lcom/zjx/jyandroid/TouchService$1;->val$touchInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v2

    if-gez v2, :cond_0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    :goto_1
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    const/4 v4, 0x1

    aget-byte v5, v0, v4

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v2, v5

    const/4 v5, 0x2

    aget-byte v6, v0, v5

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v3

    const/4 v7, 0x3

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    or-int v9, v6, v7

    const/4 v6, 0x4

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    const/4 v7, 0x5

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/4 v7, 0x6

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v3

    or-int/2addr v6, v7

    const/4 v7, 0x7

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    aget-byte v7, v0, v3

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    const/16 v8, 0x9

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    const/16 v8, 0xa

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v3, v8, 0x8

    or-int/2addr v3, v7

    const/16 v7, 0xb

    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v3

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v5, :cond_1

    goto :goto_0

    :cond_1
    sget-object v8, Lcom/zjx/jyandroid/TouchService;->touchManager:Lcom/zjx/jyandroid/ADB/app_process/TouchManager;

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3ca3d70a    # 0.02f

    invoke-virtual/range {v8 .. v13}, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->touchUp(IFFFF)V

    goto/16 :goto_0

    :cond_2
    sget-object v8, Lcom/zjx/jyandroid/TouchService;->touchManager:Lcom/zjx/jyandroid/ADB/app_process/TouchManager;

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3ca3d70a    # 0.02f

    invoke-virtual/range {v8 .. v13}, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->touchMove(IFFFF)V

    goto/16 :goto_0

    :cond_3
    sget-object v8, Lcom/zjx/jyandroid/TouchService;->touchManager:Lcom/zjx/jyandroid/ADB/app_process/TouchManager;

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3ca3d70a    # 0.02f

    invoke-virtual/range {v8 .. v13}, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->touchDown(IFFFF)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x1e7dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->b(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
