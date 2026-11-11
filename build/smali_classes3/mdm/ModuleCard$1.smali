.class Lmdm/ModuleCard$1;
.super Ljava/lang/Object;
.source "ModuleCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/ModuleCard;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmdm/ModuleCard;

.field final synthetic val$idx:I


# direct methods
.method constructor <init>(Lmdm/ModuleCard;I)V
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

    .line 107
    iput-object p1, p0, Lmdm/ModuleCard$1;->this$0:Lmdm/ModuleCard;

    iput p2, p0, Lmdm/ModuleCard$1;->val$idx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 109
    iget-object p1, p0, Lmdm/ModuleCard$1;->this$0:Lmdm/ModuleCard;

    iget v0, p0, Lmdm/ModuleCard$1;->val$idx:I

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lmdm/ModuleCard;->install([I)V

    return-void
.end method
