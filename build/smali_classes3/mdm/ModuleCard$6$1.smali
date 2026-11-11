.class Lmdm/ModuleCard$6$1;
.super Ljava/lang/Object;
.source "ModuleCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/ModuleCard$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmdm/ModuleCard$6;

.field final synthetic val$r:Lmdm/ModuleCard$Result;


# direct methods
.method constructor <init>(Lmdm/ModuleCard$6;Lmdm/ModuleCard$Result;)V
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

    .line 260
    iput-object p1, p0, Lmdm/ModuleCard$6$1;->this$1:Lmdm/ModuleCard$6;

    iput-object p2, p0, Lmdm/ModuleCard$6$1;->val$r:Lmdm/ModuleCard$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 262
    iget-object v0, p0, Lmdm/ModuleCard$6$1;->this$1:Lmdm/ModuleCard$6;

    iget-object v0, v0, Lmdm/ModuleCard$6;->this$0:Lmdm/ModuleCard;

    iget-object v1, p0, Lmdm/ModuleCard$6$1;->val$r:Lmdm/ModuleCard$Result;

    invoke-static {v0, v1}, Lmdm/ModuleCard;->access$200(Lmdm/ModuleCard;Lmdm/ModuleCard$Result;)V

    return-void
.end method
