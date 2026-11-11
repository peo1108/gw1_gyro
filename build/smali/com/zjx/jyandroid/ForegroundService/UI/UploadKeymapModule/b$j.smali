.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->eventOccurred(Ljava/util/LinkedList;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;I)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$j;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionTriggered(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V
    .locals 4

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$j;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->m:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    check-cast p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;

    new-instance v0, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;

    sget-object v1, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;->MOUSE:Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;

    iget v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$j;->a:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;-><init>(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;IZ)V

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;->keyEventReceived(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$j;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->s:Z

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$j$a;

    invoke-direct {v1, p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$j$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$j;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
