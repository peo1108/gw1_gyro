.class Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Interfaces/OnFrameChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameChanged(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->syncPlaces()V

    :cond_0
    return-void
.end method
