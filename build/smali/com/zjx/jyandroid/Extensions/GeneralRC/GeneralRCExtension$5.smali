.class Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->loadPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field lastClickTime:J

.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$5;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$5;->lastClickTime:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$5;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2bc

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$5;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->loadAdjustRCValuePanel()V

    :cond_0
    iput-wide v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$5;->lastClickTime:J

    return-void
.end method
