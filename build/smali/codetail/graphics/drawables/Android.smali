.class Lcodetail/graphics/drawables/Android;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcodetail/graphics/drawables/Android;->VERSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLollipop()Z
    .locals 2

    sget v0, Lcodetail/graphics/drawables/Android;->VERSION:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
