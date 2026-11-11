.class Lorg/opencv/android/JavaCamera2View$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/opencv/android/JavaCamera2View;->createCameraPreviewSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/opencv/android/JavaCamera2View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/opencv/android/JavaCamera2View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lorg/opencv/android/JavaCamera2View$2;->this$0:Lorg/opencv/android/JavaCamera2View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 2

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    new-instance v0, Lorg/opencv/android/JavaCamera2View$JavaCamera2Frame;

    iget-object v1, p0, Lorg/opencv/android/JavaCamera2View$2;->this$0:Lorg/opencv/android/JavaCamera2View;

    invoke-direct {v0, v1, p1}, Lorg/opencv/android/JavaCamera2View$JavaCamera2Frame;-><init>(Lorg/opencv/android/JavaCamera2View;Landroid/media/Image;)V

    iget-object v1, p0, Lorg/opencv/android/JavaCamera2View$2;->this$0:Lorg/opencv/android/JavaCamera2View;

    invoke-virtual {v1, v0}, Lorg/opencv/android/CameraBridgeViewBase;->deliverAndDrawFrame(Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewFrame;)V

    invoke-virtual {v0}, Lorg/opencv/android/JavaCamera2View$JavaCamera2Frame;->release()V

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void
.end method
