.class public Lcom/zjx/gw2lic/Gw2DisableRecoil;
.super Ljava/lang/Object;
.source "Gw2DisableRecoil.java"


# static fields
.field public static cacheLoaded:Z

.field public static enabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensure()Z
    .locals 3

    sget-boolean v0, Lcom/zjx/gw2lic/Gw2DisableRecoil;->cacheLoaded:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zjx/gw2lic/Gw2DisableRecoil;->enabled:Z

    const-string v1, ">\u00aeG\u00d3k\u0018\u009e4\u00ae"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zjx/gw2lic/Gw2DisableRecoil;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "k"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/zjx/gw2lic/Gw2DisableRecoil;->cacheLoaded:Z

    :cond_0
    sput-boolean v0, Lcom/zjx/gw2lic/Gw2DisableRecoil;->enabled:Z

    :cond_1
    sget-boolean v0, Lcom/zjx/gw2lic/Gw2DisableRecoil;->enabled:Z

    return v0
.end method

.method public static isOn()Z
    .locals 1

    invoke-static {}, Lcom/zjx/gw2lic/Gw2DisableRecoil;->ensure()Z

    move-result v0

    return v0
.end method

.method public static read(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/zjx/gw2lic/Gw2DisableRecoil;->settingsFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v1, "\u000f\u0093r\u008c6"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "g"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    return-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static resStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, ")\u00b3F\u00c8`\u001c"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception v0

    return-object p1
.end method

.method public static setOn(Z)V
    .locals 1

    sput-boolean p0, Lcom/zjx/gw2lic/Gw2DisableRecoil;->enabled:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/zjx/gw2lic/Gw2DisableRecoil;->cacheLoaded:Z

    if-eqz p0, :cond_0

    const-string v0, ">\u00aeG\u00d3k\u0018\u009e4\u00ae"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string p0, "k"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/zjx/gw2lic/Gw2DisableRecoil;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, ">\u00aeG\u00d3k\u0018\u009e4\u00ae"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string p0, "j"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/zjx/gw2lic/Gw2DisableRecoil;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static settingsFile()Ljava/io/File;
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v2, ">\u00aeG\u00c0l\u0017\u008d\'\u00a7L\u00f3`\u001a\u00cd$\u00c5^"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v0, "\u001e\u00a8W\u00d4c\u001e\u0086!\u00b1"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "0\u00beU\u0093!\u001f\u0089!\u00a3M\u00fdz\u0013\u0090"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljava/io/File;

    const-string v2, ">\u00aeG\u00c0l\u0017\u008d\'\u00a7L\u00f3`\u001a\u00cd$\u00c5^"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/zjx/gw2lic/Gw2DisableRecoil;->settingsFile()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "g"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v6, "\u000f\u0093r\u008c6"

    invoke-static/range {v6 .. v6}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "P"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "P"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_3
    if-nez v6, :cond_4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "P"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    return-void
.end method
