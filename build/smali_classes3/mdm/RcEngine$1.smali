.class Lmdm/RcEngine$1;
.super Ljava/lang/Object;
.source "RcEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/RcEngine;->reloadIfRunning(Ljava/lang/Object;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$b0:Ljava/lang/reflect/Method;

.field final synthetic val$ext:Ljava/lang/Object;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lmdm/RcEngine$1;->val$b0:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lmdm/RcEngine$1;->val$ext:Ljava/lang/Object;

    iput-object p3, p0, Lmdm/RcEngine$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 75
    :try_start_0
    iget-object v0, p0, Lmdm/RcEngine$1;->val$b0:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lmdm/RcEngine$1;->val$ext:Ljava/lang/Object;

    iget-object v2, p0, Lmdm/RcEngine$1;->val$path:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    goto :goto_f

    :catchall_e
    move-exception v0

    .line 76
    :goto_f
    return-void
.end method
