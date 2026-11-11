.class public Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/f;

.field public final synthetic b:Lcom/zjx/jyandroid/Extensions/pubg/d;

.field public final synthetic c:Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/pubg/f;Lcom/zjx/jyandroid/Extensions/pubg/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$r;->c:Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$r;->a:Lcom/zjx/jyandroid/Extensions/pubg/f;

    iput-object p3, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$r;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;F)F
    .locals 1

    float-to-int p1, p2

    int-to-float p1, p1

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$r;->a:Lcom/zjx/jyandroid/Extensions/pubg/f;

    float-to-int v0, p1

    invoke-virtual {p2, v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->U(I)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$r;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {p2}, Lcom/zjx/jyandroid/Extensions/pubg/d;->N()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$r;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {p2}, Lcom/zjx/jyandroid/Extensions/pubg/d;->M()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$r;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {p2}, Lcom/zjx/jyandroid/Extensions/pubg/d;->T()V

    :cond_0
    return p1
.end method
