.class public Lcom/zjx/jyandroid/ForegroundService/KeymapManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;,
        Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;,
        Lcom/zjx/jyandroid/ForegroundService/KeymapManager$BundleInfo;,
        Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;,
        Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;,
        Lcom/zjx/jyandroid/ForegroundService/KeymapManager$UpdateKeymapCompletionHandler;,
        Lcom/zjx/jyandroid/ForegroundService/KeymapManager$DeleteKeymapCompletionHandler;,
        Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;,
        Lcom/zjx/jyandroid/ForegroundService/KeymapManager$RenameKeymapCompletionHandler;,
        Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;,
        Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareMacroCompletionHandler;,
        Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;,
        Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetMacroByShareCodeCompletionHandler;,
        Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetConfigByShareCodeCompletionHandler;,
        Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetPresetMacroListCompletionHandler;,
        Lcom/zjx/jyandroid/ForegroundService/KeymapManager$SetSelectedKeymapCompletionHandler;,
        Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ActivateKeymapChangedListener;,
        Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetConfigContentByIdCompletionHandler;,
        Lcom/zjx/jyandroid/ForegroundService/KeymapManager$SearchAndGetConfigContentByCharacteristicCompletionHandler;,
        Lcom/zjx/jyandroid/ForegroundService/KeymapManager$PresetMacroInfo;
    }
.end annotation


# static fields
.field public static e:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/zjx/jyandroid/ForegroundService/KeymapManager$BundleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ActivateKeymapChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->d:Ljava/util/LinkedList;

    return-void
.end method

.method public static J()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->e:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;-><init>()V

    sput-object v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->e:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    :cond_0
    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->e:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    return-object v0
.end method

.method public static synthetic a(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->b:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic b(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->a:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic c(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->z(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V

    return-void
.end method

.method public static q(Ljava/util/Map;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;"
        }
    .end annotation

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;-><init>()V

    const-wide v1, -0x158f7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$string;->keymap_manager_text1:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->name:Ljava/lang/String;

    :cond_0
    const-wide v1, -0x15947dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    iput p0, v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->componentCount:I

    :cond_1
    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->forPhone:Z

    return-object v0
.end method


# virtual methods
.method public A(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ActivateKeymapChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public B(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$RenameKeymapCompletionHandler;)V
    .locals 0

    # mdm-offline: local store delegator
    invoke-static {p0, p1, p2, p3}, Lmdm/LocalKeymapStore;->renameKeymap(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$RenameKeymapCompletionHandler;)V

    return-void
.end method

.method public C(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->c:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->c:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$34;

    invoke-direct {v0, p0, p1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$34;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public D(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$SetSelectedKeymapCompletionHandler;)V
    .locals 0

    # mdm-offline: local store delegator
    invoke-static {p0, p1, p2}, Lmdm/LocalKeymapStore;->setSelected(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$SetSelectedKeymapCompletionHandler;)V

    return-void
.end method

.method public E(Ljava/util/Map;ILjava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_1

    if-eqz p4, :cond_0

    new-instance p1, Lcom/zjx/jyandroid/base/MError;

    const-wide p2, -0x1ccd7dacc755L

    invoke-static {p2, p3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v2, -0x1cde7dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x1ce57dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, v2, v3}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v1, p3}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p4, p1, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->alreadyLogin:Z

    if-nez v2, :cond_3

    if-eqz p4, :cond_2

    new-instance p1, Lcom/zjx/jyandroid/base/MError;

    const-wide p2, -0x1cef7dacc755L

    invoke-static {p2, p3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v2, -0x1cfd7dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x1d047dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, v2, v3}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v1, p3}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p4, p1, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x1d097dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    if-eq p2, v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v2, -0x1d337dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_4
    move-object v4, p3

    :try_start_0
    new-instance p2, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$46;

    new-instance v5, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$44;

    invoke-direct {v5, p0, p4}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$44;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;)V

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$45;

    invoke-direct {v6, p0, p4}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$45;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;)V

    const/4 v3, 0x1

    move-object v1, p2

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$46;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;

    move-result-object p1

    const/16 p3, 0x1b58

    invoke-virtual {p1, p2, p3, p0}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->addTaskToQueue(Lcom/android/volley/Request;ILjava/lang/Object;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zjx/jyandroid/base/MError;

    const-wide v1, -0x1d417dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p3

    sget v1, Lcom/zjx/jyandroid/R$integer;->run_time_error:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->q(I)I

    move-result v1

    new-instance v2, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v3, -0x1d4e7dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v5, -0x1d557dacc755L

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p2, p3, v1, v2}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p4, p2, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public F(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;)V
    .locals 2

    const-wide v0, -0x1a3c7dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->H(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;)V

    return-void
.end method

.method public G(Ljava/lang/String;Ljava/lang/String;ILcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_1

    if-eqz p4, :cond_0

    new-instance p1, Lcom/zjx/jyandroid/base/MError;

    const-wide p2, -0x1a3f7dacc755L

    invoke-static {p2, p3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v2, -0x1a507dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x1a577dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, v2, v3}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v1, p3}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p4, p1, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->alreadyLogin:Z

    if-nez v2, :cond_3

    if-eqz p4, :cond_2

    new-instance p1, Lcom/zjx/jyandroid/base/MError;

    const-wide p2, -0x1a607dacc755L

    invoke-static {p2, p3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v2, -0x1a6e7dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x1a757dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, v2, v3}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v1, p3}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p4, p1, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x1a7a7dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v3, -0x1aa47dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eq p3, v1, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x1aad7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    move-object v4, p1

    :try_start_0
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$27;

    new-instance v5, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$25;

    invoke-direct {v5, p0, p4}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$25;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;)V

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$26;

    invoke-direct {v6, p0, p4}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$26;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;)V

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$27;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;

    move-result-object p2

    const/16 p3, 0x1b58

    invoke-virtual {p2, p1, p3, p0}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->addTaskToQueue(Lcom/android/volley/Request;ILjava/lang/Object;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zjx/jyandroid/base/MError;

    const-wide v1, -0x1abb7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p3

    sget v1, Lcom/zjx/jyandroid/R$integer;->run_time_error:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->q(I)I

    move-result v1

    new-instance v2, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v3, -0x1ac87dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v5, -0x1acf7dacc755L

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p2, p3, v1, v2}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p4, p2, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public H(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->G(Ljava/lang/String;Ljava/lang/String;ILcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;)V

    return-void
.end method

.method public I(Ljava/util/List;ILjava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareMacroCompletionHandler;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;I",
            "Ljava/lang/String;",
            "Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareMacroCompletionHandler;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_1

    if-eqz p4, :cond_0

    new-instance p1, Lcom/zjx/jyandroid/base/MError;

    const-wide p2, -0x194a7dacc755L

    invoke-static {p2, p3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v2, -0x195b7dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x19627dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, v2, v3}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v1, p3}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p4, p1, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareMacroCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->alreadyLogin:Z

    if-nez v2, :cond_3

    if-eqz p4, :cond_2

    new-instance p1, Lcom/zjx/jyandroid/base/MError;

    const-wide p2, -0x19677dacc755L

    invoke-static {p2, p3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v2, -0x19757dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x197c7dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, v2, v3}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v1, p3}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p4, p1, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareMacroCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-wide v1, -0x19817dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v1, -0x198f7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v1, -0x19967dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$20;

    invoke-direct {p3, p0, p4}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$20;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareMacroCompletionHandler;)V

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->E(Ljava/util/Map;ILjava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;)V

    return-void
.end method

.method public K(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ActivateKeymapChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public L(Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$UpdateKeymapCompletionHandler;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/zjx/jyandroid/ForegroundService/KeymapManager$UpdateKeymapCompletionHandler;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    new-instance p1, Lcom/zjx/jyandroid/base/MError;

    const-wide v1, -0x163f7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v2, -0x16507dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x16577dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v0, v1}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$UpdateKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->alreadyLogin:Z

    if-nez v1, :cond_3

    if-eqz p3, :cond_2

    new-instance p1, Lcom/zjx/jyandroid/base/MError;

    const-wide v1, -0x165d7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v2, -0x166b7dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x16727dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v0, v1}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$UpdateKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->M(Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$UpdateKeymapCompletionHandler;)V

    return-void
.end method

.method public final M(Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$UpdateKeymapCompletionHandler;)V
    .locals 0

    # mdm-offline: local store delegator
    invoke-static {p0, p1, p2, p3}, Lmdm/LocalKeymapStore;->updateKeymap(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$UpdateKeymapCompletionHandler;)V

    return-void
.end method

.method public d()V
    .locals 1

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;

    move-result-object v0

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->queue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    new-instance p1, Lcom/zjx/jyandroid/base/MError;

    const-wide v2, -0x17327dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v3, -0x17437dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x174a7dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v1, v2}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p1, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-nez p2, :cond_3

    if-eqz p3, :cond_2

    new-instance p1, Lcom/zjx/jyandroid/base/MError;

    const-wide v2, -0x17507dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v3, -0x17617dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x17687dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v1, v2}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p1, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->alreadyLogin:Z

    if-nez v2, :cond_5

    if-eqz p3, :cond_4

    new-instance p1, Lcom/zjx/jyandroid/base/MError;

    const-wide v2, -0x17727dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v3, -0x17807dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x17877dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v1, v2}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p1, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->i(Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;)V

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;)V
    .locals 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    new-instance p1, Lcom/zjx/jyandroid/base/MError;

    const-wide v2, -0x18ab7dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v3, -0x18bc7dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x18c37dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v0, v2}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p1, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-nez p2, :cond_3

    if-eqz p3, :cond_2

    new-instance p1, Lcom/zjx/jyandroid/base/MError;

    const-wide v2, -0x18c97dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v3, -0x18da7dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x18e17dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v0, v2}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p1, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->alreadyLogin:Z

    if-nez v2, :cond_5

    if-eqz p3, :cond_4

    new-instance p1, Lcom/zjx/jyandroid/base/MError;

    const-wide v2, -0x18eb7dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v3, -0x18f97dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x19007dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v0, v2}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p1, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x19057dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :try_start_0
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$19;

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$17;

    invoke-direct {v7, p0, p3, p2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$17;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;Ljava/lang/String;)V

    new-instance v8, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$18;

    invoke-direct {v8, p0, p3}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$18;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;)V

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$19;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;

    move-result-object p2

    const/16 v0, 0x1b58

    invoke-virtual {p2, p1, v0, p0}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->addTaskToQueue(Lcom/android/volley/Request;ILjava/lang/Object;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zjx/jyandroid/base/MError;

    const-wide v2, -0x19317dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/zjx/jyandroid/R$integer;->run_time_error:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->q(I)I

    move-result v2

    new-instance v3, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v4, -0x193e7dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v6, -0x19457dacc755L

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p2, v0, v2, v3}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p2, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    new-instance p1, Lcom/zjx/jyandroid/base/MError;

    const-wide v2, -0x159f7dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v3, -0x15b07dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x15b77dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v1, v2}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p1, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-nez p2, :cond_3

    if-eqz p3, :cond_2

    new-instance p1, Lcom/zjx/jyandroid/base/MError;

    const-wide v2, -0x15bd7dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v3, -0x15ce7dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x15d57dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v1, v2}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p1, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->alreadyLogin:Z

    if-nez v2, :cond_5

    if-eqz p3, :cond_4

    new-instance p1, Lcom/zjx/jyandroid/base/MError;

    const-wide v2, -0x15db7dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v3, -0x15e97dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x15f07dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v1, v2}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p1, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->h(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;)V

    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;)V
    .locals 0

    # mdm-offline: local store delegator
    invoke-static {p0, p1, p2, p3}, Lmdm/LocalKeymapStore;->createNamed(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;)V

    return-void
.end method

.method public i(Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;)V
    .locals 0

    # mdm-offline: local store delegator
    invoke-static {p0, p1, p2, p3}, Lmdm/LocalKeymapStore;->createWithContent(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;)V

    return-void
.end method

.method public j(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$DeleteKeymapCompletionHandler;)V
    .locals 0

    # mdm-offline: local store delegator
    invoke-static {p0, p1, p2}, Lmdm/LocalKeymapStore;->deleteKeymap(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$DeleteKeymapCompletionHandler;)V

    return-void
.end method

.method public k()Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->c:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;->info:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;->bundleId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->c:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public l(Ljava/lang/String;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;
    .locals 4

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$BundleInfo;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$BundleInfo;->keymapInfoList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;

    iget-object v3, v2, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public m(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetConfigByShareCodeCompletionHandler;)V
    .locals 2

    const-wide v0, -0x1c357dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->n(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetConfigByShareCodeCompletionHandler;)V

    return-void
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetConfigByShareCodeCompletionHandler;)V
    .locals 8

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    new-instance p1, Lcom/zjx/jyandroid/base/MError;

    const-wide v2, -0x1c487dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v3, -0x1c597dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x1c607dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v0, v2}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p1, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetConfigByShareCodeCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->alreadyLogin:Z

    if-nez v2, :cond_3

    if-eqz p3, :cond_2

    new-instance p1, Lcom/zjx/jyandroid/base/MError;

    const-wide v2, -0x1c667dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v3, -0x1c747dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x1c7b7dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, p2, v0, v2}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p1, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetConfigByShareCodeCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x1c807dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v2, -0x1ca37dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$43;

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$41;

    invoke-direct {v6, p0, p3}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$41;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetConfigByShareCodeCompletionHandler;)V

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$42;

    invoke-direct {v7, p0, p3}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$42;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetConfigByShareCodeCompletionHandler;)V

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$43;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;

    move-result-object p2

    const/16 v0, 0x1b58

    invoke-virtual {p2, p1, v0, p0}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->addTaskToQueue(Lcom/android/volley/Request;ILjava/lang/Object;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zjx/jyandroid/base/MError;

    const-wide v2, -0x1cb47dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/zjx/jyandroid/R$integer;->run_time_error:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->q(I)I

    move-result v2

    new-instance v3, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v4, -0x1cc17dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v6, -0x1cc87dacc755L

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p2, v0, v2, v3}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p3, p2, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetConfigByShareCodeCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public o(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$SearchAndGetConfigContentByCharacteristicCompletionHandler;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x1bef7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$40;

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$38;

    invoke-direct {v6, p0, p2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$38;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$SearchAndGetConfigContentByCharacteristicCompletionHandler;)V

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$39;

    invoke-direct {v7, p0, p2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$39;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$SearchAndGetConfigContentByCharacteristicCompletionHandler;)V

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$40;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;

    move-result-object v0

    const/16 v1, 0x1b58

    invoke-virtual {v0, p1, v1, p0}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->addTaskToQueue(Lcom/android/volley/Request;ILjava/lang/Object;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zjx/jyandroid/base/MError;

    const-wide v1, -0x1c1c7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/R$integer;->run_time_error:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->q(I)I

    move-result v2

    new-instance v3, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v4, -0x1c297dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v6, -0x1c307dacc755L

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    invoke-interface {p2, v0, p1, v1, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$SearchAndGetConfigContentByCharacteristicCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;ZLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public p(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetConfigContentByIdCompletionHandler;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x1baf7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$37;

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$35;

    invoke-direct {v6, p0, p2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$35;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetConfigContentByIdCompletionHandler;)V

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$36;

    invoke-direct {v7, p0, p2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$36;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetConfigContentByIdCompletionHandler;)V

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$37;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;

    move-result-object v0

    const/16 v1, 0x1b58

    invoke-virtual {v0, p1, v1, p0}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->addTaskToQueue(Lcom/android/volley/Request;ILjava/lang/Object;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zjx/jyandroid/base/MError;

    const-wide v1, -0x1bd67dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/R$integer;->run_time_error:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->q(I)I

    move-result v2

    new-instance v3, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v4, -0x1be37dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v6, -0x1bea7dacc755L

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    const/4 p1, 0x0

    invoke-interface {p2, v0, p1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetConfigContentByIdCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public r(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->l(Ljava/lang/String;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;Ljava/util/Map;)V

    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->s(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;)V

    return-void
.end method

.method public final s(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;)V
    .locals 0

    # mdm-offline: local store delegator
    invoke-static {p0, p1, p2}, Lmdm/LocalKeymapStore;->getKeymap(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;)V

    return-void
.end method

.method public t(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;)V
    .locals 2

    const-wide v0, -0x17c97dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->u(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;)V

    return-void
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$BundleInfo;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    iget-object p1, v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$BundleInfo;->keymapInfoList:Ljava/util/LinkedList;

    iget-object p2, v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$BundleInfo;->selectedKeymapId:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p3, v0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/util/LinkedList;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->v(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;)V

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;)V
    .locals 0

    # mdm-offline: local store delegator
    invoke-static {p0, p1, p2, p3}, Lmdm/LocalKeymapStore;->getKeymapList(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;)V

    return-void
.end method

.method public w(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetMacroByShareCodeCompletionHandler;)V
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    new-instance p1, Lcom/zjx/jyandroid/base/MError;

    const-wide v2, -0x19997dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v4, -0x19aa7dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x19b17dacc755L

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, v2, v0, v3}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p2, p1, v1, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetMacroByShareCodeCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->alreadyLogin:Z

    if-nez v2, :cond_3

    if-eqz p2, :cond_2

    new-instance p1, Lcom/zjx/jyandroid/base/MError;

    const-wide v2, -0x19b77dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v4, -0x19c57dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x19cc7dacc755L

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, v2, v0, v3}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p2, p1, v1, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetMacroByShareCodeCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$21;

    invoke-direct {v0, p0, p2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$21;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetMacroByShareCodeCompletionHandler;)V

    invoke-virtual {p0, p1, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->m(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetConfigByShareCodeCompletionHandler;)V

    return-void
.end method

.method public x(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetPresetMacroListCompletionHandler;)V
    .locals 10

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->alreadyLogin:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/base/MError;

    const-wide v2, -0x19d17dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v4, -0x19df7dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x19e67dacc755L

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, -0x1

    invoke-direct {v0, v2, v4, v3}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p1, v0, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetPresetMacroListCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x19eb7dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v2, -0x1a167dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :try_start_0
    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$24;

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22;

    invoke-direct {v7, p0, p1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetPresetMacroListCompletionHandler;)V

    new-instance v8, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$23;

    invoke-direct {v8, p0, p1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$23;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetPresetMacroListCompletionHandler;)V

    const/4 v5, 0x0

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$24;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;

    move-result-object v2

    const/16 v3, 0x1b58

    invoke-virtual {v2, v0, v3, p0}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->addTaskToQueue(Lcom/android/volley/Request;ILjava/lang/Object;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/zjx/jyandroid/base/MError;

    const-wide v3, -0x1a237dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/zjx/jyandroid/R$integer;->run_time_error:I

    invoke-static {v4}, Lcom/zjx/jyandroid/base/util/b;->q(I)I

    move-result v4

    new-instance v5, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v6, -0x1a307dacc755L

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v8, -0x1a377dacc755L

    invoke-static {v8, v9}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p1, v2, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetPresetMacroListCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final z(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ActivateKeymapChangedListener;

    invoke-interface {v1, p1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ActivateKeymapChangedListener;->activatedKeymapHasChanged(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method
