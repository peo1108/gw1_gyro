.class final Lcom/zjx/gw2lic/AutoRandomizer$StepClick;
.super Ljava/lang/Object;
.source "AutoRandomizer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/gw2lic/AutoRandomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StepClick"
.end annotation


# instance fields
.field private final seekBar:Landroid/widget/SeekBar;

.field private final step:I


# direct methods
.method constructor <init>(Landroid/widget/SeekBar;I)V
    .locals 0

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p1, p0, Lcom/zjx/gw2lic/AutoRandomizer$StepClick;->seekBar:Landroid/widget/SeekBar;

    .line 314
    iput p2, p0, Lcom/zjx/gw2lic/AutoRandomizer$StepClick;->step:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 319
    iget-object p1, p0, Lcom/zjx/gw2lic/AutoRandomizer$StepClick;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget v0, p0, Lcom/zjx/gw2lic/AutoRandomizer$StepClick;->step:I

    add-int/2addr p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v0, 0x1e

    if-le p1, v0, :cond_1

    move p1, v0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/zjx/gw2lic/AutoRandomizer$StepClick;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
