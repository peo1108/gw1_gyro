.class Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$9;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$9;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->pubgMapPanelViewAdapter:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$MapPanelViewAdapter;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$MapPanelViewAdapter;->onUpButtonClicked(Landroid/widget/Button;)V

    :cond_0
    return-void
.end method
