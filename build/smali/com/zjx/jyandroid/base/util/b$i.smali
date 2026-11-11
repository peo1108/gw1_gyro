.class public Lcom/zjx/jyandroid/base/util/b$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/base/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/base/util/b$i$a;
    }
.end annotation


# static fields
.field public static a:Landroid/view/WindowManager;

.field public static b:Landroid/util/Size;

.field public static c:Lcom/zjx/jyandroid/base/util/b$i$a;

.field public static d:Lcom/zjx/jyandroid/base/util/b$i$a;

.field public static e:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/zjx/jyandroid/base/util/b$i;->a:Landroid/view/WindowManager;

    const/4 v0, 0x0

    sput-object v0, Lcom/zjx/jyandroid/base/util/b$i;->b:Landroid/util/Size;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/zjx/jyandroid/base/util/b$i;->e:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 9

    sget-object v0, Lcom/zjx/jyandroid/base/util/b$i;->d:Lcom/zjx/jyandroid/base/util/b$i$a;

    const/16 v1, 0x33

    if-nez v0, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/base/util/b$i$a;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/zjx/jyandroid/base/util/b$i$a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zjx/jyandroid/base/util/b$i;->d:Lcom/zjx/jyandroid/base/util/b$i$a;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0x8

    const/4 v8, -0x3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v6, 0x7f6

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v2, 0x98967f

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v2

    sget-object v3, Lcom/zjx/jyandroid/base/util/b$i;->d:Lcom/zjx/jyandroid/base/util/b$i$a;

    invoke-virtual {v2, v3, v0}, Ll/b;->e(Lcom/zjx/jyandroid/base/BaseFloatingView;Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    sget-object v0, Lcom/zjx/jyandroid/base/util/b$i;->c:Lcom/zjx/jyandroid/base/util/b$i$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/zjx/jyandroid/base/util/b$i$a;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/zjx/jyandroid/base/util/b$i$a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zjx/jyandroid/base/util/b$i;->c:Lcom/zjx/jyandroid/base/util/b$i$a;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0x8

    const/4 v8, -0x3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v6, 0x7f6

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/util/b$i;->c:Lcom/zjx/jyandroid/base/util/b$i$a;

    invoke-virtual {v1, v2, v0}, Ll/b;->e(Lcom/zjx/jyandroid/base/BaseFloatingView;Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public static b(F)I
    .locals 1

    sget v0, Lcom/zjx/jyandroid/base/util/b$i;->e:F

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static c(I)I
    .locals 1

    int-to-float p0, p0

    sget v0, Lcom/zjx/jyandroid/base/util/b$i;->e:F

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static d(F)I
    .locals 1

    sget v0, Lcom/zjx/jyandroid/base/util/b$i;->e:F

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static e(I)I
    .locals 1

    int-to-float p0, p0

    sget v0, Lcom/zjx/jyandroid/base/util/b$i;->e:F

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static f()[I
    .locals 8

    sget-object v0, Lcom/zjx/jyandroid/base/util/b$i;->c:Lcom/zjx/jyandroid/base/util/b$i$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/base/util/b$i$a;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zjx/jyandroid/base/util/b$i$a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zjx/jyandroid/base/util/b$i;->c:Lcom/zjx/jyandroid/base/util/b$i$a;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x8

    const/4 v7, -0x3

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x7f6

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/util/b$i;->c:Lcom/zjx/jyandroid/base/util/b$i$a;

    invoke-virtual {v1, v2, v0}, Ll/b;->e(Lcom/zjx/jyandroid/base/BaseFloatingView;Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    sget-object v1, Lcom/zjx/jyandroid/base/util/b$i;->c:Lcom/zjx/jyandroid/base/util/b$i$a;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    return-object v0
.end method

.method public static g()Landroid/util/Size;
    .locals 8

    sget-object v0, Lcom/zjx/jyandroid/base/util/b$i;->d:Lcom/zjx/jyandroid/base/util/b$i$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/base/util/b$i$a;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zjx/jyandroid/base/util/b$i$a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zjx/jyandroid/base/util/b$i;->d:Lcom/zjx/jyandroid/base/util/b$i$a;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x8

    const/4 v7, -0x3

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x7f6

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v1, 0x98967f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/util/b$i;->d:Lcom/zjx/jyandroid/base/util/b$i$a;

    invoke-virtual {v1, v2, v0}, Ll/b;->e(Lcom/zjx/jyandroid/base/BaseFloatingView;Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    sget-object v1, Lcom/zjx/jyandroid/base/util/b$i;->d:Lcom/zjx/jyandroid/base/util/b$i$a;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->f()[I

    move-result-object v1

    new-instance v2, Landroid/util/Size;

    const/4 v3, 0x0

    aget v4, v0, v3

    aget v3, v1, v3

    sub-int/2addr v4, v3

    const/4 v3, 0x1

    aget v0, v0, v3

    aget v1, v1, v3

    sub-int/2addr v0, v1

    invoke-direct {v2, v4, v0}, Landroid/util/Size;-><init>(II)V

    return-object v2
.end method

.method public static h()F
    .locals 1

    sget v0, Lcom/zjx/jyandroid/base/util/b$i;->e:F

    return v0
.end method

.method public static i()Landroid/util/Size;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sget-object v1, Lcom/zjx/jyandroid/base/util/b$i;->a:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance v1, Landroid/util/Size;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public static j()Landroid/util/Size;
    .locals 3

    sget-object v0, Lcom/zjx/jyandroid/base/util/b$i;->b:Landroid/util/Size;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->i()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v1, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    move-object v0, v1

    :cond_1
    sput-object v0, Lcom/zjx/jyandroid/base/util/b$i;->b:Landroid/util/Size;

    return-object v0
.end method

.method public static k()Z
    .locals 2

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->i()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
