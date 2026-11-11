.class public final Lme/ibrahimsn/lib/NavigationComponentHelper$Companion$setupWithNavController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/navigation/NavController$OnDestinationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/ibrahimsn/lib/NavigationComponentHelper$Companion;->setupWithNavController(Landroid/view/Menu;Lme/ibrahimsn/lib/SmoothBottomBar;Landroidx/navigation/NavController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $menu:Landroid/view/Menu;

.field final synthetic $navController:Landroidx/navigation/NavController;

.field final synthetic $smoothBottomBar:Lme/ibrahimsn/lib/SmoothBottomBar;

.field final synthetic $weakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Landroidx/navigation/NavController;Landroid/view/Menu;Lme/ibrahimsn/lib/SmoothBottomBar;)V
    .locals 0

    iput-object p1, p0, Lme/ibrahimsn/lib/NavigationComponentHelper$Companion$setupWithNavController$2;->$weakReference:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lme/ibrahimsn/lib/NavigationComponentHelper$Companion$setupWithNavController$2;->$navController:Landroidx/navigation/NavController;

    iput-object p3, p0, Lme/ibrahimsn/lib/NavigationComponentHelper$Companion$setupWithNavController$2;->$menu:Landroid/view/Menu;

    iput-object p4, p0, Lme/ibrahimsn/lib/NavigationComponentHelper$Companion$setupWithNavController$2;->$smoothBottomBar:Lme/ibrahimsn/lib/SmoothBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestinationChanged(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroidx/navigation/NavController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/navigation/NavDestination;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p3, "controller"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "destination"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lme/ibrahimsn/lib/NavigationComponentHelper$Companion$setupWithNavController$2;->$weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lme/ibrahimsn/lib/SmoothBottomBar;

    if-nez p1, :cond_0

    iget-object p1, p0, Lme/ibrahimsn/lib/NavigationComponentHelper$Companion$setupWithNavController$2;->$navController:Landroidx/navigation/NavController;

    invoke-virtual {p1, p0}, Landroidx/navigation/NavController;->removeOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V

    return-void

    :cond_0
    iget-object p1, p0, Lme/ibrahimsn/lib/NavigationComponentHelper$Companion$setupWithNavController$2;->$menu:Landroid/view/Menu;

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_2

    iget-object v0, p0, Lme/ibrahimsn/lib/NavigationComponentHelper$Companion$setupWithNavController$2;->$menu:Landroid/view/Menu;

    invoke-interface {v0, p3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget-object v1, Lme/ibrahimsn/lib/NavigationComponentHelper;->Companion:Lme/ibrahimsn/lib/NavigationComponentHelper$Companion;

    const-string v2, "menuItem"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lme/ibrahimsn/lib/NavigationComponentHelper$Companion;->matchDestination(Landroidx/navigation/NavDestination;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lme/ibrahimsn/lib/NavigationComponentHelper$Companion$setupWithNavController$2;->$smoothBottomBar:Lme/ibrahimsn/lib/SmoothBottomBar;

    invoke-virtual {v0, p3}, Lme/ibrahimsn/lib/SmoothBottomBar;->setItemActiveIndex(I)V

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
