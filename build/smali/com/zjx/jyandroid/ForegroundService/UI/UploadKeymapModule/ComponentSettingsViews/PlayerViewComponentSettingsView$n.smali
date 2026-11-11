.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/PlayerViewComponentSettingsView$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/PlayerViewComponentSettingsView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/PlayerViewComponentSettingsView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/PlayerViewComponentSettingsView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/PlayerViewComponentSettingsView$n;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/PlayerViewComponentSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositionChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/PlayerViewComponentSettingsView$n;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/PlayerViewComponentSettingsView;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->component:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;->values()[Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;

    move-result-object v1

    aget-object p1, v1, p1

    iput-object p1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->n:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;

    return-void
.end method
