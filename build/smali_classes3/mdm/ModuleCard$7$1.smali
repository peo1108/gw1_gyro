.class Lmdm/ModuleCard$7$1;
.super Ljava/lang/Object;
.source "ModuleCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/ModuleCard$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmdm/ModuleCard$7;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lmdm/ModuleCard$7;I)V
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

    .line 357
    iput-object p1, p0, Lmdm/ModuleCard$7$1;->this$1:Lmdm/ModuleCard$7;

    iput p2, p0, Lmdm/ModuleCard$7$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 359
    iget-object v0, p0, Lmdm/ModuleCard$7$1;->this$1:Lmdm/ModuleCard$7;

    iget-object v0, v0, Lmdm/ModuleCard$7;->this$0:Lmdm/ModuleCard;

    invoke-static {v0}, Lmdm/ModuleCard;->access$300(Lmdm/ModuleCard;)[Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lmdm/ModuleCard$7$1;->val$i:I

    aget-object v0, v0, v1

    const-string v1, "\u0110ang c\u00e0i\u2026"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
