.class Lmdm/ModuleCard$7$2;
.super Ljava/lang/Object;
.source "ModuleCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/ModuleCard$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmdm/ModuleCard$7;

.field final synthetic val$fail:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lmdm/ModuleCard$7;Ljava/lang/StringBuilder;)V
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

    .line 379
    iput-object p1, p0, Lmdm/ModuleCard$7$2;->this$1:Lmdm/ModuleCard$7;

    iput-object p2, p0, Lmdm/ModuleCard$7$2;->val$fail:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 382
    iget-object v0, p0, Lmdm/ModuleCard$7$2;->this$1:Lmdm/ModuleCard$7;

    iget-object v0, v0, Lmdm/ModuleCard$7;->this$0:Lmdm/ModuleCard;

    invoke-virtual {v0}, Lmdm/ModuleCard;->refresh()V

    .line 383
    iget-object v0, p0, Lmdm/ModuleCard$7$2;->val$fail:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_23

    iget-object v0, p0, Lmdm/ModuleCard$7$2;->this$1:Lmdm/ModuleCard$7;

    iget-object v0, v0, Lmdm/ModuleCard$7;->this$0:Lmdm/ModuleCard;

    iget-object v1, p0, Lmdm/ModuleCard$7$2;->val$fail:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "C\u00e0i module l\u1ed7i"

    invoke-static {v0, v2, v1}, Lmdm/ModuleCard;->access$500(Lmdm/ModuleCard;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 384
    :cond_23
    iget-object v0, p0, Lmdm/ModuleCard$7$2;->this$1:Lmdm/ModuleCard$7;

    iget-object v0, v0, Lmdm/ModuleCard$7;->this$0:Lmdm/ModuleCard;

    const-string v1, "\u0110\u00e3 c\u00e0i xong"

    const-string v2, "Kh\u1edfi \u0111\u1ed9ng l\u1ea1i m\u00e1y \u0111\u1ec3 module c\u00f3 hi\u1ec7u l\u1ef1c."

    invoke-static {v0, v1, v2}, Lmdm/ModuleCard;->access$500(Lmdm/ModuleCard;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :goto_2e
    return-void
.end method
