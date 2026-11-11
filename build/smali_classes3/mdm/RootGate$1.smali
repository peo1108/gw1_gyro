.class Lmdm/RootGate$1;
.super Ljava/lang/Object;
.source "RootGate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/RootGate;->check()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$main:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lmdm/RootGate$1;->val$main:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 67
    invoke-static {}, Lmdm/RootGate;->hasRoot()Z

    move-result v0

    .line 68
    iget-object v1, p0, Lmdm/RootGate$1;->val$main:Landroid/os/Handler;

    new-instance v2, Lmdm/RootGate$1$1;

    invoke-direct {v2, p0, v0}, Lmdm/RootGate$1$1;-><init>(Lmdm/RootGate$1;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    return-void
.end method
