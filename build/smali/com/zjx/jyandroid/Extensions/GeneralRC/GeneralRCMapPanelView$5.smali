.class Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView$5;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView$5;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;->mapPanelViewAdapter:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView$MapPanelViewAdapter;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView$MapPanelViewAdapter;->onAddFireRegionButtonClicked(Landroid/widget/Button;)V

    :cond_0
    return-void
.end method
