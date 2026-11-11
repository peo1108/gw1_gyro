.class Lmdm/GyroStatusView$1;
.super Ljava/lang/Object;
.source "GyroStatusView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmdm/GyroStatusView;
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

    .line 29
    iput-object p1, p0, Lmdm/GyroStatusView$1;->this$0:Lmdm/GyroStatusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 33
    iget-object v2, p0, Lmdm/GyroStatusView$1;->this$0:Lmdm/GyroStatusView;

    invoke-static {v2}, Lmdm/GyroStatusView;->access$000(Lmdm/GyroStatusView;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_1d

    .line 34
    iget-object v2, p0, Lmdm/GyroStatusView$1;->this$0:Lmdm/GyroStatusView;

    invoke-static {v2, v0, v1}, Lmdm/GyroStatusView;->access$002(Lmdm/GyroStatusView;J)J

    .line 35
    iget-object v0, p0, Lmdm/GyroStatusView$1;->this$0:Lmdm/GyroStatusView;

    invoke-static {v0}, Lmdm/GyroStatusView;->access$100(Lmdm/GyroStatusView;)V

    .line 37
    :cond_1d
    iget-object v0, p0, Lmdm/GyroStatusView$1;->this$0:Lmdm/GyroStatusView;

    invoke-virtual {v0}, Lmdm/GyroStatusView;->update()V

    .line 38
    iget-object v0, p0, Lmdm/GyroStatusView$1;->this$0:Lmdm/GyroStatusView;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Lmdm/GyroStatusView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
