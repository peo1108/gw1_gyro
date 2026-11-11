.class public Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$j;->a:Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$j;->a:Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b$f;->t(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method
