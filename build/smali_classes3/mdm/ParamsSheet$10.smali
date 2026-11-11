.class Lmdm/ParamsSheet$10;
.super Ljava/lang/Object;
.source "ParamsSheet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/ParamsSheet;->step(Ljava/lang/String;Landroid/widget/EditText;II)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmdm/ParamsSheet;

.field final synthetic val$delta:I

.field final synthetic val$num:Landroid/widget/EditText;

.field final synthetic val$slot:I


# direct methods
.method constructor <init>(Lmdm/ParamsSheet;IILandroid/widget/EditText;)V
    .registers 5
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

    .line 411
    iput-object p1, p0, Lmdm/ParamsSheet$10;->this$0:Lmdm/ParamsSheet;

    iput p2, p0, Lmdm/ParamsSheet$10;->val$slot:I

    iput p3, p0, Lmdm/ParamsSheet$10;->val$delta:I

    iput-object p4, p0, Lmdm/ParamsSheet$10;->val$num:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 413
    iget-object p1, p0, Lmdm/ParamsSheet$10;->this$0:Lmdm/ParamsSheet;

    iget-object p1, p1, Lmdm/ParamsSheet;->work:Ljava/util/Map;

    iget-object v0, p0, Lmdm/ParamsSheet$10;->this$0:Lmdm/ParamsSheet;

    iget v0, v0, Lmdm/ParamsSheet;->weapon:I

    iget-object v1, p0, Lmdm/ParamsSheet$10;->this$0:Lmdm/ParamsSheet;

    iget v1, v1, Lmdm/ParamsSheet;->stance:I

    iget v2, p0, Lmdm/ParamsSheet$10;->val$slot:I

    invoke-static {p1, v0, v1, v2}, Lmdm/RcStore;->get(Ljava/util/Map;III)D

    move-result-wide v0

    .line 414
    iget-object p1, p0, Lmdm/ParamsSheet$10;->this$0:Lmdm/ParamsSheet;

    iget v2, p0, Lmdm/ParamsSheet$10;->val$slot:I

    iget v3, p0, Lmdm/ParamsSheet$10;->val$delta:I

    int-to-double v3, v3

    add-double/2addr v0, v3

    invoke-virtual {p1, v2, v0, v1}, Lmdm/ParamsSheet;->write(ID)V

    .line 415
    iget-object p1, p0, Lmdm/ParamsSheet$10;->val$num:Landroid/widget/EditText;

    iget-object v0, p0, Lmdm/ParamsSheet$10;->this$0:Lmdm/ParamsSheet;

    iget-object v0, v0, Lmdm/ParamsSheet;->work:Ljava/util/Map;

    iget-object v1, p0, Lmdm/ParamsSheet$10;->this$0:Lmdm/ParamsSheet;

    iget v1, v1, Lmdm/ParamsSheet;->weapon:I

    iget-object v2, p0, Lmdm/ParamsSheet$10;->this$0:Lmdm/ParamsSheet;

    iget v2, v2, Lmdm/ParamsSheet;->stance:I

    iget v3, p0, Lmdm/ParamsSheet$10;->val$slot:I

    invoke-static {v0, v1, v2, v3}, Lmdm/RcStore;->get(Ljava/util/Map;III)D

    move-result-wide v0

    invoke-static {v0, v1}, Lmdm/ParamsSheet;->fmt(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 416
    return-void
.end method
