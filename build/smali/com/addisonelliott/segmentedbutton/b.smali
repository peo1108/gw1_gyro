.class public final synthetic Lcom/addisonelliott/segmentedbutton/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/b;->a:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    iput-object p2, p0, Lcom/addisonelliott/segmentedbutton/b;->b:Ljava/util/List;

    iput-boolean p3, p0, Lcom/addisonelliott/segmentedbutton/b;->c:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/b;->a:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/b;->b:Ljava/util/List;

    iget-boolean v2, p0, Lcom/addisonelliott/segmentedbutton/b;->c:Z

    invoke-static {v0, v1, v2, p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->b(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;Ljava/util/List;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method
