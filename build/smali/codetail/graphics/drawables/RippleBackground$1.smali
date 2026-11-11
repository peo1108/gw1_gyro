.class Lcodetail/graphics/drawables/RippleBackground$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcodetail/graphics/drawables/RippleBackground;->exitSoftware(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcodetail/graphics/drawables/RippleBackground;

.field final synthetic val$outerDuration:I


# direct methods
.method public constructor <init>(Lcodetail/graphics/drawables/RippleBackground;I)V
    .locals 0

    iput-object p1, p0, Lcodetail/graphics/drawables/RippleBackground$1;->this$0:Lcodetail/graphics/drawables/RippleBackground;

    iput p2, p0, Lcodetail/graphics/drawables/RippleBackground$1;->val$outerDuration:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcodetail/graphics/drawables/RippleBackground$1;->this$0:Lcodetail/graphics/drawables/RippleBackground;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "outerOpacity"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget v0, p0, Lcodetail/graphics/drawables/RippleBackground$1;->val$outerDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcodetail/graphics/drawables/RippleBackground;->access$000()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleBackground$1;->this$0:Lcodetail/graphics/drawables/RippleBackground;

    invoke-static {v0, p1}, Lcodetail/graphics/drawables/RippleBackground;->access$102(Lcodetail/graphics/drawables/RippleBackground;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    invoke-static {p1}, Lcodetail/graphics/drawables/AnimatorsCompat;->startWithAutoCancel(Landroid/animation/ObjectAnimator;)V

    return-void
.end method
