.class final Lcodetail/graphics/drawables/DrawableHotspotTouch$UnsetPressedState;
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
    name = "UnsetPressedState"
.end annotation


# instance fields
.field target:Landroid/view/View;

.field final synthetic this$0:Lcodetail/graphics/drawables/DrawableHotspotTouch;


# direct methods
.method private constructor <init>(Lcodetail/graphics/drawables/DrawableHotspotTouch;Landroid/view/View;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch$UnsetPressedState;->this$0:Lcodetail/graphics/drawables/DrawableHotspotTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch$UnsetPressedState;->target:Landroid/view/View;

    return-void
.end method

.method public synthetic constructor <init>(Lcodetail/graphics/drawables/DrawableHotspotTouch;Landroid/view/View;Lcodetail/graphics/drawables/DrawableHotspotTouch$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcodetail/graphics/drawables/DrawableHotspotTouch$UnsetPressedState;-><init>(Lcodetail/graphics/drawables/DrawableHotspotTouch;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch$UnsetPressedState;->target:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method
