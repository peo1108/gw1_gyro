.class public Lcom/zjx/jyandroid/MainApp/OTAActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/MainApp/OTAActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/MainApp/OTAActivity;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/OTAActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$f;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$f;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
