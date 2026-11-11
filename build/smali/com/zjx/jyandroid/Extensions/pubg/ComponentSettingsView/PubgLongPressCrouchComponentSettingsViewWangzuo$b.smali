.class public Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/PubgLongPressCrouchComponentSettingsViewWangzuo$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/PubgLongPressCrouchComponentSettingsViewWangzuo;->setComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/PubgLongPressCrouchComponentSettingsViewWangzuo;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/PubgLongPressCrouchComponentSettingsViewWangzuo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/PubgLongPressCrouchComponentSettingsViewWangzuo$b;->a:Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/PubgLongPressCrouchComponentSettingsViewWangzuo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindingKeysHasChanged(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/PubgLongPressCrouchComponentSettingsViewWangzuo$b;->a:Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/PubgLongPressCrouchComponentSettingsViewWangzuo;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/PubgLongPressCrouchComponentSettingsViewWangzuo;->a:Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;->setOriginKeyArray(Ljava/util/List;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/PubgLongPressCrouchComponentSettingsViewWangzuo$b;->a:Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/PubgLongPressCrouchComponentSettingsViewWangzuo;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/PubgLongPressCrouchComponentSettingsViewWangzuo;->a:Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;->updateText()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/PubgLongPressCrouchComponentSettingsViewWangzuo$b;->a:Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/PubgLongPressCrouchComponentSettingsViewWangzuo;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/PubgLongPressCrouchComponentSettingsViewWangzuo;->a:Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;

    iget-object p1, p1, Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;->changeKeyButton:Landroid/widget/Button;

    sget p2, Lcom/zjx/jyandroid/R$string;->modify:I

    invoke-static {p2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
