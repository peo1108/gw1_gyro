.class public Ll/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$B;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll/b;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ll/b;


# direct methods
.method public constructor <init>(Ll/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ll/b$c;->a:Ll/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)V
    .locals 0

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object p1

    invoke-virtual {p1}, Ll/b;->z()V

    return-void
.end method

.method public b(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "components"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v0, Lcom/zjx/jyandroid/base/util/a;

    sget v1, Lcom/zjx/jyandroid/R$string;->floating_object_manager_text2:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1388

    sget-object v4, Lcom/zjx/jyandroid/base/util/ToastView$a;->a:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;JLcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/util/a;->a()V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->z()Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->z()Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

    move-result-object v0

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;->info:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;

    iget-boolean v0, v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;->isOfficial:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->J()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->k()Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;->info:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;

    invoke-direct {v1, v0, p2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;Ljava/util/Map;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->J()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->C(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->J()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->z()Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

    move-result-object v1

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;->info:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;->id:Ljava/lang/String;

    new-instance v2, Ll/b$c$b;

    invoke-direct {v2, p0, p1}, Ll/b$c$b;-><init>(Ll/b$c;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)V

    invoke-virtual {v0, p2, v1, v2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->L(Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$UpdateKeymapCompletionHandler;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->J()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p1

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ll/b$c$a;

    invoke-direct {v1, p0}, Ll/b$c$a;-><init>(Ll/b$c;)V

    invoke-virtual {p1, p2, v0, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->e(Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;)V

    :goto_1
    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object p1

    invoke-virtual {p1}, Ll/b;->z()V

    return-void
.end method
