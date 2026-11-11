.class public Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;

.field public final synthetic c:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

.field public final synthetic d:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d;Ljava/util/Map;Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;Lcom/zjx/jyandroid/Extensions/pubg/g$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->d:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;

    iput-object p4, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->c:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->a:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "crouch"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->b:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "prone"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->c:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "compensatorMuzzle"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->d:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "flashHidderMuzzle"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->l:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "generalStock"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->h:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "halfGrip"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->g:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "horizontalGrip"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->k:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "laserGrip"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->i:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "lightGrip"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->e:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "suppressorMuzzle"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->j:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "thumbGrip"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->f:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "verticalGrip"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->c:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->n:Lcom/zjx/jyandroid/Extensions/pubg/g$d;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/g$d;->f()V

    :try_start_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->c:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->n:Lcom/zjx/jyandroid/Extensions/pubg/g$d;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/g$d;->c()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;->d:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->U()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->save_success:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->b:Lcom/zjx/jyandroid/base/util/ToastView$a;

    const-wide/16 v2, 0x3e8

    invoke-direct {p1, v0, v2, v3, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;JLcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error flushing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->write_file_failed:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    :goto_2
    return-void
.end method
