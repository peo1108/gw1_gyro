.class public Lcom/zjx/jyandroid/ScreenCaptureManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static instance:Lcom/zjx/jyandroid/ScreenCaptureManager;

.field static screenshot:Landroid/graphics/Bitmap;

.field private static sdkVersion:I


# instance fields
.field private physicalScreenSizeHorizontal:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/zjx/jyandroid/ScreenCaptureManager;->sdkVersion:I

    const/4 v0, 0x0

    sput-object v0, Lcom/zjx/jyandroid/ScreenCaptureManager;->screenshot:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ScreenCaptureManager;->physicalScreenSizeHorizontal:Landroid/util/Size;

    return-void
.end method

.method public static sharedInstance()Lcom/zjx/jyandroid/ScreenCaptureManager;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/ScreenCaptureManager;->instance:Lcom/zjx/jyandroid/ScreenCaptureManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/ScreenCaptureManager;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ScreenCaptureManager;-><init>()V

    sput-object v0, Lcom/zjx/jyandroid/ScreenCaptureManager;->instance:Lcom/zjx/jyandroid/ScreenCaptureManager;

    :cond_0
    sget-object v0, Lcom/zjx/jyandroid/ScreenCaptureManager;->instance:Lcom/zjx/jyandroid/ScreenCaptureManager;

    return-object v0
.end method


# virtual methods
.method public getScreenshot()Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->i()Landroid/util/Size;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/ScreenCaptureManager;->getScreenshot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getScreenshot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 7

    .line 3
    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v0

    iget-object v0, v0, Ll/b;->b:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    int-to-byte v0, v0

    .line 4
    sget v1, Lcom/zjx/jyandroid/ScreenCaptureManager;->sdkVersion:I

    const/16 v2, 0x1f

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/zjx/jyandroid/ScreenCaptureManager;->physicalScreenSizeHorizontal:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v4

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/zjx/jyandroid/ScreenCaptureManager;->physicalScreenSizeHorizontal:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget v6, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v4, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    move-object p1, v1

    goto :goto_1

    .line 6
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/zjx/jyandroid/ScreenCaptureManager;->physicalScreenSizeHorizontal:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/zjx/jyandroid/ScreenCaptureManager;->physicalScreenSizeHorizontal:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, p1

    invoke-direct {v1, v2, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/zjx/jyandroid/ADB/BinderClientApplication;->sharedInstance()Lcom/zjx/jyandroid/ADB/BinderClientApplication;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/zjx/jyandroid/ADB/BinderClientApplication;->getScreenshot(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/ScreenCaptureManager;->screenshot:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    sget-object v1, Lcom/zjx/jyandroid/ScreenCaptureManager;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    sget-object v1, Lcom/zjx/jyandroid/ScreenCaptureManager;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 9
    sget-object p1, Lcom/zjx/jyandroid/ScreenCaptureManager;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    sget-object v0, Lcom/zjx/jyandroid/ScreenCaptureManager;->screenshot:Landroid/graphics/Bitmap;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v0, v1, v2, v4, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 11
    :catch_1
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
