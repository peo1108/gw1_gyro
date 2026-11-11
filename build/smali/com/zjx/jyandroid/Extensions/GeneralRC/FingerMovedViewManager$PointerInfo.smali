.class public Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager$PointerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PointerInfo"
.end annotation


# instance fields
.field currentCoordinate:Lcom/zjx/jyandroid/base/FloatPoint;

.field generatedIndex:I

.field physicalCoordinate:Lcom/zjx/jyandroid/base/FloatPoint;

.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;Lcom/zjx/jyandroid/base/FloatPoint;Lcom/zjx/jyandroid/base/FloatPoint;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager$PointerInfo;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager$PointerInfo;->currentCoordinate:Lcom/zjx/jyandroid/base/FloatPoint;

    iput-object p3, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager$PointerInfo;->physicalCoordinate:Lcom/zjx/jyandroid/base/FloatPoint;

    iput p4, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager$PointerInfo;->generatedIndex:I

    return-void
.end method
