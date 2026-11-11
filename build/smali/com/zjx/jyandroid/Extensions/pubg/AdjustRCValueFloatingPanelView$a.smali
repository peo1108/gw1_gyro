.class public Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/CustomViews/NavigationView$ViewStackOnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public viewStackChanged(Ljava/util/Stack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x190

    invoke-static {v0}, Lmdm/TabletScale;->dpx(I)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v0, 0xb4

    invoke-static {v0}, Lmdm/TabletScale;->dpx(I)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->updateWindowParams(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueBaseView;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0xc8

    invoke-static {v0}, Lmdm/TabletScale;->dpx(I)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v0, 0x64

    invoke-static {v0}, Lmdm/TabletScale;->dpx(I)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->updateWindowParams(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method
