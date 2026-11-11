.class Lmdm/ModuleCard$6;
.super Ljava/lang/Object;
.source "ModuleCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/ModuleCard;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmdm/ModuleCard;


# direct methods
.method constructor <init>(Lmdm/ModuleCard;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 256
    iput-object p1, p0, Lmdm/ModuleCard$6;->this$0:Lmdm/ModuleCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 259
    const-string v0, "for id in zygisksu sensor_cal; do d=/data/adb/modules/$id; u=/data/adb/modules_update/$id; v=$(grep \'^version=\' $d/module.prop 2>/dev/null | head -1 | cut -d= -f2-); uv=$(grep \'^version=\' $u/module.prop 2>/dev/null | head -1 | cut -d= -f2-); f=; [ -f $d/disable ] && f=disable; [ -f $d/remove ] && f=remove; [ -f $d/update ] && f=update; echo \"MDM|$id|$v|$uv|$f\"; done"

    invoke-static {v0}, Lmdm/ModuleCard;->su(Ljava/lang/String;)Lmdm/ModuleCard$Result;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lmdm/ModuleCard$6;->this$0:Lmdm/ModuleCard;

    new-instance v2, Lmdm/ModuleCard$6$1;

    invoke-direct {v2, p0, v0}, Lmdm/ModuleCard$6$1;-><init>(Lmdm/ModuleCard$6;Lmdm/ModuleCard$Result;)V

    invoke-virtual {v1, v2}, Lmdm/ModuleCard;->post(Ljava/lang/Runnable;)Z

    .line 264
    return-void
.end method
