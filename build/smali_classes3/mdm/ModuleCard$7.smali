.class Lmdm/ModuleCard$7;
.super Ljava/lang/Object;
.source "ModuleCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/ModuleCard;->install([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmdm/ModuleCard;

.field final synthetic val$which:[I


# direct methods
.method constructor <init>(Lmdm/ModuleCard;[I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 352
    iput-object p1, p0, Lmdm/ModuleCard$7;->this$0:Lmdm/ModuleCard;

    iput-object p2, p0, Lmdm/ModuleCard$7;->val$which:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    iget-object v1, p0, Lmdm/ModuleCard$7;->val$which:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_bc

    aget v4, v1, v3

    .line 357
    iget-object v5, p0, Lmdm/ModuleCard$7;->this$0:Lmdm/ModuleCard;

    new-instance v6, Lmdm/ModuleCard$7$1;

    invoke-direct {v6, p0, v4}, Lmdm/ModuleCard$7$1;-><init>(Lmdm/ModuleCard$7;I)V

    invoke-virtual {v5, v6}, Lmdm/ModuleCard;->post(Ljava/lang/Runnable;)Z

    .line 362
    nop

    .line 364
    const/4 v5, 0x0

    :try_start_19
    iget-object v6, p0, Lmdm/ModuleCard$7;->this$0:Lmdm/ModuleCard;

    sget-object v7, Lmdm/ModuleCard;->MODS:[[Ljava/lang/String;

    aget-object v7, v7, v4

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-static {v6, v7}, Lmdm/ModuleCard;->access$400(Lmdm/ModuleCard;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 365
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Z=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "if [ -x /data/adb/cam/bin/camd ]; then /data/adb/cam/bin/camd module install \"$Z\"; elif [ -x /data/adb/camd ]; then /data/adb/camd module install \"$Z\"; elif [ -x /data/adb/ksud ]; then /data/adb/ksud module install \"$Z\"; elif [ -x /data/adb/apd ]; then /data/adb/apd module install \"$Z\"; elif command -v magisk >/dev/null 2>&1; then magisk --install-module \"$Z\"; else echo \'Kh\u00f4ng t\u00ecm th\u1ea5y tr\u00ecnh qu\u1ea3n l\u00fd root (Cam/KernelSU/Magisk/APatch)\'; exit 9; fi"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmdm/ModuleCard;->su(Ljava/lang/String;)Lmdm/ModuleCard$Result;

    move-result-object v6
    :try_end_4d
    .catchall {:try_start_19 .. :try_end_4d} :catchall_4e

    .line 370
    goto :goto_5e

    .line 366
    :catchall_4e
    move-exception v6

    .line 367
    new-instance v7, Lmdm/ModuleCard$Result;

    invoke-direct {v7}, Lmdm/ModuleCard$Result;-><init>()V

    .line 368
    const/4 v8, -0x1

    iput v8, v7, Lmdm/ModuleCard$Result;->code:I

    .line 369
    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lmdm/ModuleCard$Result;->out:Ljava/lang/String;

    move-object v6, v7

    .line 371
    :goto_5e
    if-eqz v5, :cond_63

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 372
    :cond_63
    iget v5, v6, Lmdm/ModuleCard$Result;->code:I

    if-eqz v5, :cond_b8

    .line 373
    iget-object v1, v6, Lmdm/ModuleCard$Result;->out:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 374
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x384

    if-le v2, v3, :cond_91

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u2026"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 375
    :cond_91
    sget-object v2, Lmdm/ModuleCard;->MODS:[[Ljava/lang/String;

    aget-object v2, v2, v4

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (m\u00e3 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v6, Lmdm/ModuleCard$Result;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    goto :goto_bc

    .line 356
    :cond_b8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    .line 379
    :cond_bc
    :goto_bc
    iget-object v1, p0, Lmdm/ModuleCard$7;->this$0:Lmdm/ModuleCard;

    new-instance v2, Lmdm/ModuleCard$7$2;

    invoke-direct {v2, p0, v0}, Lmdm/ModuleCard$7$2;-><init>(Lmdm/ModuleCard$7;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Lmdm/ModuleCard;->post(Ljava/lang/Runnable;)Z

    .line 387
    return-void
.end method
