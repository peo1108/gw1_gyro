.class Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OutlineProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;


# direct methods
.method private constructor <init>(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OutlineProvider;->this$0:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OutlineProvider;-><init>(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;)V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OutlineProvider;->this$0:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    invoke-static {p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->access$200(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;)I

    move-result p1

    int-to-float v5, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
