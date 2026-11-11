.class public Ll/b$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$UpdateKeymapCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll/b$c;->b(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

.field public final synthetic b:Ll/b$c;


# direct methods
.method public constructor <init>(Ll/b$c;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)V
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

    iput-object p1, p0, Ll/b$c$b;->b:Ll/b$c;

    iput-object p2, p0, Ll/b$c$b;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/base/util/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/zjx/jyandroid/R$string;->floating_object_manager_text3:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v0, p1, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void

    :cond_0
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->J()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p1

    iget-object v0, p0, Ll/b$c$b;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->z()Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

    move-result-object v0

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;->info:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;->id:Ljava/lang/String;

    new-instance v1, Ll/b$c$b$a;

    invoke-direct {v1, p0}, Ll/b$c$b$a;-><init>(Ll/b$c$b;)V

    invoke-virtual {p1, v0, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->r(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;)V

    return-void
.end method
