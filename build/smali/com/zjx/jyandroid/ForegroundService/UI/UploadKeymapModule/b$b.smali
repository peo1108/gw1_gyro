.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Interfaces/MView$OnTouchHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

.field public final synthetic b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$b;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$b;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public touchOccurred(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$b;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    iget-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$b;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->R(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    :goto_0
    return-void
.end method
