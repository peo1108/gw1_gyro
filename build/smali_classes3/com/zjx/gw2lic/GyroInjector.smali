.class public final Lcom/zjx/gw2lic/GyroInjector;
.super Ljava/lang/Object;
.source "GyroInjector.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LIVE:Ljava/lang/String;

.field private static final MARKER_NAME:Ljava/lang/String; = "__sensor_calib_chan\u0001"

.field private static final MODULE_RC:I = 0x4d

.field private static final RULE_CONNECT:Ljava/lang/String;

.field private static final RULE_EXEC:Ljava/lang/String;

.field private static final RULE_EXECMEM:Ljava/lang/String;

.field private static final RULE_EXECMOD:Ljava/lang/String;

.field private static final RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final SO_HOOK:Ljava/lang/String;

.field private static final SO_INJ:Ljava/lang/String;

.field private static final SO_POL:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field public static volatile gyroWanted:Z

.field private static volatile sInjectedOk:Z

.field private static volatile sModuleChecked:Z

.field private static volatile sModulePresent:Z

.field public static volatile useModule:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xa

    .line 39
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/zjx/gw2lic/GyroInjector;->dec([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zjx/gw2lic/GyroInjector;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 56
    sput-boolean v0, Lcom/zjx/gw2lic/GyroInjector;->gyroWanted:Z

    .line 66
    sput-boolean v0, Lcom/zjx/gw2lic/GyroInjector;->useModule:Z

    const/16 v1, 0x34

    .line 100
    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-static {v1}, Lcom/zjx/gw2lic/GyroInjector;->dec([I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zjx/gw2lic/GyroInjector;->RULE_EXEC:Ljava/lang/String;

    const/16 v1, 0x42

    .line 101
    new-array v1, v1, [I

    fill-array-data v1, :array_2

    invoke-static {v1}, Lcom/zjx/gw2lic/GyroInjector;->dec([I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zjx/gw2lic/GyroInjector;->RULE_CONNECT:Ljava/lang/String;

    const/16 v1, 0x31

    .line 102
    new-array v1, v1, [I

    fill-array-data v1, :array_3

    invoke-static {v1}, Lcom/zjx/gw2lic/GyroInjector;->dec([I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zjx/gw2lic/GyroInjector;->RULE_EXECMEM:Ljava/lang/String;

    const/16 v1, 0x2c

    .line 103
    new-array v1, v1, [I

    fill-array-data v1, :array_4

    invoke-static {v1}, Lcom/zjx/gw2lic/GyroInjector;->dec([I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zjx/gw2lic/GyroInjector;->RULE_EXECMOD:Ljava/lang/String;

    const/4 v1, 0x6

    .line 106
    new-array v1, v1, [I

    fill-array-data v1, :array_5

    invoke-static {v1}, Lcom/zjx/gw2lic/GyroInjector;->dec([I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zjx/gw2lic/GyroInjector;->LIVE:Ljava/lang/String;

    const/16 v1, 0x13

    .line 107
    new-array v1, v1, [I

    fill-array-data v1, :array_6

    invoke-static {v1}, Lcom/zjx/gw2lic/GyroInjector;->dec([I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zjx/gw2lic/GyroInjector;->SO_POL:Ljava/lang/String;

    const/16 v1, 0x11

    .line 108
    new-array v1, v1, [I

    fill-array-data v1, :array_7

    invoke-static {v1}, Lcom/zjx/gw2lic/GyroInjector;->dec([I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zjx/gw2lic/GyroInjector;->SO_INJ:Ljava/lang/String;

    const/16 v1, 0xf

    .line 109
    new-array v1, v1, [I

    fill-array-data v1, :array_8

    invoke-static {v1}, Lcom/zjx/gw2lic/GyroInjector;->dec([I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zjx/gw2lic/GyroInjector;->SO_HOOK:Ljava/lang/String;

    .line 118
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/zjx/gw2lic/GyroInjector;->RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 119
    sput-boolean v0, Lcom/zjx/gw2lic/GyroInjector;->sInjectedOk:Z

    .line 124
    sput-boolean v0, Lcom/zjx/gw2lic/GyroInjector;->sModulePresent:Z

    .line 125
    sput-boolean v0, Lcom/zjx/gw2lic/GyroInjector;->sModuleChecked:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x1d
        0xbe
        0x46
        0xce
        0x47
        0x15
        0x82
        0x30
        0xa1
        0x5b
    .end array-data

    :array_1
    .array-data 4
        0x3b
        0xab
        0x58
        0xce
        0x79
        0x5b
        0x9b
        0x2c
        0xb1
        0x5b
        0xf9
        0x64
        0x29
        0x90
        0x35
        0xcf
        0x5c
        0xf2
        0x76
        0x51
        0xad
        0x32
        0xcb
        0x51
        0xf7
        0x92
        0x33
        0xaa
        0x23
        0xc1
        0x56
        0xe8
        0x88
        0x38
        0xa0
        0x2c
        0xde
        0x7d
        0xfb
        0xd5
        0x4
        0xa6
        0x50
        0xcc
        0x36
        0xe6
        0x88
        0x38
        0xa9
        0x42
        0xd0
        0x74
    .end array-data

    :array_2
    .array-data 4
        0x3b
        0xab
        0x58
        0xce
        0x79
        0x5b
        0x9b
        0x2c
        0xb1
        0x5b
        0xf9
        0x64
        0x29
        0x90
        0x35
        0xcf
        0x5c
        0xf2
        0x76
        0x51
        0xab
        0x25
        0xcc
        0x57
        0xe7
        0x8c
        0x18
        0xbc
        0x22
        0xec
        0x41
        0xfd
        0x8a
        0x38
        0xb5
        0x2d
        0xc2
        0x3b
        0xfd
        0x9b
        0xb
        0xb7
        0x63
        0xda
        0x62
        0xf1
        0x95
        0x3c
        0xa7
        0x68
        0xd7
        0x7e
        0x1d
        0x80
        0x3d
        0xb1
        0x12
        0xfc
        0x63
        0x17
        0x88
        0x36
        0xa3
        0x59
        0xee
        0x68
    .end array-data

    :array_3
    .array-data 4
        0x3b
        0xab
        0x58
        0xce
        0x79
        0x5b
        0x9b
        0x2c
        0xb1
        0x5b
        0xf9
        0x64
        0x29
        0x90
        0x35
        0xcf
        0x5c
        0xf2
        0x76
        0x51
        0xad
        0x32
        0xcb
        0x51
        0xf7
        0x92
        0x33
        0xaa
        0x23
        0xc1
        0x56
        0xe8
        0x88
        0x47
        0xa4
        0x33
        0xc1
        0x78
        0xed
        0x86
        0x11
        0xef
        0x59
        0xd1
        0x73
        0xe0
        0x9d
        0x38
        0xa7
    .end array-data

    :array_4
    .array-data 4
        0x3b
        0xab
        0x58
        0xce
        0x79
        0x5b
        0x9b
        0x2c
        0xb1
        0x5b
        0xf9
        0x64
        0x29
        0x90
        0x35
        0xcf
        0x5c
        0xf2
        0x76
        0x51
        0xad
        0x32
        0xcb
        0x51
        0xf7
        0x92
        0x33
        0xbf
        0x2f
        0xdf
        0x45
        0xad
        0x9c
        0xe
        0xb8
        0x24
        0x8e
        0x7e
        0xf0
        0x90
        0x1
        0xa2
        0x53
        0xcd
    .end array-data

    :array_5
    .array-data 4
        0x77
        0xea
        0x58
        0xc8
        0x78
        0x1e
    .end array-data

    :array_6
    .array-data 4
        0x75
        0xab
        0x5d
        0xc3
        0x63
        0x1a
        0x8f
        0x3c
        0xb1
        0x44
        0xec
        0x66
        0x1a
        0x8a
        0x33
        0xc4
        0x4
        0xe4
        0x6b
    .end array-data

    :array_7
    .array-data 4
        0x75
        0xab
        0x5d
        0xc3
        0x69
        0x2
        0x9a
        0x3a
        0xab
        0x41
        0xf6
        0x6c
        0x15
        0x97
        0x7e
        0xce
        0x45
    .end array-data

    :array_8
    .array-data 4
        0x75
        0xab
        0x5d
        0xc3
        0x69
        0x2
        0x9a
        0x3a
        0xaa
        0x40
        0xf3
        0x62
        0x58
        0x90
        0x3f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;I)I
    .locals 0

    .line 35
    invoke-static {p0, p1}, Lcom/zjx/gw2lic/GyroInjector;->doInject(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 35
    sput-boolean p0, Lcom/zjx/gw2lic/GyroInjector;->sModulePresent:Z

    return p0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 35
    sput-boolean p0, Lcom/zjx/gw2lic/GyroInjector;->sModuleChecked:Z

    return p0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .line 35
    sput-boolean p0, Lcom/zjx/gw2lic/GyroInjector;->sInjectedOk:Z

    return p0
.end method

.method static synthetic access$400()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 35
    sget-object v0, Lcom/zjx/gw2lic/GyroInjector;->RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static dec([I)Ljava/lang/String;
    .locals 4

    .line 48
    array-length v0, p0

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 49
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 50
    aget v2, p0, v1

    mul-int/lit8 v3, v1, 0x6d

    add-int/lit8 v3, v3, 0x5a

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static detectModule(Landroid/content/Context;)Z
    .locals 7

    .line 218
    sget-boolean p0, Lcom/zjx/gw2lic/GyroInjector;->sModuleChecked:Z

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/zjx/gw2lic/GyroInjector;->sModulePresent:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    .line 220
    :try_start_0
    const-string v0, ">\u00fa\u001b\u00c5o\u000f\u0089z\u00a3K\u00fe&\u001b\u008c4\u00c8F\u00f2w^\u00ad.\u00d6V\u00fd\u008d3\u00ba\'\u00df\u001b\u00ad\u0093\u0001\u00f4\u001a\u008e6\u00ec\u00d5@\u00ebX\u008b6\u00de\u00d0{\u00ec\u0017\u00ff1_\u00cbu\u00a3\u0012\u00bd(\u001d\u00c97\u00a9^\u00fbe\u0018\u0084l\u009bu\u00ae\"\u001b\u00b4,\u00d8\u0003\u00f5\u009e\u0002\u00b8d\u00fcQ\u00cf\u00a75\u0080z\u00ff\\\u00c8\u00a7[\u00ed_\u00cbg\u00e4\u00ce>\u00ab]\u00cd/1\u00a6\u0012\u009cq\u00dfY2\u00aa\u0005\u0085\u000b\u00fel"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    new-instance v1, Ljava/lang/ProcessBuilder;

    const-string v2, ")\u00b2"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "w\u00a4"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 223
    invoke-virtual {v1, v0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 224
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 227
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/zjx/gw2lic/GyroInjector$1;

    invoke-direct {v5, v3, v2}, Lcom/zjx/gw2lic/GyroInjector$1;-><init>(Ljava/io/InputStream;Ljava/lang/StringBuilder;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 241
    invoke-virtual {v4, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 242
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 243
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0xa

    invoke-virtual {v1, v5, v6, v3}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 245
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 246
    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :cond_1
    const-wide/16 v5, 0x3e8

    .line 250
    :try_start_1
    invoke-virtual {v4, v5, v6}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    :catch_0
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    const-string v2, "\u0017\u0088p\u00fe^)\u00ad\u0006\u0087a\u00c8"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 253
    const-string v3, "\u0017\u0088p\u00feO9\u00bb\u0010\u008c{"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 254
    :cond_2
    sput-boolean v2, Lcom/zjx/gw2lic/GyroInjector;->sModulePresent:Z

    .line 255
    sput-boolean v0, Lcom/zjx/gw2lic/GyroInjector;->sModuleChecked:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    return v2

    :catchall_0
    return p0
.end method

.method private static doInject(Landroid/content/Context;I)I
    .locals 6

    const-string p1, "3\u00a1\u0014\u00fa.V\u008cu\u00edK\u00fd}\u0017\u00cc1\u00d9H\u00b8i\u001e\u00ba>\u00d4@\u00e1\u00d0\u001f\u00bc(\u00c0O\u00ff\u00a5\u0004\u00b5-\u008eF\u00a8\u00d3D\u00efg\u00897\u00a3\u00dd;\u00ea\u0018\u00c0p\n\u008aw\u00a4V\u00fd#\u0014\u00897\u00b5A\u00fft[\u0092+\u00d5[\u00fap0\u00bf(\u00da\u000c\u00f4\u0094\u0019\u00b6&\u00dd{\u00ab\u00a5^\u00f2K\u00c4|\u00e8\u00d3\u0005\u00aeR\u00c84\u00a3\u00d3f\u00e8x\u00edK)\u00a5\u0013\u009c`\u00cfO$\u00a1\u001f\u00ea\t\u00a3%\u0017\u00a7%\u00cd\u0006\u00a47V\u00fa!\u00dd\u001a\u00eb\u0098\u0000\u00bab\u008d!\u00b4\u00d6\u0007\u00b9O\u0097"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 388
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 389
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/zjx/gw2lic/GyroInjector;->SO_POL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/zjx/gw2lic/GyroInjector;->SO_INJ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/zjx/gw2lic/GyroInjector;->SO_HOOK:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 396
    const-string v4, "u\u00ab]\u00c3"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 424
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "x\u00fcf\u00903\\"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/zjx/gw2lic/GyroInjector;->RULE_EXEC:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}\u00fcf\u00933\\"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/zjx/gw2lic/GyroInjector;->RULE_CONNECT:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}\u00fcf\u00923\\"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/zjx/gw2lic/GyroInjector;->RULE_EXECMEM:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}\u00fcf\u00953\\"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/zjx/gw2lic/GyroInjector;->RULE_EXECMOD:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}\u00fcg\u00e4^F\u00d9n\u00a4@\u00ee);\u00b3p\u00d4D\u00b7#"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}\u00e7\u001b\u00c5o\u000f\u0089z\u00a3K\u00fe&\u001b\u00827\u00d4Y\u00fc+"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "z\u00e8P\u00c0z\u001a\u00c74\u00a6M\u00b3h\u0006\u00cc2\u00d4D\u00b8"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "z\u00e5\u0010\u0089m\u0014\u00858\u00a3A\u00f8)[\u0095p"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "z\u00f5\n\u008ej\u001e\u009ez\u00acZ\u00f0e_\u00c1k\u009dN\u00f8$*\u00fef\u00d6\u0005\u00b0\u00db!\u0089d\u0093}\u00ad\u00dcA\u00f4\u001a\u008e6\u00f0\u00d5@\u00ebq\u00f94\u00a3\u00ad}\u00b6K\u0084r\u0011\u0085,\u00ac\\\u00eaiB\u00a9n\u00e4\u0005\u00b8#9\u00b1l\u009b"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/zjx/gw2lic/GyroInjector;->LIVE:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "z\u00e5\u0010\u00f3?Y\u00c8w\u00e6}\u00ae+V\u00c1t\u00ef\u0019\u00b5$S\u00fa\u0019\u008c\u0007\u00b2\u00cdR\u00ffw\u009a\u001b\u00de\u00bf7\u00e9e\u0091 \u00ed\u0096\n\u00a0\u001c\u008b+\u00be\u00d00\u00ba\n\u0080\\.\u00cb*\u00a6\u000f\u00bb_<\u00b6w\u00bbb\u00a0,T\u008e;\u00cf\u0015\u00b1M\u0012\u00fer\u00ed\u0003\u00b2\u00d99\u0092\u0014\u0093>\u00a6\u009d\u0014\u00f2\u000f\u008cD\u00a6\u00d5F\u00edX\u00d5q\u00e0\u0085`\u00acZ\u00ccjG\u008c5\u00ab_\u00bd(J\u00d9q\u00cdN\u00e8j\u001e\u00b6/\u00c0\u0006\u00e1cP\u00fe\u0014\u00f1q\u00ac\u00c0O"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}\u00e7\u0013"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}\u00fc\u0014\u00d3mF\u00ccj\u00f9\u000f\u00f9j\u001e\u008cp\u009f\u0017\u00aa$\u0018\u00b0!\u00ddF\u00e6\u00df\u001e\u00ba{\u0097R\u00ee\u00d8\\\u00f4$\u00d6r\u00fc\u00d5F\u00bd_"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 444
    new-instance p1, Ljava/lang/ProcessBuilder;

    const-string v0, ")\u00b2"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "w\u00a4"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 445
    invoke-virtual {p1, p0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 446
    invoke-virtual {p1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p1

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 450
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/zjx/gw2lic/GyroInjector$4;

    invoke-direct {v3, v1, v0}, Lcom/zjx/gw2lic/GyroInjector$4;-><init>(Ljava/io/InputStream;Ljava/lang/StringBuilder;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 464
    invoke-virtual {v2, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 465
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 467
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0xf

    invoke-virtual {p1, v0, v1, p0}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 469
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    .line 470
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, -0x2

    return p0

    :cond_0
    const-wide/16 v0, 0x3e8

    .line 474
    :try_start_1
    invoke-virtual {v2, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    :catch_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x1

    return p0
.end method

.method public static ensureInjected(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 296
    :cond_0
    sget-boolean v0, Lcom/zjx/gw2lic/GyroInjector;->useModule:Z

    if-eqz v0, :cond_1

    return-void

    .line 309
    :cond_1
    sget-boolean v0, Lcom/zjx/gw2lic/GyroInjector;->sInjectedOk:Z

    if-eqz v0, :cond_2

    return-void

    .line 320
    :cond_2
    invoke-static {}, Lcom/zjx/gw2lic/GyroInjector;->isHookPresent()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 321
    sput-boolean v1, Lcom/zjx/gw2lic/GyroInjector;->sInjectedOk:Z

    return-void

    .line 329
    :cond_3
    sget-boolean v0, Lcom/zjx/gw2lic/GyroInjector;->sModulePresent:Z

    if-eqz v0, :cond_4

    .line 330
    sput-boolean v1, Lcom/zjx/gw2lic/GyroInjector;->sInjectedOk:Z

    return-void

    .line 334
    :cond_4
    sget-object v0, Lcom/zjx/gw2lic/GyroInjector;->RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 338
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 339
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/zjx/gw2lic/GyroInjector$3;

    invoke-direct {v2, p0}, Lcom/zjx/gw2lic/GyroInjector$3;-><init>(Landroid/content/Context;)V

    const-string p0, "=\u00ae"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 381
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static isGyroHookActive()Z
    .locals 1

    .line 273
    sget-boolean v0, Lcom/zjx/gw2lic/GyroInjector;->sModulePresent:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/zjx/gw2lic/GyroInjector;->isHookPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isHookPresent()Z
    .locals 2

    .line 195
    :try_start_0
    new-instance v0, Landroid/net/LocalServerSocket;

    const-string v1, "\u0005\u0098G\u00c4`\u0008\u0087\'\u009dL\u00fde\u001f\u0081\u000f\u00deB\u00f6jp\u00df"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :try_start_1
    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 201
    throw v0

    :catch_1
    const/4 v0, 0x1

    return v0
.end method

.method public static isModulePresent()Z
    .locals 1

    .line 267
    sget-boolean v0, Lcom/zjx/gw2lic/GyroInjector;->sModulePresent:Z

    return v0
.end method

.method public static onGyroEnabledInGame(Landroid/content/Context;Z)V
    .locals 0

    .line 164
    invoke-static {p0, p1}, Lcom/zjx/gw2lic/GyroInjector;->requestHookInject(Landroid/content/Context;Z)V

    return-void
.end method

.method public static onStartGame(Landroid/content/Context;Z)V
    .locals 0

    .line 151
    invoke-static {p0, p1}, Lcom/zjx/gw2lic/GyroInjector;->requestHookInject(Landroid/content/Context;Z)V

    return-void
.end method

.method private static requestHookInject(Landroid/content/Context;Z)V
    .locals 1

    .line 169
    sget-boolean v0, Lcom/zjx/gw2lic/GyroInjector;->gyroWanted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p0, 0x1

    .line 171
    sput-boolean p0, Lcom/zjx/gw2lic/GyroInjector;->sInjectedOk:Z

    return-void

    .line 175
    :cond_1
    invoke-static {p0}, Lcom/zjx/gw2lic/GyroInjector;->ensureInjected(Landroid/content/Context;)V

    return-void
.end method

.method public static setGyroWanted(Z)V
    .locals 0

    .line 132
    sput-boolean p0, Lcom/zjx/gw2lic/GyroInjector;->gyroWanted:Z

    return-void
.end method

.method public static setUseModule(ZLandroid/content/Context;)V
    .locals 1

    .line 69
    sget-boolean v0, Lcom/zjx/gw2lic/GyroInjector;->useModule:Z

    .line 70
    sput-boolean p0, Lcom/zjx/gw2lic/GyroInjector;->useModule:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 81
    sget-boolean p0, Lcom/zjx/gw2lic/GyroInjector;->gyroWanted:Z

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 83
    invoke-static {p1}, Lcom/zjx/gw2lic/GyroInjector;->ensureInjected(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static warmDetectAsync(Landroid/content/Context;)V
    .locals 2

    .line 279
    sget-boolean v0, Lcom/zjx/gw2lic/GyroInjector;->sModuleChecked:Z

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 281
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zjx/gw2lic/GyroInjector$2;

    invoke-direct {v1, p0}, Lcom/zjx/gw2lic/GyroInjector$2;-><init>(Landroid/content/Context;)V

    const-string p0, "=\u00aaP"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 284
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 285
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method
