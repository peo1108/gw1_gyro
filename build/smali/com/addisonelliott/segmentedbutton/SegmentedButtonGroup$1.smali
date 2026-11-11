.class Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setPosition(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

.field final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;I)V
    .locals 0

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$1;->this$0:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    iput p2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$1;->val$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$1;->this$0:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$1;->val$position:I

    invoke-static {p1, v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->access$100(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;I)V

    return-void
.end method
