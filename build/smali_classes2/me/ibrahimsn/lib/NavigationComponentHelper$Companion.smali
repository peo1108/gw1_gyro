.class public final Lme/ibrahimsn/lib/NavigationComponentHelper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/ibrahimsn/lib/NavigationComponentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lme/ibrahimsn/lib/NavigationComponentHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final matchDestination(Landroidx/navigation/NavDestination;I)Z
    .locals 1
    .param p1    # Landroidx/navigation/NavDestination;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    if-eq v0, p2, :cond_0

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result p1

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final setupWithNavController(Landroid/view/Menu;Lme/ibrahimsn/lib/SmoothBottomBar;Landroidx/navigation/NavController;)V
    .locals 2
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lme/ibrahimsn/lib/SmoothBottomBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/navigation/NavController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smoothBottomBar"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lme/ibrahimsn/lib/NavigationComponentHelper$Companion$setupWithNavController$1;

    invoke-direct {v0, p1, p3}, Lme/ibrahimsn/lib/NavigationComponentHelper$Companion$setupWithNavController$1;-><init>(Landroid/view/Menu;Landroidx/navigation/NavController;)V

    invoke-virtual {p2, v0}, Lme/ibrahimsn/lib/SmoothBottomBar;->setOnItemSelectedListener(Lme/ibrahimsn/lib/OnItemSelectedListener;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lme/ibrahimsn/lib/NavigationComponentHelper$Companion$setupWithNavController$2;

    invoke-direct {v1, v0, p3, p1, p2}, Lme/ibrahimsn/lib/NavigationComponentHelper$Companion$setupWithNavController$2;-><init>(Ljava/lang/ref/WeakReference;Landroidx/navigation/NavController;Landroid/view/Menu;Lme/ibrahimsn/lib/SmoothBottomBar;)V

    invoke-virtual {p3, v1}, Landroidx/navigation/NavController;->addOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V

    return-void
.end method
