.class public Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c;

.field public final synthetic b:Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    new-instance p1, Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {p1}, Lcom/zjx/jyandroid/Extensions/pubg/f;-><init>()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->V(Ljava/lang/String;)V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object p1

    const-class v0, Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->V()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->i:Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView;->a(Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView;)V

    return-void
.end method
