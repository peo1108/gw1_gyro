.class Lmdm/ModuleCard$5;
.super Ljava/lang/Object;
.source "ModuleCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/ModuleCard;->modeSelector()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmdm/ModuleCard;


# direct methods
.method constructor <init>(Lmdm/ModuleCard;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lmdm/ModuleCard$5;->this$0:Lmdm/ModuleCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 174
    iget-object p1, p0, Lmdm/ModuleCard$5;->this$0:Lmdm/ModuleCard;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmdm/ModuleCard;->access$100(Lmdm/ModuleCard;Z)V

    return-void
.end method
