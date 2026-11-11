.class Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4$1;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4$1;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->saveButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
