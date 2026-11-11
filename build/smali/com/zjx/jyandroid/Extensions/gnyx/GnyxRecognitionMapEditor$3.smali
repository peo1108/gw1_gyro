.class Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;F)F
    .locals 1

    float-to-int p1, p2

    int-to-float p1, p1

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    float-to-int v0, p1

    invoke-virtual {p2, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->setAccessoryComponentsSize(I)V

    return p1
.end method
