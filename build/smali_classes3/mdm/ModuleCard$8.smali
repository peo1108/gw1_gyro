.class Lmdm/ModuleCard$8;
.super Ljava/lang/Object;
.source "ModuleCard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/ModuleCard;->confirmReboot()V
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

    .line 405
    iput-object p1, p0, Lmdm/ModuleCard$8;->this$0:Lmdm/ModuleCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 408
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lmdm/ModuleCard$8$1;

    invoke-direct {p2, p0}, Lmdm/ModuleCard$8$1;-><init>(Lmdm/ModuleCard$8;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 411
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 412
    return-void
.end method
