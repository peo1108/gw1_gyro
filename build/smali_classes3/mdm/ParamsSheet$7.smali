.class Lmdm/ParamsSheet$7;
.super Ljava/lang/Object;
.source "ParamsSheet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/ParamsSheet;->cellColumn()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmdm/ParamsSheet;

.field final synthetic val$st:I


# direct methods
.method constructor <init>(Lmdm/ParamsSheet;I)V
    .registers 3
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

    .line 297
    iput-object p1, p0, Lmdm/ParamsSheet$7;->this$0:Lmdm/ParamsSheet;

    iput p2, p0, Lmdm/ParamsSheet$7;->val$st:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 298
    iget-object p1, p0, Lmdm/ParamsSheet$7;->this$0:Lmdm/ParamsSheet;

    iget v0, p0, Lmdm/ParamsSheet$7;->val$st:I

    invoke-virtual {p1, v0}, Lmdm/ParamsSheet;->selectStance(I)V

    return-void
.end method
