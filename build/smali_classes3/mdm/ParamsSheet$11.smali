.class Lmdm/ParamsSheet$11;
.super Ljava/lang/Object;
.source "ParamsSheet.java"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$UpdateKeymapCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/ParamsSheet;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmdm/ParamsSheet;


# direct methods
.method constructor <init>(Lmdm/ParamsSheet;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 453
    iput-object p1, p0, Lmdm/ParamsSheet$11;->this$0:Lmdm/ParamsSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;)V
    .registers 4

    .line 455
    iget-object v0, p0, Lmdm/ParamsSheet$11;->this$0:Lmdm/ParamsSheet;

    iget-object v0, v0, Lmdm/ParamsSheet;->main:Landroid/os/Handler;

    new-instance v1, Lmdm/ParamsSheet$11$1;

    invoke-direct {v1, p0, p1}, Lmdm/ParamsSheet$11$1;-><init>(Lmdm/ParamsSheet$11;Lcom/zjx/jyandroid/base/MError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 468
    return-void
.end method
