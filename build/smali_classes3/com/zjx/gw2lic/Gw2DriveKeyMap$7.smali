.class Lcom/zjx/gw2lic/Gw2DriveKeyMap$7;
.super Ljava/lang/Object;
.source "Gw2DriveKeyMap.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/gw2lic/Gw2DriveKeyMap;->showFallback(Landroid/content/Context;Landroid/view/WindowManager;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/view/WindowManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 428
    iput-object p1, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$7;->val$wm:Landroid/view/WindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 429
    iget-object p1, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$7;->val$wm:Landroid/view/WindowManager;

    invoke-static {p1}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->access$700(Landroid/view/WindowManager;)V

    return-void
.end method
