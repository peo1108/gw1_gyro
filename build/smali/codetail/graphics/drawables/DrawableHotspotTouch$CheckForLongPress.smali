.class final Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForLongPress;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcodetail/graphics/drawables/DrawableHotspotTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CheckForLongPress"
.end annotation


# instance fields
.field target:Landroid/view/View;

.field final synthetic this$0:Lcodetail/graphics/drawables/DrawableHotspotTouch;


# direct methods
.method private constructor <init>(Lcodetail/graphics/drawables/DrawableHotspotTouch;Landroid/view/View;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForLongPress;->this$0:Lcodetail/graphics/drawables/DrawableHotspotTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForLongPress;->target:Landroid/view/View;

    return-void
.end method

.method public synthetic constructor <init>(Lcodetail/graphics/drawables/DrawableHotspotTouch;Landroid/view/View;Lcodetail/graphics/drawables/DrawableHotspotTouch$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForLongPress;-><init>(Lcodetail/graphics/drawables/DrawableHotspotTouch;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForLongPress;->target:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForLongPress;->target:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForLongPress;->target:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForLongPress;->this$0:Lcodetail/graphics/drawables/DrawableHotspotTouch;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcodetail/graphics/drawables/DrawableHotspotTouch;->access$602(Lcodetail/graphics/drawables/DrawableHotspotTouch;Z)Z

    :cond_0
    return-void
.end method
