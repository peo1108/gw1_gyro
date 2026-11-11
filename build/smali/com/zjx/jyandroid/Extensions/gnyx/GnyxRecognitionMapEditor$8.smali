.class Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$8;
.super Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->loadPresetMapsSelectionView()V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$8;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$c;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldImportByShareCode(Ljava/lang/String;Landroid/widget/Button;)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "\u5bfc\u5165\u4e2d"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->J()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$8$1;

    invoke-direct {v1, p0, p2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$8$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$8;Landroid/widget/Button;)V

    invoke-virtual {v0, p1, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->m(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetConfigByShareCodeCompletionHandler;)V

    return-void
.end method
