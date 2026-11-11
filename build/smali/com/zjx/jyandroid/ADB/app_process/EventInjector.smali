.class public Lcom/zjx/jyandroid/ADB/app_process/EventInjector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INJECT_INPUT_EVENT_MODE_WAIT_FOR_FINISH:I = 0x2

.field private static final INJECT_INPUT_EVENT_MODE_WAIT_FOR_RESULT:I = 0x1


# instance fields
.field private im:Ljava/lang/Object;

.field private injectInputEvent:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DiscouragedPrivateApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-class v2, Landroid/view/InputEvent;

    const-string v3, "injectInputEvent"

    const-string v4, "getInstance"

    const/4 v5, 0x0

    if-gt v0, v1, :cond_0

    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/zjx/jyandroid/ADB/app_process/EventInjector;->im:Ljava/lang/Object;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/EventInjector;->injectInputEvent:Ljava/lang/reflect/Method;

    goto :goto_0

    :cond_0
    const-string v0, "android.hardware.input.InputManagerGlobal"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/zjx/jyandroid/ADB/app_process/EventInjector;->im:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/EventInjector;->injectInputEvent:Ljava/lang/reflect/Method;

    :goto_0
    return-void
.end method


# virtual methods
.method public injectEvent(Landroid/view/InputEvent;)V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/zjx/jyandroid/ADB/app_process/EventInjector;->injectInputEvent:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/zjx/jyandroid/ADB/app_process/EventInjector;->im:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-static {}, Lcom/zjx/jyandroid/ADB/BinderClientNative;->sharedInstance()Lcom/zjx/jyandroid/ADB/BinderClientNative;

    move-result-object p1

    const-string v1, "\u8bf7\u5728\u5f00\u53d1\u8005\u9009\u9879\u4e2d\u627e\u5230\u9009\u9879\"USB\u8c03\u8bd5(\u5b89\u5168\u8bbe\u7f6e)\"\u5e76\u6253\u5f00\uff0c\u5426\u5219\u65e0\u6cd5\u4f7f\u7528\u6a21\u62df\u70b9\u51fb\u529f\u80fd"

    sget-object v2, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/16 v3, 0x1b58

    invoke-virtual {p1, v1, v3, v2}, Lcom/zjx/jyandroid/ADB/BinderClientNative;->showToast(Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :catch_2
    :goto_0
    return-void
.end method
