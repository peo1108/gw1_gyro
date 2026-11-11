.class Lcodetail/graphics/drawables/Ripple$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcodetail/graphics/drawables/Ripple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcodetail/graphics/drawables/Ripple;


# direct methods
.method public constructor <init>(Lcodetail/graphics/drawables/Ripple;)V
    .locals 0

    iput-object p1, p0, Lcodetail/graphics/drawables/Ripple$1;->this$0:Lcodetail/graphics/drawables/Ripple;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcodetail/graphics/drawables/Ripple$1;->this$0:Lcodetail/graphics/drawables/Ripple;

    invoke-static {p1}, Lcodetail/graphics/drawables/Ripple;->access$100(Lcodetail/graphics/drawables/Ripple;)V

    return-void
.end method
