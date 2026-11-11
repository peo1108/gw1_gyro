.class Lcom/gamwing/security/ui/GamwingSoftwareModeUi$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/gamwing/security/ui/GamwingSoftwareModeUi$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/gamwing/security/ui/GamwingSoftwareModeUi$1;->val$context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/gamwing/security/GamwingSoftwareModeStore;->setEnabled(Landroid/content/Context;Z)V

    invoke-static {p2}, Lcom/gamwing/security/ui/GamwingSoftwareModeUi;->applyToMainService(Z)V

    return-void
.end method
