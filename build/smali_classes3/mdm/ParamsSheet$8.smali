.class Lmdm/ParamsSheet$8;
.super Ljava/lang/Object;
.source "ParamsSheet.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
.method constructor <init>(Lmdm/ParamsSheet;ILandroid/widget/EditText;)V
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

    .line 373
    iput-object p1, p0, Lmdm/ParamsSheet$8;->this$0:Lmdm/ParamsSheet;

    iput p2, p0, Lmdm/ParamsSheet$8;->val$slot:I

    iput-object p3, p0, Lmdm/ParamsSheet$8;->val$num:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 8

    .line 377
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmdm/ParamsSheet;->parse(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    .line 378
    if-nez p1, :cond_b

    return-void

    .line 379
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lmdm/ParamsSheet$8;->this$0:Lmdm/ParamsSheet;

    iget-object v2, v2, Lmdm/ParamsSheet;->work:Ljava/util/Map;

    iget-object v3, p0, Lmdm/ParamsSheet$8;->this$0:Lmdm/ParamsSheet;

    iget v3, v3, Lmdm/ParamsSheet;->weapon:I

    iget-object v4, p0, Lmdm/ParamsSheet$8;->this$0:Lmdm/ParamsSheet;

    iget v4, v4, Lmdm/ParamsSheet;->stance:I

    iget v5, p0, Lmdm/ParamsSheet$8;->val$slot:I

    invoke-static {v2, v3, v4, v5}, Lmdm/RcStore;->get(Ljava/util/Map;III)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_30

    iget-object v0, p0, Lmdm/ParamsSheet$8;->this$0:Lmdm/ParamsSheet;

    iget v1, p0, Lmdm/ParamsSheet$8;->val$slot:I

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lmdm/ParamsSheet;->write(ID)V

    .line 380
    :cond_30
    iget-object v0, p0, Lmdm/ParamsSheet$8;->this$0:Lmdm/ParamsSheet;

    iget-object v0, v0, Lmdm/ParamsSheet;->work:Ljava/util/Map;

    iget-object v1, p0, Lmdm/ParamsSheet$8;->this$0:Lmdm/ParamsSheet;

    iget v1, v1, Lmdm/ParamsSheet;->weapon:I

    iget-object v2, p0, Lmdm/ParamsSheet$8;->this$0:Lmdm/ParamsSheet;

    iget v2, v2, Lmdm/ParamsSheet;->stance:I

    iget v3, p0, Lmdm/ParamsSheet$8;->val$slot:I

    invoke-static {v0, v1, v2, v3}, Lmdm/RcStore;->get(Ljava/util/Map;III)D

    move-result-wide v0

    .line 381
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_5c

    .line 383
    invoke-static {v0, v1}, Lmdm/RcStore;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 384
    iget-object v0, p0, Lmdm/ParamsSheet$8;->val$num:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v0, p0, Lmdm/ParamsSheet$8;->val$num:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 387
    :cond_5c
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 374
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 375
    return-void
.end method
