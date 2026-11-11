.class Lmdm/DeviceInfoView$1;
.super Ljava/lang/Object;
.source "DeviceInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmdm/DeviceInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmdm/DeviceInfoView;


# direct methods
.method constructor <init>(Lmdm/DeviceInfoView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lmdm/DeviceInfoView$1;->this$0:Lmdm/DeviceInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 19
    iget-object v0, p0, Lmdm/DeviceInfoView$1;->this$0:Lmdm/DeviceInfoView;

    invoke-virtual {v0}, Lmdm/DeviceInfoView;->fill()V

    .line 20
    iget-object v0, p0, Lmdm/DeviceInfoView$1;->this$0:Lmdm/DeviceInfoView;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Lmdm/DeviceInfoView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
