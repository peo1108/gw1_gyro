.class public final Lme/ibrahimsn/lib/NavigationComponentHelper$Companion$setupWithNavController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lme/ibrahimsn/lib/OnItemSelectedListener;


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


# direct methods
.method public constructor <init>(Landroid/view/Menu;Landroidx/navigation/NavController;)V
    .locals 0

    iput-object p1, p0, Lme/ibrahimsn/lib/NavigationComponentHelper$Companion$setupWithNavController$1;->$menu:Landroid/view/Menu;

    iput-object p2, p0, Lme/ibrahimsn/lib/NavigationComponentHelper$Companion$setupWithNavController$1;->$navController:Landroidx/navigation/NavController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelect(I)Z
    .locals 1

    iget-object v0, p0, Lme/ibrahimsn/lib/NavigationComponentHelper$Companion$setupWithNavController$1;->$menu:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lme/ibrahimsn/lib/NavigationComponentHelper$Companion$setupWithNavController$1;->$navController:Landroidx/navigation/NavController;

    invoke-static {p1, v0}, Landroidx/navigation/ui/NavigationUI;->onNavDestinationSelected(Landroid/view/MenuItem;Landroidx/navigation/NavController;)Z

    move-result p1

    return p1
.end method
