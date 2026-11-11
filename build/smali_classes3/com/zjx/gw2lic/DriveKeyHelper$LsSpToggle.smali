.class Lcom/zjx/gw2lic/DriveKeyHelper$LsSpToggle;
.super Ljava/lang/Object;
.source "DriveKeyHelper.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zjx/gw2lic/DriveKeyHelper$LsSpToggle;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zjx/gw2lic/DriveKeyHelper$LsSpToggle;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    iget-object v0, p0, Lcom/zjx/gw2lic/DriveKeyHelper$LsSpToggle;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->setLsSp(Landroid/content/Context;Z)V

    if-eqz p2, :cond_0

    sget-boolean v0, LD6/c;->swapEnabled:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    iget-object v0, p0, Lcom/zjx/gw2lic/DriveKeyHelper$LsSpToggle;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    const-string v3, "=\u00b0\u0006\u00feb\u0008\u009b%\u009dH\u00fdyD"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
