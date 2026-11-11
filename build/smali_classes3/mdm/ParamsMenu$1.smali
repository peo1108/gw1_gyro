.class Lmdm/ParamsMenu$1;
.super Ljava/lang/Object;
.source "ParamsMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/ParamsMenu;->install(Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$ext:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lmdm/ParamsMenu$1;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Lmdm/ParamsMenu$1;->val$ext:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 62
    iget-object p1, p0, Lmdm/ParamsMenu$1;->val$ctx:Landroid/content/Context;

    iget-object v0, p0, Lmdm/ParamsMenu$1;->val$ext:Ljava/lang/Object;

    invoke-static {v0}, Lmdm/ParamsMenu;->keymapManager(Ljava/lang/Object;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object v0

    invoke-static {p1, v0}, Lmdm/ParamsSheet;->openSelected(Landroid/content/Context;Lcom/zjx/jyandroid/ForegroundService/KeymapManager;)V

    .line 63
    return-void
.end method
