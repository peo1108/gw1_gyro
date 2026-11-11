.class public Lcom/zjx/jyandroid/MainApp/AddGameActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/MainApp/AddGameActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/MainApp/AddGameActivity;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/AddGameActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$a;->a:Lcom/zjx/jyandroid/MainApp/AddGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$a;->a:Lcom/zjx/jyandroid/MainApp/AddGameActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
