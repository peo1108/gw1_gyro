.class Lmdm/CamNavBar$6;
.super Ljava/lang/Object;
.source "CamNavBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/CamNavBar;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmdm/CamNavBar;


# direct methods
.method constructor <init>(Lmdm/CamNavBar;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lmdm/CamNavBar$6;->this$0:Lmdm/CamNavBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 189
    iget-object v0, p0, Lmdm/CamNavBar$6;->this$0:Lmdm/CamNavBar;

    invoke-static {v0}, Lmdm/CamNavBar;->access$400(Lmdm/CamNavBar;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_3e

    .line 192
    :cond_9
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getItemActiveIndex"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_3e

    .line 193
    iget-object v1, p0, Lmdm/CamNavBar$6;->this$0:Lmdm/CamNavBar;

    invoke-virtual {v1}, Lmdm/CamNavBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3e

    .line 194
    iget-object v1, p0, Lmdm/CamNavBar$6;->this$0:Lmdm/CamNavBar;

    invoke-static {v1, v0}, Lmdm/CamNavBar;->access$502(Lmdm/CamNavBar;I)I

    .line 195
    iget-object v0, p0, Lmdm/CamNavBar$6;->this$0:Lmdm/CamNavBar;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lmdm/CamNavBar;->access$202(Lmdm/CamNavBar;F)F

    .line 196
    iget-object v0, p0, Lmdm/CamNavBar$6;->this$0:Lmdm/CamNavBar;

    invoke-static {v0}, Lmdm/CamNavBar;->access$600(Lmdm/CamNavBar;)V

    .line 197
    iget-object v0, p0, Lmdm/CamNavBar$6;->this$0:Lmdm/CamNavBar;

    invoke-virtual {v0}, Lmdm/CamNavBar;->invalidate()V
    :try_end_3e
    .catchall {:try_start_9 .. :try_end_3e} :catchall_3e

    :catchall_3e
    :cond_3e
    :goto_3e
    return-void
.end method
