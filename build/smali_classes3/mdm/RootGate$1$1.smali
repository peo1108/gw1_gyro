.class Lmdm/RootGate$1$1;
.super Ljava/lang/Object;
.source "RootGate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/RootGate$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmdm/RootGate$1;

.field final synthetic val$r:Z


# direct methods
.method constructor <init>(Lmdm/RootGate$1;Z)V
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

    .line 68
    iput-object p1, p0, Lmdm/RootGate$1$1;->this$0:Lmdm/RootGate$1;

    iput-boolean p2, p0, Lmdm/RootGate$1$1;->val$r:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 71
    const/4 v0, 0x0

    invoke-static {v0}, Lmdm/RootGate;->access$002(Z)Z

    .line 72
    iget-boolean v0, p0, Lmdm/RootGate$1$1;->val$r:Z

    if-eqz v0, :cond_10

    .line 73
    const/4 v0, 0x1

    invoke-static {v0}, Lmdm/RootGate;->access$102(Z)Z

    .line 74
    invoke-static {}, Lmdm/RootGate;->access$200()V

    goto :goto_24

    .line 76
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lmdm/RootGate;->access$302(J)J

    .line 77
    invoke-static {}, Lmdm/RootGate;->access$400()Lmdm/RootGate$Cover;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-static {}, Lmdm/RootGate;->access$400()Lmdm/RootGate$Cover;

    move-result-object v0

    invoke-virtual {v0}, Lmdm/RootGate$Cover;->showDenied()V

    .line 79
    :cond_24
    :goto_24
    return-void
.end method
