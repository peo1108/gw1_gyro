.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$h;
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
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;

.field public final synthetic b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$h;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$h;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$h;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    iget-object v1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->m:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$h;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;

    invoke-virtual {v0, v1, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->M(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$h;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$h;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->R(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    return-void
.end method
