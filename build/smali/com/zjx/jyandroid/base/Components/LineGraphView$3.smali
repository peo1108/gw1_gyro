.class Lcom/zjx/jyandroid/base/Components/LineGraphView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/base/Components/LineGraphView;->onAttachedToWindow()V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$3;->this$0:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$3;->this$0:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-static {v0}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->access$700(Lcom/zjx/jyandroid/base/Components/LineGraphView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->access$800(Lcom/zjx/jyandroid/base/Components/LineGraphView;Ljava/util/List;)V

    return-void
.end method
