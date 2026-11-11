.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->eventOccurred(Ljava/util/LinkedList;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;

.field public final synthetic b:I

.field public final synthetic c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$m;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$m;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;

    iput p3, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$m;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$m;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;

    new-instance v1, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;

    sget-object v2, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;->MOUSE:Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;

    iget v3, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$m;->b:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;-><init>(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;IZ)V

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;->keyEventReceived(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V

    return-void
.end method
