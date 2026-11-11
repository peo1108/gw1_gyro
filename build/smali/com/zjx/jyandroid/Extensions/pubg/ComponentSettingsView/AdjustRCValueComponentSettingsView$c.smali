.class public Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/AdjustRCValueComponentSettingsView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/AdjustRCValueComponentSettingsView;->updateViewByComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li/a;

.field public final synthetic b:Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/AdjustRCValueComponentSettingsView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/AdjustRCValueComponentSettingsView;Li/a;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/AdjustRCValueComponentSettingsView$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/AdjustRCValueComponentSettingsView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/AdjustRCValueComponentSettingsView$c;->a:Li/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;F)F
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/AdjustRCValueComponentSettingsView$c;->a:Li/a;

    float-to-int v0, p2

    invoke-virtual {p1, v0}, Li/a;->setValue(I)V

    return p2
.end method
