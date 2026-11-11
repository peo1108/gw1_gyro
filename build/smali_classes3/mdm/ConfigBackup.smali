.class public final Lmdm/ConfigBackup;
.super Ljava/lang/Object;
.source "ConfigBackup.java"


# static fields
.field static final MAIN:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lmdm/ConfigBackup;->MAIN:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 39
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

    .line 158
    if-eqz p2, :cond_54

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_54

    .line 159
    :cond_f
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    .line 160
    if-nez p2, :cond_16

    return-void

    .line 161
    :cond_16
    array-length v0, p2

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_53

    aget-object v2, p2, v1

    .line 162
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

    .line 163
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

    .line 161
    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 166
    :cond_53
    return-void

    .line 158
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

    .line 137
    if-eqz p2, :cond_82

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_82

    .line 138
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    .line 141
    :goto_20
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_81

    .line 142
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 143
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 144
    if-nez v1, :cond_39

    goto :goto_20

    .line 145
    :cond_39
    array-length v3, v1

    const/4 v4, 0x0

    :goto_3b
    if-ge v4, v3, :cond_80

    aget-object v5, v1, v4

    .line 146
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_49

    .line 147
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    .line 149
    :cond_49
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x5c

    const/16 v8, 0x2f

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 150
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_65

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 151
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

    .line 145
    :goto_7d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 154
    :cond_80
    goto :goto_20

    .line 155
    :cond_81
    return-void

    .line 137
    :cond_82
    :goto_82
    return-void
.end method

.method static backupFolder()Ljava/io/File;
    .registers 3

    .line 62
    invoke-static {}, Lmdm/ConfigBackup;->docFolder()Ljava/io/File;

    move-result-object v0

    .line 63
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

    .line 64
    :goto_1c
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 65
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

    .line 227
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 229
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_f

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    .line 230
    :cond_f
    return-void
.end method

.method static docFolder()Ljava/io/File;
    .registers 2

    .line 45
    invoke-static {}, Lcom/zjx/jyandroid/App;->getAppDocumentFolder()Ljava/lang/String;

    move-result-object v0

    .line 46
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

    .line 81
    nop

    .line 82
    nop

    .line 84
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

    .line 85
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_86

    .line 87
    :try_start_33
    const-string v3, "keymaps"

    invoke-static {}, Lmdm/ConfigBackup;->keymapsDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lmdm/ConfigBackup;->addTree(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)V

    .line 88
    const-string v3, "generalrc"

    invoke-static {}, Lmdm/ConfigBackup;->generalRcDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lmdm/ConfigBackup;->addTree(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)V

    .line 89
    const-string v3, "gnyx"

    invoke-static {}, Lmdm/ConfigBackup;->gnyxRcDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lmdm/ConfigBackup;->addTree(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)V

    .line 90
    const-string v3, "pubgrc"

    invoke-static {}, Lmdm/ConfigBackup;->pubgRcDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lmdm/ConfigBackup;->addTree(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)V

    .line 91
    const-string v3, "prefs"

    invoke-static {}, Lmdm/ConfigBackup;->sharedPrefsDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lmdm/ConfigBackup;->addPrefs(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)V

    .line 93
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_63
    .catchall {:try_start_33 .. :try_end_63} :catchall_84

    .line 94
    nop

    .line 95
    :try_start_64
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

    .line 96
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_82
    .catchall {:try_start_64 .. :try_end_82} :catchall_86

    .line 101
    nop

    .line 96
    return-object v0

    .line 97
    :catchall_84
    move-exception v1

    goto :goto_88

    :catchall_86
    move-exception v1

    move-object v2, v0

    .line 98
    :goto_88
    :try_start_88
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
    :try_end_9e
    .catchall {:try_start_88 .. :try_end_9e} :catchall_a7

    .line 99
    nop

    .line 101
    if-eqz v2, :cond_a6

    :try_start_a1
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_a5

    goto :goto_a6

    :catchall_a5
    move-exception v1

    .line 99
    :cond_a6
    :goto_a6
    return-object v0

    .line 101
    :catchall_a7
    move-exception v0

    if-eqz v2, :cond_af

    :try_start_aa
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_ae

    goto :goto_af

    :catchall_ae
    move-exception v1

    .line 102
    :cond_af
    :goto_af
    throw v0
.end method

.method static generalRcDir()Ljava/io/File;
    .registers 3

    .line 49
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

    .line 53
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
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 182
    nop

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    const/4 v1, 0x0

    :try_start_7
    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_a3

    .line 187
    :goto_11
    :try_start_11
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-eqz p0, :cond_75

    .line 188
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_11

    .line 189
    :cond_21
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmdm/ConfigBackup;->targetFor(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 192
    if-eqz p0, :cond_45

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".v1.bak.json"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_45

    move-object p0, v1

    .line 193
    :cond_45
    if-eqz p0, :cond_71

    .line 194
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 195
    if-eqz v3, :cond_56

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_56

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_56
    .catchall {:try_start_11 .. :try_end_56} :catchall_a0

    .line 196
    :cond_56
    nop

    .line 197
    :try_start_57
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_68

    :try_start_5c
    invoke-static {v2, v3}, Lmdm/ConfigBackup;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_65

    .line 198
    :try_start_5f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    goto :goto_71

    :catchall_63
    move-exception p0

    goto :goto_71

    :catchall_65
    move-exception p0

    move-object v1, v3

    goto :goto_69

    :catchall_68
    move-exception p0

    :goto_69
    if-eqz v1, :cond_70

    :try_start_6b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    goto :goto_70

    :catchall_6f
    move-exception v0

    :cond_70
    :goto_70
    :try_start_70
    throw p0

    .line 200
    :cond_71
    :goto_71
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_a0

    .line 201
    goto :goto_11

    .line 203
    :cond_75
    :try_start_75
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_79

    goto :goto_7a

    :catchall_79
    move-exception p0

    .line 206
    :goto_7a
    invoke-static {}, Lmdm/ConfigBackup;->pubgRcDir()Ljava/io/File;

    move-result-object p0

    .line 207
    if-eqz p0, :cond_9f

    .line 208
    invoke-static {v0}, Lmdm/RcStore;->staleLiveIds(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_88
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 209
    :try_start_94
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_9c
    .catchall {:try_start_94 .. :try_end_9c} :catchall_9d

    goto :goto_9e

    :catchall_9d
    move-exception v1

    .line 210
    :goto_9e
    goto :goto_88

    .line 212
    :cond_9f
    return-void

    .line 203
    :catchall_a0
    move-exception p0

    move-object v1, v2

    goto :goto_a4

    :catchall_a3
    move-exception p0

    :goto_a4
    if-eqz v1, :cond_ab

    :try_start_a6
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_aa

    goto :goto_ab

    :catchall_aa
    move-exception v0

    .line 204
    :cond_ab
    :goto_ab
    throw p0
.end method

.method public static importLatestAndRestart()V
    .registers 4

    .line 108
    :try_start_0
    invoke-static {}, Lmdm/ConfigBackup;->newestBackup()Ljava/io/File;

    move-result-object v0

    .line 109
    if-nez v0, :cond_25

    .line 110
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

    .line 111
    return-void

    .line 113
    :cond_25
    invoke-static {v0}, Lmdm/ConfigBackup;->importFrom(Ljava/io/File;)V

    .line 114
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

    .line 115
    sget-object v0, Lmdm/ConfigBackup;->MAIN:Landroid/os/Handler;

    new-instance v1, Lmdm/ConfigBackup$2;

    invoke-direct {v1}, Lmdm/ConfigBackup$2;-><init>()V

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_54
    .catchall {:try_start_0 .. :try_end_54} :catchall_55

    .line 118
    goto :goto_6c

    .line 116
    :catchall_55
    move-exception v0

    .line 117
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

    .line 119
    :goto_6c
    return-void
.end method

.method static keymapsDir()Ljava/io/File;
    .registers 3

    .line 42
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

    .line 122
    invoke-static {}, Lmdm/ConfigBackup;->backupFolder()Ljava/io/File;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 124
    nop

    .line 125
    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    .line 126
    array-length v2, v0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_3a

    aget-object v4, v0, v3

    .line 127
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

    .line 128
    if-eqz v1, :cond_36

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_37

    :cond_36
    move-object v1, v4

    .line 126
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 132
    :cond_3a
    return-object v1
.end method

.method static pubgRcDir()Ljava/io/File;
    .registers 3

    .line 51
    invoke-static {}, Lmdm/ConfigBackup;->docFolder()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_10

    :cond_8
    new-instance v1, Ljava/io/File;

    const-string v2, "pubg_extension/RCConfig"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    :goto_10
    return-object v0
.end method

.method static restart()V
    .registers 3

    .line 234
    :try_start_0
    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 236
    if-eqz v1, :cond_1d

    .line 237
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 238
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    goto :goto_1d

    .line 240
    :catchall_1c
    move-exception v0

    :cond_1d
    :goto_1d
    nop

    .line 241
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exit(I)V

    .line 242
    return-void
.end method

.method static sharedPrefsDir()Ljava/io/File;
    .registers 3

    .line 56
    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 57
    const/4 v1, 0x0

    if-nez v0, :cond_d

    move-object v0, v1

    goto :goto_11

    :cond_d
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 58
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

    .line 216
    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 217
    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    return-object v1

    .line 218
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

    .line 219
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

    .line 220
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

    .line 221
    :cond_66
    const-string v0, "pubgrc/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-static {}, Lmdm/ConfigBackup;->pubgRcDir()Ljava/io/File;

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

    .line 222
    :cond_83
    const-string v0, "prefs/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a0

    invoke-static {}, Lmdm/ConfigBackup;->sharedPrefsDir()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_92

    goto :goto_9f

    :cond_92
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_9f
    return-object v1

    .line 223
    :cond_a0
    return-object v1
.end method

.method static toast(Ljava/lang/String;)V
    .registers 3

    .line 70
    sget-object v0, Lmdm/ConfigBackup;->MAIN:Landroid/os/Handler;

    new-instance v1, Lmdm/ConfigBackup$1;

    invoke-direct {v1, p0}, Lmdm/ConfigBackup$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method

.method static writeEntry(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 169
    nop

    .line 171
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_1e

    .line 172
    :try_start_7
    new-instance p2, Ljava/util/zip/ZipEntry;

    invoke-direct {p2, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 173
    invoke-static {v1, p0}, Lmdm/ConfigBackup;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 174
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_1b

    .line 176
    :try_start_15
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_1a

    :catchall_19
    move-exception p0

    .line 178
    :goto_1a
    return-void

    .line 176
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

    .line 177
    :cond_26
    :goto_26
    throw p0
.end method
