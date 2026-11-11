.class public final Lmdm/ConfigBackup;
.super Ljava/lang/Object;
.source "ConfigBackup.java"


# static fields
.field static final MAIN:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lmdm/ConfigBackup;->MAIN:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addPrefs(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    if-eqz p2, :cond_54

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_54

    .line 155
    :cond_f
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    .line 156
    if-nez p2, :cond_16

    return-void

    .line 157
    :cond_16
    array-length v0, p2

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_53

    aget-object v2, p2, v1

    .line 158
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Lmdm/ConfigBackup;->writeEntry(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)V

    .line 157
    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 162
    :cond_53
    return-void

    .line 154
    :cond_54
    :goto_54
    return-void
.end method

.method static addTree(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 133
    if-eqz p2, :cond_82

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_82

    .line 134
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    .line 137
    :goto_20
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_81

    .line 138
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 139
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 140
    if-nez v1, :cond_39

    goto :goto_20

    .line 141
    :cond_39
    array-length v3, v1

    const/4 v4, 0x0

    :goto_3b
    if-ge v4, v3, :cond_80

    aget-object v5, v1, v4

    .line 142
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_49

    .line 143
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    .line 145
    :cond_49
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x5c

    const/16 v8, 0x2f

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 146
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_65

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 147
    :cond_65
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v5}, Lmdm/ConfigBackup;->writeEntry(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)V

    .line 141
    :goto_7d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 150
    :cond_80
    goto :goto_20

    .line 151
    :cond_81
    return-void

    .line 133
    :cond_82
    :goto_82
    return-void
.end method

.method static backupFolder()Ljava/io/File;
    .registers 3

    .line 59
    invoke-static {}, Lmdm/ConfigBackup;->docFolder()Ljava/io/File;

    move-result-object v0

    .line 60
    const-string v1, "MDM"

    if-nez v0, :cond_16

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1c

    :cond_16
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v2

    .line 61
    :goto_1c
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 62
    :cond_25
    return-object v0
.end method

.method static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 211
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 213
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_f

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    .line 214
    :cond_f
    return-void
.end method

.method static docFolder()Ljava/io/File;
    .registers 2

    .line 44
    invoke-static {}, Lcom/zjx/jyandroid/App;->getAppDocumentFolder()Ljava/lang/String;

    move-result-object v0

    .line 45
    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_e

    :cond_8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_e
    return-object v0
.end method

.method public static exportAll()Ljava/lang/String;
    .registers 6

    .line 78
    nop

    .line 79
    nop

    .line 81
    const/4 v0, 0x0

    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lmdm/ConfigBackup;->backupFolder()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backup_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mdmcfg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_7d

    .line 84
    :try_start_33
    const-string v3, "keymaps"

    invoke-static {}, Lmdm/ConfigBackup;->keymapsDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lmdm/ConfigBackup;->addTree(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)V

    .line 85
    const-string v3, "generalrc"

    invoke-static {}, Lmdm/ConfigBackup;->generalRcDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lmdm/ConfigBackup;->addTree(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)V

    .line 86
    const-string v3, "gnyx"

    invoke-static {}, Lmdm/ConfigBackup;->gnyxRcDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lmdm/ConfigBackup;->addTree(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)V

    .line 87
    const-string v3, "prefs"

    invoke-static {}, Lmdm/ConfigBackup;->sharedPrefsDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lmdm/ConfigBackup;->addPrefs(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)V

    .line 89
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5a
    .catchall {:try_start_33 .. :try_end_5a} :catchall_7b

    .line 90
    nop

    .line 91
    :try_start_5b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0110\u00e3 sao l\u01b0u c\u1ea5u h\u00ecnh:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmdm/ConfigBackup;->toast(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_79
    .catchall {:try_start_5b .. :try_end_79} :catchall_7d

    .line 97
    nop

    .line 92
    return-object v0

    .line 93
    :catchall_7b
    move-exception v1

    goto :goto_7f

    :catchall_7d
    move-exception v1

    move-object v2, v0

    .line 94
    :goto_7f
    :try_start_7f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sao l\u01b0u l\u1ed7i: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmdm/ConfigBackup;->toast(Ljava/lang/String;)V
    :try_end_95
    .catchall {:try_start_7f .. :try_end_95} :catchall_9e

    .line 95
    nop

    .line 97
    if-eqz v2, :cond_9d

    :try_start_98
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_9c

    goto :goto_9d

    :catchall_9c
    move-exception v1

    .line 95
    :cond_9d
    :goto_9d
    return-object v0

    .line 97
    :catchall_9e
    move-exception v0

    if-eqz v2, :cond_a6

    :try_start_a1
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_a5

    goto :goto_a6

    :catchall_a5
    move-exception v1

    .line 98
    :cond_a6
    :goto_a6
    throw v0
.end method

.method static generalRcDir()Ljava/io/File;
    .registers 3

    .line 48
    invoke-static {}, Lmdm/ConfigBackup;->docFolder()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_10

    :cond_8
    new-instance v1, Ljava/io/File;

    const-string v2, "GeneralRC/RCConfig"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    :goto_10
    return-object v0
.end method

.method static gnyxRcDir()Ljava/io/File;
    .registers 3

    .line 50
    invoke-static {}, Lmdm/ConfigBackup;->docFolder()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_10

    :cond_8
    new-instance v1, Ljava/io/File;

    const-string v2, "gnyxExtension/RCConfig"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    :goto_10
    return-object v0
.end method

.method static importFrom(Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 178
    nop

    .line 180
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_5d

    .line 182
    :goto_c
    :try_start_c
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-eqz p0, :cond_54

    .line 183
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_c

    .line 184
    :cond_1c
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmdm/ConfigBackup;->targetFor(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 185
    if-eqz p0, :cond_50

    .line 186
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 187
    if-eqz v2, :cond_35

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_35

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_35
    .catchall {:try_start_c .. :try_end_35} :catchall_5a

    .line 188
    :cond_35
    nop

    .line 189
    :try_start_36
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_47

    :try_start_3b
    invoke-static {v1, v2}, Lmdm/ConfigBackup;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_44

    .line 190
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_50

    :catchall_42
    move-exception p0

    goto :goto_50

    :catchall_44
    move-exception p0

    move-object v0, v2

    goto :goto_48

    :catchall_47
    move-exception p0

    :goto_48
    if-eqz v0, :cond_4f

    :try_start_4a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_4f

    :catchall_4e
    move-exception v0

    :cond_4f
    :goto_4f
    :try_start_4f
    throw p0

    .line 192
    :cond_50
    :goto_50
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_5a

    .line 193
    goto :goto_c

    .line 195
    :cond_54
    :try_start_54
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_59

    :catchall_58
    move-exception p0

    .line 197
    :goto_59
    return-void

    .line 195
    :catchall_5a
    move-exception p0

    move-object v0, v1

    goto :goto_5e

    :catchall_5d
    move-exception p0

    :goto_5e
    if-eqz v0, :cond_65

    :try_start_60
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    goto :goto_65

    :catchall_64
    move-exception v0

    .line 196
    :cond_65
    :goto_65
    throw p0
.end method

.method public static importLatestAndRestart()V
    .registers 4

    .line 104
    :try_start_0
    invoke-static {}, Lmdm/ConfigBackup;->newestBackup()Ljava/io/File;

    move-result-object v0

    .line 105
    if-nez v0, :cond_25

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Kh\u00f4ng t\u00ecm th\u1ea5y file .mdmcfg trong:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lmdm/ConfigBackup;->backupFolder()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmdm/ConfigBackup;->toast(Ljava/lang/String;)V

    .line 107
    return-void

    .line 109
    :cond_25
    invoke-static {v0}, Lmdm/ConfigBackup;->importFrom(Ljava/io/File;)V

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0110\u00e3 kh\u00f4i ph\u1ee5c t\u1eeb "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\u0110ang kh\u1edfi \u0111\u1ed9ng l\u1ea1i..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmdm/ConfigBackup;->toast(Ljava/lang/String;)V

    .line 111
    sget-object v0, Lmdm/ConfigBackup;->MAIN:Landroid/os/Handler;

    new-instance v1, Lmdm/ConfigBackup$2;

    invoke-direct {v1}, Lmdm/ConfigBackup$2;-><init>()V

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_54
    .catchall {:try_start_0 .. :try_end_54} :catchall_55

    .line 114
    goto :goto_6c

    .line 112
    :catchall_55
    move-exception v0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kh\u00f4i ph\u1ee5c l\u1ed7i: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmdm/ConfigBackup;->toast(Ljava/lang/String;)V

    .line 115
    :goto_6c
    return-void
.end method

.method static keymapsDir()Ljava/io/File;
    .registers 3

    .line 41
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "mdm_keymaps"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static newestBackup()Ljava/io/File;
    .registers 9

    .line 118
    invoke-static {}, Lmdm/ConfigBackup;->backupFolder()Ljava/io/File;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 120
    nop

    .line 121
    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    .line 122
    array-length v2, v0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_3a

    aget-object v4, v0, v3

    .line 123
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".mdmcfg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 124
    if-eqz v1, :cond_36

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_37

    :cond_36
    move-object v1, v4

    .line 122
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 128
    :cond_3a
    return-object v1
.end method

.method static restart()V
    .registers 3

    .line 218
    :try_start_0
    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 220
    if-eqz v1, :cond_1d

    .line 221
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 222
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    goto :goto_1d

    .line 224
    :catchall_1c
    move-exception v0

    :cond_1d
    :goto_1d
    nop

    .line 225
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exit(I)V

    .line 226
    return-void
.end method

.method static sharedPrefsDir()Ljava/io/File;
    .registers 3

    .line 53
    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 54
    const/4 v1, 0x0

    if-nez v0, :cond_d

    move-object v0, v1

    goto :goto_11

    :cond_d
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 55
    :goto_11
    if-nez v0, :cond_14

    goto :goto_1b

    :cond_14
    new-instance v1, Ljava/io/File;

    const-string v2, "shared_prefs"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1b
    return-object v1
.end method

.method static targetFor(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 201
    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 202
    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    return-object v1

    .line 203
    :cond_12
    const-string v0, "keymaps/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lmdm/ConfigBackup;->keymapsDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 204
    :cond_2c
    const-string v0, "generalrc/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-static {}, Lmdm/ConfigBackup;->generalRcDir()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_3b

    goto :goto_48

    :cond_3b
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_48
    return-object v1

    .line 205
    :cond_49
    const-string v0, "gnyx/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-static {}, Lmdm/ConfigBackup;->gnyxRcDir()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_58

    goto :goto_65

    :cond_58
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_65
    return-object v1

    .line 206
    :cond_66
    const-string v0, "prefs/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-static {}, Lmdm/ConfigBackup;->sharedPrefsDir()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_75

    goto :goto_82

    :cond_75
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_82
    return-object v1

    .line 207
    :cond_83
    return-object v1
.end method

.method static toast(Ljava/lang/String;)V
    .registers 3

    .line 67
    sget-object v0, Lmdm/ConfigBackup;->MAIN:Landroid/os/Handler;

    new-instance v1, Lmdm/ConfigBackup$1;

    invoke-direct {v1, p0}, Lmdm/ConfigBackup$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method

.method static writeEntry(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 165
    nop

    .line 167
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_1e

    .line 168
    :try_start_7
    new-instance p2, Ljava/util/zip/ZipEntry;

    invoke-direct {p2, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 169
    invoke-static {v1, p0}, Lmdm/ConfigBackup;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 170
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_1b

    .line 172
    :try_start_15
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_1a

    :catchall_19
    move-exception p0

    .line 174
    :goto_1a
    return-void

    .line 172
    :catchall_1b
    move-exception p0

    move-object v0, v1

    goto :goto_1f

    :catchall_1e
    move-exception p0

    :goto_1f
    if-eqz v0, :cond_26

    :try_start_21
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_26

    :catchall_25
    move-exception p1

    .line 173
    :cond_26
    :goto_26
    throw p0
.end method
