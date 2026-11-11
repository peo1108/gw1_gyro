.class public final synthetic Lcom/addisonelliott/segmentedbutton/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addisonelliott/segmentedbutton/SegmentedButton$OnVisibilityChangedListener;


# instance fields
.field public final synthetic a:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/a;->a:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    return-void
.end method


# virtual methods
.method public final onVisibilityChanged(Lcom/addisonelliott/segmentedbutton/SegmentedButton;I)V
    .locals 1

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/a;->a:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    invoke-static {v0, p1, p2}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->a(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;Lcom/addisonelliott/segmentedbutton/SegmentedButton;I)V

    return-void
.end method
