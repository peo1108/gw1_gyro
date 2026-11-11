.class Lmdm/ParamsSheet$9;
.super Ljava/lang/Object;
.source "ParamsSheet.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/ParamsSheet;->cell(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmdm/ParamsSheet;

.field final synthetic val$num:Landroid/widget/EditText;

.field final synthetic val$slot:I


# direct methods
.method constructor <init>(Lmdm/ParamsSheet;Landroid/widget/EditText;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 375
    iput-object p1, p0, Lmdm/ParamsSheet$9;->this$0:Lmdm/ParamsSheet;

    iput-object p2, p0, Lmdm/ParamsSheet$9;->val$num:Landroid/widget/EditText;

    iput p3, p0, Lmdm/ParamsSheet$9;->val$slot:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6

    .line 377
    if-nez p2, :cond_1d

    iget-object p1, p0, Lmdm/ParamsSheet$9;->val$num:Landroid/widget/EditText;

    iget-object p2, p0, Lmdm/ParamsSheet$9;->this$0:Lmdm/ParamsSheet;

    iget-object p2, p2, Lmdm/ParamsSheet;->work:Ljava/util/Map;

    iget-object v0, p0, Lmdm/ParamsSheet$9;->this$0:Lmdm/ParamsSheet;

    iget v0, v0, Lmdm/ParamsSheet;->weapon:I

    iget-object v1, p0, Lmdm/ParamsSheet$9;->this$0:Lmdm/ParamsSheet;

    iget v1, v1, Lmdm/ParamsSheet;->stance:I

    iget v2, p0, Lmdm/ParamsSheet$9;->val$slot:I

    invoke-static {p2, v0, v1, v2}, Lmdm/RcStore;->get(Ljava/util/Map;III)D

    move-result-wide v0

    invoke-static {v0, v1}, Lmdm/ParamsSheet;->fmt(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 378
    :cond_1d
    return-void
.end method
