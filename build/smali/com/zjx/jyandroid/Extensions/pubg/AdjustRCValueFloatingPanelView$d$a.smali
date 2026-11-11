.class public Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d;->b:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
