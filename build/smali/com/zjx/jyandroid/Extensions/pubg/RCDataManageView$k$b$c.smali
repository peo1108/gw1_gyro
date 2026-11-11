.class public Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;

.field public final synthetic b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;)V
    .locals 0
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c;->a:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c;->b(I)V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 0

    # MDM: share flow retired
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    # MDM: the parameter panel was removed. Configs are edited and saved by the app's own
    # settings screen; this button does nothing.
    return-void
.end method
