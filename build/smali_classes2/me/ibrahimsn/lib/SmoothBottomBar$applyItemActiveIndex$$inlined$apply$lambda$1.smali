.class final Lme/ibrahimsn/lib/SmoothBottomBar$applyItemActiveIndex$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/ibrahimsn/lib/SmoothBottomBar;->applyItemActiveIndex()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/ibrahimsn/lib/SmoothBottomBar;


# direct methods
.method public constructor <init>(Lme/ibrahimsn/lib/SmoothBottomBar;)V
    .locals 0

    iput-object p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar$applyItemActiveIndex$$inlined$apply$lambda$1;->this$0:Lme/ibrahimsn/lib/SmoothBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar$applyItemActiveIndex$$inlined$apply$lambda$1;->this$0:Lme/ibrahimsn/lib/SmoothBottomBar;

    const-string v1, "animation"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lme/ibrahimsn/lib/SmoothBottomBar;->access$setIndicatorLocation$p(Lme/ibrahimsn/lib/SmoothBottomBar;F)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
