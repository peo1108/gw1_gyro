.class public Lcom/zjx/jyandroid/MainApp/MainActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lme/ibrahimsn/lib/OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/MainApp/MainActivity;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/MainApp/MainActivity;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainActivity$b;->a:Lcom/zjx/jyandroid/MainApp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelect(I)Z
    .locals 1

    invoke-static {p1}, Lcom/zjx/jyandroid/MainApp/MainActivity;->e(I)I

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainActivity$b;->a:Lcom/zjx/jyandroid/MainApp/MainActivity;

    invoke-static {v0}, Lcom/zjx/jyandroid/MainApp/MainActivity;->f(Lcom/zjx/jyandroid/MainApp/MainActivity;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    const/4 p1, 0x1

    return p1
.end method
