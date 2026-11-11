.class Lcodetail/graphics/drawables/TypedArrayCompat$TypedArrayLollipop;
.super Lcodetail/graphics/drawables/TypedArrayCompat$BaseTypedArray;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcodetail/graphics/drawables/TypedArrayCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypedArrayLollipop"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcodetail/graphics/drawables/TypedArrayCompat$BaseTypedArray;-><init>()V

    return-void
.end method


# virtual methods
.method public getChangingConfigurations(Landroid/content/res/TypedArray;)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result p1

    return p1
.end method
