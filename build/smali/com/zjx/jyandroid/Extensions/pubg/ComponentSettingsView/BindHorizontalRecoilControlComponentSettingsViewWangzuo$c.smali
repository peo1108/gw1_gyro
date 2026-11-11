.class public Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewWangzuo$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewWangzuo;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewWangzuo;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewWangzuo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewWangzuo$c;->a:Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewWangzuo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositionChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewWangzuo$c;->a:Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewWangzuo;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewWangzuo;->e(Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewWangzuo;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/h;

    invoke-static {}, Lf/c$a;->values()[Lf/c$a;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/h;->setEnableType(Lf/c$a;)V

    return-void
.end method
