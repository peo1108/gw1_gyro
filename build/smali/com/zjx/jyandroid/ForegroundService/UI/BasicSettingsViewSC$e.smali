.class public Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ly/d;

.field public final synthetic b:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;Ly/d;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC$e;->b:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC$e;->a:Ly/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;F)F
    .locals 0

    float-to-int p1, p2

    iget-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC$e;->a:Ly/d;

    invoke-virtual {p2, p1}, Ly/d;->v(I)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->updateComponentIndicatorStyle()V

    int-to-float p1, p1

    return p1
.end method
