.class final Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForTap;
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
    name = "CheckForTap"
.end annotation


# instance fields
.field target:Landroid/view/View;

.field final synthetic this$0:Lcodetail/graphics/drawables/DrawableHotspotTouch;

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Lcodetail/graphics/drawables/DrawableHotspotTouch;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForTap;->this$0:Lcodetail/graphics/drawables/DrawableHotspotTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForTap;->target:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForTap;->this$0:Lcodetail/graphics/drawables/DrawableHotspotTouch;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcodetail/graphics/drawables/DrawableHotspotTouch;->access$302(Lcodetail/graphics/drawables/DrawableHotspotTouch;Z)Z

    iget-object v0, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForTap;->this$0:Lcodetail/graphics/drawables/DrawableHotspotTouch;

    iget-object v2, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForTap;->target:Landroid/view/View;

    iget v3, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForTap;->x:F

    iget v4, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForTap;->y:F

    invoke-static {v0, v2, v1, v3, v4}, Lcodetail/graphics/drawables/DrawableHotspotTouch;->access$400(Lcodetail/graphics/drawables/DrawableHotspotTouch;Landroid/view/View;ZFF)V

    iget-object v0, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForTap;->this$0:Lcodetail/graphics/drawables/DrawableHotspotTouch;

    iget-object v1, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForTap;->target:Landroid/view/View;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcodetail/graphics/drawables/DrawableHotspotTouch;->access$500(Lcodetail/graphics/drawables/DrawableHotspotTouch;Landroid/view/View;I)V

    return-void
.end method
