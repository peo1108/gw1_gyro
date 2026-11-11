.class public Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$p;
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
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$p;->a:Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;F)F
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$p;->a:Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->f(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;Z)Z

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$p;->a:Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->a(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;Z)Z

    float-to-int p1, p2

    int-to-float p1, p1

    return p1
.end method
