.class Lcom/zjx/gw2lic/DriveKeyHelper$LsSpEdit;
.super Ljava/lang/Object;
.source "DriveKeyHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zjx/gw2lic/DriveKeyHelper$LsSpEdit;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zjx/gw2lic/DriveKeyHelper$LsSpEdit;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/gw2lic/DriveKeyHelper$LsSpEdit;->b:Landroid/view/View;

    instance-of v1, v0, Lu7/a;

    if-eqz v1, :cond_0

    check-cast v0, Lu7/a;

    invoke-virtual {v0}, Lu7/a;->getMapEditor()Lp7/a;

    move-result-object v0

    invoke-static {v0}, Lgw2/DriveKeyEditor;->openLsSp(Lp7/a;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zjx/gw2lic/DriveKeyHelper$LsSpEdit;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/zjx/gw2lic/DriveKeyHelper$LsSpEdit;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->open(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
