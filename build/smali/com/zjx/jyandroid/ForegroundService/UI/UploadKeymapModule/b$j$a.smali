.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$j;->actionTriggered(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;

.field public final synthetic b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$j;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$j;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$j$a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$j;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$j$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$j$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;

    new-instance v1, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;

    sget-object v2, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;->MOUSE:Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;

    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$j$a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$j;

    iget v3, v3, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$j;->a:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;-><init>(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;IZ)V

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;->keyEventReceived(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V

    return-void
.end method
