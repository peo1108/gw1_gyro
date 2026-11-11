.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/NormalTouchPointComponentSettingsView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/NormalTouchPointComponentSettingsView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/NormalTouchPointComponentSettingsView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/NormalTouchPointComponentSettingsView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/NormalTouchPointComponentSettingsView$e;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/NormalTouchPointComponentSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositionChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/NormalTouchPointComponentSettingsView$e;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/NormalTouchPointComponentSettingsView;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->component:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;

    iget-object v1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->a:Lr/X$a;

    invoke-static {}, Lr/X$a;->values()[Lr/X$a;

    move-result-object v1

    array-length v1, v1

    if-lt p1, v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lr/H$b;->values()[Lr/H$b;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->setMouseDisplayTriggerType(Lr/H$b;)V

    return-void
.end method
