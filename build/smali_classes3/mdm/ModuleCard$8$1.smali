.class Lmdm/ModuleCard$8$1;
.super Ljava/lang/Object;
.source "ModuleCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/ModuleCard$8;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmdm/ModuleCard$8;


# direct methods
.method constructor <init>(Lmdm/ModuleCard$8;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 408
    iput-object p1, p0, Lmdm/ModuleCard$8$1;->this$1:Lmdm/ModuleCard$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 410
    const-string v0, "svc power reboot || reboot"

    invoke-static {v0}, Lmdm/ModuleCard;->su(Ljava/lang/String;)Lmdm/ModuleCard$Result;

    return-void
.end method
