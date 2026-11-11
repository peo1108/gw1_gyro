.class public final Lcom/zjx/gw2lic/JoystickRandomSliderListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final label:Landroid/widget/TextView;

.field public final prefKey:Ljava/lang/String;

.field public final slot:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/gw2lic/JoystickRandomSliderListener;->label:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zjx/gw2lic/JoystickRandomSliderListener;->prefKey:Ljava/lang/String;

    iput p3, p0, Lcom/zjx/gw2lic/JoystickRandomSliderListener;->slot:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    iget v0, p0, Lcom/zjx/gw2lic/JoystickRandomSliderListener;->slot:I

    invoke-static {v0, p2}, Lcom/zjx/gw2lic/AutoRandomizer;->onProgressChange(II)V

    invoke-static {p2}, Lcom/zjx/gw2lic/JoystickRandomBinder;->clamp(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "=\u00a6Y\u00d6g\u0015\u008f\n\u00b2]\u00f9o\u0005"

    invoke-static/range {p3 .. p3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p3, p0, Lcom/zjx/gw2lic/JoystickRandomSliderListener;->prefKey:Ljava/lang/String;

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object p1, p0, Lcom/zjx/gw2lic/JoystickRandomSliderListener;->label:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/zjx/gw2lic/JoystickRandomBinder;->updateLabel(Landroid/widget/TextView;I)V

    iget p1, p0, Lcom/zjx/gw2lic/JoystickRandomSliderListener;->slot:I

    invoke-static {p1, p2}, Lcom/zjx/gw2lic/JoystickRandomBinder;->applyRuntime(II)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
