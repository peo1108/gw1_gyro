.class Lmdm/CamNavBar$2;
.super Ljava/lang/Object;
.source "CamNavBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/CamNavBar;->addTab(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmdm/CamNavBar;


# direct methods
.method constructor <init>(Lmdm/CamNavBar;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lmdm/CamNavBar$2;->this$0:Lmdm/CamNavBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 102
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lmdm/CamNavBar$2;->this$0:Lmdm/CamNavBar;

    const p2, 0x3f87ae14    # 1.06f

    invoke-static {p1, p2}, Lmdm/CamNavBar;->access$000(Lmdm/CamNavBar;F)V

    goto :goto_24

    .line 103
    :cond_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1d

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_24

    :cond_1d
    iget-object p1, p0, Lmdm/CamNavBar$2;->this$0:Lmdm/CamNavBar;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Lmdm/CamNavBar;->access$000(Lmdm/CamNavBar;F)V

    :cond_24
    :goto_24
    const/4 p1, 0x0

    return p1
.end method
