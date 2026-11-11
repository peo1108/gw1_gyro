.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->broadcastKeyCodeArrayChangedNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$g;

.field public final synthetic b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$g;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$e;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$e;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$e;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$g;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$e;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;

    iget v2, v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->q:I

    invoke-interface {v0, v1, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$g;->a(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;I)V

    return-void
.end method
