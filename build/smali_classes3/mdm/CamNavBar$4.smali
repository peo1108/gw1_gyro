.class Lmdm/CamNavBar$4;
.super Ljava/lang/Object;
.source "CamNavBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/CamNavBar;->slideTo(I)V
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

    .line 159
    iput-object p1, p0, Lmdm/CamNavBar$4;->this$0:Lmdm/CamNavBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 162
    iget-object v0, p0, Lmdm/CamNavBar$4;->this$0:Lmdm/CamNavBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lmdm/CamNavBar;->access$202(Lmdm/CamNavBar;F)F

    .line 163
    iget-object p1, p0, Lmdm/CamNavBar$4;->this$0:Lmdm/CamNavBar;

    invoke-virtual {p1}, Lmdm/CamNavBar;->invalidate()V

    return-void
.end method
