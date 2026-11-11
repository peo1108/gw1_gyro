.class public Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/AdjustRCValueComponentSettingsView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/AdjustRCValueComponentSettingsView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/AdjustRCValueComponentSettingsView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/AdjustRCValueComponentSettingsView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/AdjustRCValueComponentSettingsView$b;->a:Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/AdjustRCValueComponentSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/AdjustRCValueComponentSettingsView$b;->a:Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/AdjustRCValueComponentSettingsView;

    sget v0, Lcom/zjx/jyandroid/R$string;->help:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/zjx/jyandroid/R$string;->adjust_rc_value_settings__help1:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/R$string;->ok:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/AdjustRCValueComponentSettingsView;->d(Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/AdjustRCValueComponentSettingsView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
