.class Lmdm/GyroStatusView$2;
.super Ljava/lang/Object;
.source "GyroStatusView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/GyroStatusView;->checkModules()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmdm/GyroStatusView;


# direct methods
.method constructor <init>(Lmdm/GyroStatusView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lmdm/GyroStatusView$2;->this$0:Lmdm/GyroStatusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    const/4 v0, 0x0

    .line 87
    :try_start_1
    const-string v1, "for id in zygisksu sensor_cal; do d=/data/adb/modules/$id; u=/data/adb/modules_update/$id; v=$(grep \'^version=\' $d/module.prop 2>/dev/null | head -1 | cut -d= -f2-); uv=$(grep \'^version=\' $u/module.prop 2>/dev/null | head -1 | cut -d= -f2-); f=; [ -f $d/disable ] && f=disable; [ -f $d/remove ] && f=remove; [ -f $d/update ] && f=update; echo \"MDM|$id|$v|$uv|$f\"; done"

    invoke-static {v1}, Lmdm/ModuleCard;->su(Ljava/lang/String;)Lmdm/ModuleCard$Result;

    move-result-object v1

    .line 90
    iget-object v1, v1, Lmdm/ModuleCard$Result;->out:Ljava/lang/String;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_15
    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x4

    const/4 v11, 0x1

    if-ge v3, v2, :cond_89

    aget-object v12, v1, v3

    .line 91
    const-string v13, "MDM|"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_27

    goto/16 :goto_86

    .line 93
    :cond_27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v12, "\\|"

    const/4 v13, -0x1

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 94
    aget-object v9, v4, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aget-object v8, v4, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    array-length v12, v4

    if-le v12, v10, :cond_55

    aget-object v4, v4, v10

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_57

    :cond_55
    const-string v4, ""

    .line 95
    :goto_57
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_84

    const-string v8, "update"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_84

    const-string v8, "remove"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6e

    goto :goto_84

    .line 96
    :cond_6e
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_77

    move v4, v11

    move v5, v4

    goto :goto_86

    .line 97
    :cond_77
    const-string v8, "disable"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    move v4, v11

    move v7, v4

    goto :goto_86

    :cond_82
    move v4, v11

    goto :goto_86

    :cond_84
    :goto_84
    move v4, v11

    move v6, v4

    :goto_86
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_89
    if-eqz v4, :cond_98

    if-eqz v5, :cond_8f

    move v8, v9

    goto :goto_99

    :cond_8f
    if-eqz v6, :cond_92

    goto :goto_99

    :cond_92
    if-eqz v7, :cond_96

    move v8, v10

    goto :goto_99

    :cond_96
    move v8, v11

    goto :goto_99

    :cond_98
    move v8, v0

    .line 100
    :goto_99
    iget-object v1, p0, Lmdm/GyroStatusView$2;->this$0:Lmdm/GyroStatusView;

    invoke-static {v1, v8}, Lmdm/GyroStatusView;->access$202(Lmdm/GyroStatusView;I)I
    :try_end_9e
    .catchall {:try_start_1 .. :try_end_9e} :catchall_a4

    .line 102
    iget-object v1, p0, Lmdm/GyroStatusView$2;->this$0:Lmdm/GyroStatusView;

    invoke-static {v1, v0}, Lmdm/GyroStatusView;->access$302(Lmdm/GyroStatusView;Z)Z

    return-void

    :catchall_a4
    move-exception v1

    iget-object v2, p0, Lmdm/GyroStatusView$2;->this$0:Lmdm/GyroStatusView;

    invoke-static {v2, v0}, Lmdm/GyroStatusView;->access$302(Lmdm/GyroStatusView;Z)Z

    .line 103
    throw v1
.end method
