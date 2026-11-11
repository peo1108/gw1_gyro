.class public final Lcom/tencent/bugly/proguard/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/w$a;
    }
.end annotation


# static fields
.field public static a:Z

.field private static b:Lcom/tencent/bugly/proguard/w;

.field private static c:Lcom/tencent/bugly/proguard/x;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/o;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/bugly/proguard/x;

    invoke-direct {v0, p1, p2}, Lcom/tencent/bugly/proguard/x;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v0, Lcom/tencent/bugly/proguard/w;->c:Lcom/tencent/bugly/proguard/x;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/bugly/proguard/w;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/v;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/v;)I

    move-result p0

    return p0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/v;)I
    .locals 2

    monitor-enter p0

    const/4 p4, 0x0

    const/4 v0, 0x0

    .line 33
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/w;->c:Lcom/tencent/bugly/proguard/x;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/x;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 35
    :cond_0
    :goto_0
    :try_start_1
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 36
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_6

    .line 37
    :goto_2
    :try_start_2
    invoke-static {p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_5

    .line 39
    :cond_1
    :goto_3
    :try_start_3
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    goto :goto_1

    .line 40
    :cond_2
    :goto_4
    monitor-exit p0

    return p4

    .line 41
    :goto_5
    :try_start_4
    sget-boolean p2, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    .line 42
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 43
    :cond_3
    throw p1

    :goto_6
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public static synthetic a(Lcom/tencent/bugly/proguard/w;Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/v;)J
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/v;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic a(Lcom/tencent/bugly/proguard/w;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/v;)Landroid/database/Cursor;
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p10}, Lcom/tencent/bugly/proguard/w;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/v;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/v;)Landroid/database/Cursor;
    .locals 12

    monitor-enter p0

    const/4 v1, 0x0

    .line 27
    :try_start_0
    sget-object v0, Lcom/tencent/bugly/proguard/w;->c:Lcom/tencent/bugly/proguard/x;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/x;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    .line 28
    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 29
    :try_start_1
    invoke-static {v0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 32
    :goto_1
    :try_start_2
    throw v0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/proguard/w;
    .locals 2

    const-class v0, Lcom/tencent/bugly/proguard/w;

    monitor-enter v0

    .line 10
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/w;->b:Lcom/tencent/bugly/proguard/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/proguard/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/o;",
            ">;)",
            "Lcom/tencent/bugly/proguard/w;"
        }
    .end annotation

    const-class v0, Lcom/tencent/bugly/proguard/w;

    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/w;->b:Lcom/tencent/bugly/proguard/w;

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/tencent/bugly/proguard/w;

    invoke-direct {v1, p0, p1}, Lcom/tencent/bugly/proguard/w;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v1, Lcom/tencent/bugly/proguard/w;->b:Lcom/tencent/bugly/proguard/w;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 9
    :cond_0
    :goto_0
    sget-object p0, Lcom/tencent/bugly/proguard/w;->b:Lcom/tencent/bugly/proguard/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/y;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 143
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tencent/bugly/proguard/y;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/y;-><init>()V

    .line 144
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/y;->a:J

    .line 145
    const-string v2, "_tp"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/tencent/bugly/proguard/y;->b:I

    .line 146
    const-string v2, "_pc"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/y;->c:Ljava/lang/String;

    .line 147
    const-string v2, "_th"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/y;->d:Ljava/lang/String;

    .line 148
    const-string v2, "_tm"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/y;->e:J

    .line 149
    const-string v2, "_dt"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    iput-object p0, v1, Lcom/tencent/bugly/proguard/y;->g:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    .line 150
    invoke-static {p0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method public static synthetic a(Lcom/tencent/bugly/proguard/w;ILcom/tencent/bugly/proguard/v;)Ljava/util/Map;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/w;->a(ILcom/tencent/bugly/proguard/v;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(ILjava/lang/String;Lcom/tencent/bugly/proguard/v;)Z
    .locals 4

    monitor-enter p0

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 152
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/w;->c:Lcom/tencent/bugly/proguard/x;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/x;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_1

    .line 153
    :try_start_1
    invoke-static {p2}, Lcom/tencent/bugly/proguard/ap;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    const-string p2, "_id = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    .line 155
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and _tp = \""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 156
    :goto_0
    const-string p2, "t_pf"

    invoke-virtual {v1, p2, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 157
    const-string p2, "[Database] deleted %s data %d"

    const-string v0, "t_pf"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez p1, :cond_1

    const/4 p3, 0x1

    .line 158
    :cond_1
    :try_start_2
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    .line 159
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catchall_2
    move-exception p1

    .line 160
    :goto_1
    :try_start_3
    invoke-static {p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 161
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    goto :goto_4

    .line 162
    :cond_2
    :goto_2
    :try_start_4
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 163
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 164
    :cond_3
    :goto_3
    monitor-exit p0

    return p3

    .line 165
    :goto_4
    :try_start_5
    sget-boolean p2, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    .line 166
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 167
    :cond_4
    throw p1

    :goto_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method private a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/v;)Z
    .locals 2

    .line 48
    :try_start_0
    new-instance p4, Lcom/tencent/bugly/proguard/y;

    invoke-direct {p4}, Lcom/tencent/bugly/proguard/y;-><init>()V

    int-to-long v0, p1

    .line 49
    iput-wide v0, p4, Lcom/tencent/bugly/proguard/y;->a:J

    .line 50
    iput-object p2, p4, Lcom/tencent/bugly/proguard/y;->f:Ljava/lang/String;

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p4, Lcom/tencent/bugly/proguard/y;->e:J

    .line 52
    iput-object p3, p4, Lcom/tencent/bugly/proguard/y;->g:[B

    .line 53
    invoke-direct {p0, p4}, Lcom/tencent/bugly/proguard/w;->b(Lcom/tencent/bugly/proguard/y;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 54
    invoke-static {p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 55
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic a(Lcom/tencent/bugly/proguard/w;ILjava/lang/String;Lcom/tencent/bugly/proguard/v;)Z
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/w;->a(ILjava/lang/String;Lcom/tencent/bugly/proguard/v;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/tencent/bugly/proguard/w;ILjava/lang/String;[BLcom/tencent/bugly/proguard/v;)Z
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/w;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/v;)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/y;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 37
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tencent/bugly/proguard/y;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/y;-><init>()V

    .line 38
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/y;->a:J

    .line 39
    const-string v2, "_tm"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/y;->e:J

    .line 40
    const-string v2, "_tp"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/y;->f:Ljava/lang/String;

    .line 41
    const-string v2, "_dt"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    iput-object p0, v1, Lcom/tencent/bugly/proguard/y;->g:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    .line 42
    invoke-static {p0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 43
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method private declared-synchronized b(Lcom/tencent/bugly/proguard/y;)Z
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sget-object v2, Lcom/tencent/bugly/proguard/w;->c:Lcom/tencent/bugly/proguard/x;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/x;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2
    invoke-static {p1}, Lcom/tencent/bugly/proguard/w;->d(Lcom/tencent/bugly/proguard/y;)Landroid/content/ContentValues;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3
    const-string v3, "t_pf"

    const-string v4, "_id"

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    .line 4
    const-string v4, "[Database] insert %s success."

    const-string v5, "t_pf"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 5
    iput-wide v2, p1, Lcom/tencent/bugly/proguard/y;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 8
    :cond_0
    :goto_0
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_1
    move-exception p1

    goto :goto_1

    .line 9
    :cond_1
    :try_start_2
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :cond_2
    monitor-exit p0

    return v0

    .line 12
    :cond_3
    :try_start_3
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    :cond_4
    monitor-exit p0

    return v0

    .line 15
    :goto_1
    :try_start_4
    invoke-static {p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_3

    .line 17
    :cond_5
    :goto_2
    :try_start_5
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_6

    if-eqz v1, :cond_6

    .line 18
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 19
    :cond_6
    monitor-exit p0

    return v0

    .line 20
    :goto_3
    :try_start_6
    sget-boolean v0, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 21
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 22
    :cond_7
    throw p1

    :goto_4
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method private static c(Lcom/tencent/bugly/proguard/y;)Landroid/content/ContentValues;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/y;->a:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 3
    const-string v4, "_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    const-string v2, "_tp"

    iget v3, p0, Lcom/tencent/bugly/proguard/y;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    const-string v2, "_pc"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/y;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string v2, "_th"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/y;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    const-string v2, "_tm"

    iget-wide v3, p0, Lcom/tencent/bugly/proguard/y;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 8
    iget-object p0, p0, Lcom/tencent/bugly/proguard/y;->g:[B

    if-eqz p0, :cond_2

    .line 9
    const-string v2, "_dt"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object v1

    .line 10
    :goto_1
    invoke-static {p0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-object v0
.end method

.method private declared-synchronized c(I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/y;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 12
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/w;->c:Lcom/tencent/bugly/proguard/x;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/x;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v1, :cond_7

    .line 13
    :try_start_1
    const-string v2, "_id = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 14
    const-string v3, "t_pf"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-object v5, v10

    .line 15
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v2, :cond_2

    if-eqz v2, :cond_0

    .line 16
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    .line 17
    :cond_0
    :goto_0
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_1

    .line 18
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    :cond_1
    monitor-exit p0

    return-object v0

    .line 20
    :cond_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 22
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 23
    invoke-static {v2}, Lcom/tencent/bugly/proguard/w;->b(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/y;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 24
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 25
    :cond_3
    :try_start_4
    const-string v5, "_tp"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 26
    const-string v6, " or _tp = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 27
    :catchall_2
    :try_start_5
    const-string v5, "[Database] unknown id."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 28
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 29
    const-string v5, " and _id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 p1, 0x4

    .line 30
    invoke-virtual {v10, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 31
    const-string v3, "t_pf"

    invoke-virtual {v1, v3, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 32
    const-string v3, "[Database] deleted %s illegal data %d."

    const-string v5, "t_pf"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v5, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 33
    :cond_5
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 34
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_6

    .line 35
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 36
    :cond_6
    monitor-exit p0

    return-object v4

    :catchall_3
    move-exception p1

    move-object v2, v0

    goto :goto_3

    .line 37
    :cond_7
    :try_start_7
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_a

    if-eqz v1, :cond_a

    .line 38
    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    :catchall_4
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    .line 39
    :goto_3
    :try_start_8
    invoke-static {p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    goto :goto_6

    :cond_8
    :goto_4
    if-eqz v2, :cond_9

    .line 41
    :try_start_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 42
    :cond_9
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz p1, :cond_a

    if-eqz v1, :cond_a

    goto :goto_2

    .line 43
    :cond_a
    :goto_5
    monitor-exit p0

    return-object v0

    :goto_6
    if-eqz v2, :cond_b

    .line 44
    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 45
    :cond_b
    sget-boolean v0, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    .line 46
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 47
    :cond_c
    throw p1

    :goto_7
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw p1
.end method

.method private static d(Lcom/tencent/bugly/proguard/y;)Landroid/content/ContentValues;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    iget-object v1, p0, Lcom/tencent/bugly/proguard/y;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ap;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/y;->a:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    const-string v4, "_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, "_tp"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/y;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_tm"

    iget-wide v3, p0, Lcom/tencent/bugly/proguard/y;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p0, p0, Lcom/tencent/bugly/proguard/y;->g:[B

    if-eqz p0, :cond_2

    const-string v2, "_dt"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object v1

    :goto_1
    invoke-static {p0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/v;)I

    move-result p1

    return p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/v;)J
    .locals 6

    monitor-enter p0

    const-wide/16 v0, -0x1

    const/4 p3, 0x0

    .line 14
    :try_start_0
    sget-object v2, Lcom/tencent/bugly/proguard/w;->c:Lcom/tencent/bugly/proguard/x;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/x;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 15
    const-string v2, "_id"

    invoke-virtual {p3, p1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-ltz p2, :cond_0

    .line 16
    const-string p2, "[Database] insert %s success."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 17
    :cond_0
    const-string p2, "[Database] replace %s error."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-wide v0, v2

    .line 18
    :cond_1
    :try_start_1
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 19
    :goto_1
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_6

    .line 20
    :goto_2
    :try_start_2
    invoke-static {p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_5

    .line 22
    :cond_2
    :goto_3
    :try_start_3
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    goto :goto_1

    .line 23
    :cond_3
    :goto_4
    monitor-exit p0

    return-wide v0

    .line 24
    :goto_5
    :try_start_4
    sget-boolean p2, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 25
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 26
    :cond_4
    throw p1

    :goto_6
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    move-object/from16 v9, p5

    .line 12
    invoke-direct/range {v0 .. v10}, Lcom/tencent/bugly/proguard/w;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/v;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a(I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/y;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 85
    :try_start_0
    sget-object v0, Lcom/tencent/bugly/proguard/w;->c:Lcom/tencent/bugly/proguard/x;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/x;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v9, 0x0

    if-eqz v0, :cond_c

    if-ltz p1, :cond_0

    .line 86
    :try_start_1
    const-string v1, "_tp = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v9

    goto/16 :goto_3

    :cond_0
    move-object v4, v9

    .line 87
    :goto_0
    const-string v2, "t_lr"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    .line 88
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_3

    if-eqz p1, :cond_1

    .line 89
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto/16 :goto_7

    .line 90
    :cond_1
    :goto_1
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_2

    .line 91
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    :cond_2
    monitor-exit p0

    return-object v9

    .line 93
    :cond_3
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 96
    invoke-static {p1}, Lcom/tencent/bugly/proguard/w;->a(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/y;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 97
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v10, v1

    move-object v1, p1

    move-object p1, v10

    goto :goto_3

    .line 98
    :cond_4
    :try_start_4
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 99
    const-string v5, " or _id = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    .line 101
    :catchall_3
    :try_start_5
    const-string v3, "[Database] unknown id."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_2

    .line 102
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    const/4 v3, 0x4

    .line 104
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    const-string v3, "t_lr"

    invoke-virtual {v0, v3, v1, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 106
    const-string v3, "[Database] deleted %s illegal data %d"

    const-string v4, "t_lr"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 107
    :cond_6
    :try_start_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 108
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_7

    .line 109
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 110
    :cond_7
    monitor-exit p0

    return-object v2

    .line 111
    :goto_3
    :try_start_7
    invoke-static {p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 112
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p1

    goto :goto_5

    :cond_8
    :goto_4
    if-eqz v1, :cond_9

    .line 113
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_9
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_c

    .line 115
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_6

    :goto_5
    if-eqz v1, :cond_a

    .line 116
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 117
    :cond_a
    sget-boolean v1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz v1, :cond_b

    .line 118
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 119
    :cond_b
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 120
    :cond_c
    :goto_6
    monitor-exit p0

    return-object v9

    :goto_7
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw p1
.end method

.method public final a(ILcom/tencent/bugly/proguard/v;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tencent/bugly/proguard/v;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    const/4 p2, 0x0

    .line 56
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/w;->c(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/bugly/proguard/y;

    .line 59
    iget-object v1, p2, Lcom/tencent/bugly/proguard/y;->g:[B

    if-eqz v1, :cond_0

    .line 60
    iget-object p2, p2, Lcom/tencent/bugly/proguard/y;->f:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object p2, v0

    goto :goto_1

    :cond_1
    move-object p2, v0

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 61
    :goto_1
    invoke-static {p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-object p2
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/y;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_6

    .line 121
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 122
    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/w;->c:Lcom/tencent/bugly/proguard/x;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/x;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/y;

    .line 125
    const-string v3, " or _id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v2, Lcom/tencent/bugly/proguard/y;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 126
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x4

    .line 128
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const/4 v2, 0x0

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :try_start_1
    const-string v1, "t_lr"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 131
    const-string v1, "[Database] deleted %s data %d"

    const-string v2, "t_lr"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    :try_start_2
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_5

    .line 133
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    .line 134
    :try_start_3
    invoke-static {p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 135
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    goto :goto_2

    .line 136
    :cond_3
    :goto_1
    :try_start_4
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_5

    .line 137
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    .line 138
    :goto_2
    :try_start_5
    sget-boolean v1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz v1, :cond_4

    .line 139
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 140
    :cond_4
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 141
    :cond_5
    monitor-exit p0

    return-void

    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1

    .line 142
    :cond_6
    :goto_4
    monitor-exit p0

    return-void
.end method

.method public final a(ILjava/lang/String;[BZ)Z
    .locals 0

    if-nez p4, :cond_0

    .line 44
    new-instance p4, Lcom/tencent/bugly/proguard/w$a;

    invoke-direct {p4, p0}, Lcom/tencent/bugly/proguard/w$a;-><init>(Lcom/tencent/bugly/proguard/w;)V

    .line 45
    invoke-virtual {p4, p1, p2, p3}, Lcom/tencent/bugly/proguard/w$a;->a(ILjava/lang/String;[B)V

    .line 46
    invoke-static {}, Lcom/tencent/bugly/proguard/ak;->a()Lcom/tencent/bugly/proguard/ak;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/tencent/bugly/proguard/ak;->a(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p4, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/w;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/v;)Z

    move-result p1

    return p1
.end method

.method public final declared-synchronized a(Lcom/tencent/bugly/proguard/y;)Z
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    :try_start_0
    sget-object v2, Lcom/tencent/bugly/proguard/w;->c:Lcom/tencent/bugly/proguard/x;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/x;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 64
    invoke-static {p1}, Lcom/tencent/bugly/proguard/w;->c(Lcom/tencent/bugly/proguard/y;)Landroid/content/ContentValues;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 65
    const-string v3, "t_lr"

    const-string v4, "_id"

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    .line 66
    const-string v4, "[Database] insert %s success."

    const-string v5, "t_lr"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 67
    iput-wide v2, p1, Lcom/tencent/bugly/proguard/y;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    :try_start_1
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 70
    :cond_0
    :goto_0
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_1
    move-exception p1

    goto :goto_1

    .line 71
    :cond_1
    :try_start_2
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_2

    .line 72
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    :cond_2
    monitor-exit p0

    return v0

    .line 74
    :cond_3
    :try_start_3
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    .line 75
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    :cond_4
    monitor-exit p0

    return v0

    .line 77
    :goto_1
    :try_start_4
    invoke-static {p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 78
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_3

    .line 79
    :cond_5
    :goto_2
    :try_start_5
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_6

    if-eqz v1, :cond_6

    .line 80
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 81
    :cond_6
    monitor-exit p0

    return v0

    .line 82
    :goto_3
    :try_start_6
    sget-boolean v0, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 83
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 84
    :cond_7
    throw p1

    :goto_4
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b(I)V
    .locals 3

    monitor-enter p0

    .line 23
    :try_start_0
    sget-object v0, Lcom/tencent/bugly/proguard/w;->c:Lcom/tencent/bugly/proguard/x;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/x;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    .line 24
    :try_start_1
    const-string v2, "_tp = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object p1, v1

    .line 25
    :goto_0
    const-string v2, "t_lr"

    invoke-virtual {v0, v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 26
    const-string v1, "[Database] deleted %s data %d"

    const-string v2, "t_lr"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :try_start_2
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_3

    .line 28
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_4

    .line 29
    :goto_1
    :try_start_3
    invoke-static {p1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_3

    .line 31
    :cond_1
    :goto_2
    :try_start_4
    sget-boolean p1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz p1, :cond_3

    .line 32
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    .line 33
    :goto_3
    :try_start_5
    sget-boolean v1, Lcom/tencent/bugly/proguard/w;->a:Z

    if-eqz v1, :cond_2

    .line 34
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 35
    :cond_2
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 36
    :cond_3
    monitor-exit p0

    return-void

    :goto_4
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method
