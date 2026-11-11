.class Lcom/zjx/jyandroid/base/Components/LineGraphView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/base/Components/LineGraphView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/base/Components/LineGraphView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/base/Components/LineGraphView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$1;->this$0:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$1;->this$0:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->clearSelectedPoints()V

    return-void
.end method
