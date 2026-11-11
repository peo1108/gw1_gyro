.class public final Lcom/zjx/gw2lic/JoystickRandomStepClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final delta:I

.field public final seekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;I)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/gw2lic/JoystickRandomStepClickListener;->seekBar:Landroid/widget/SeekBar;

    iput p2, p0, Lcom/zjx/gw2lic/JoystickRandomStepClickListener;->delta:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/gw2lic/JoystickRandomStepClickListener;->seekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/zjx/gw2lic/JoystickRandomStepClickListener;->delta:I

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/zjx/gw2lic/JoystickRandomBinder;->clamp(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method
