.class public final Lcom/zjx/gw2lic/desktop/HidReports;
.super Ljava/lang/Object;
.source "HidReports.java"


# static fields
.field public static final KEYBOARD:[I

.field public static final MOUSE:[I


# instance fields
.field private buttons:I

.field private final keys:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private modifiers:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    const/16 v0, 0x2f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zjx/gw2lic/desktop/HidReports;->KEYBOARD:[I

    .line 6
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/zjx/gw2lic/desktop/HidReports;->MOUSE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0x1
        0x9
        0x6
        0xa1
        0x1
        0x5
        0x7
        0x19
        0xe0
        0x29
        0xe7
        0x15
        0x0
        0x25
        0x1
        0x75
        0x1
        0x95
        0x8
        0x81
        0x2
        0x95
        0x1
        0x75
        0x8
        0x81
        0x3
        0x95
        0x6
        0x75
        0x8
        0x15
        0x0
        0x26
        0xe7
        0x0
        0x5
        0x7
        0x19
        0x0
        0x2a
        0xe7
        0x0
        0x81
        0x0
        0xc0
    .end array-data

    :array_1
    .array-data 4
        0x5
        0x1
        0x9
        0x2
        0xa1
        0x1
        0x9
        0x1
        0xa1
        0x0
        0x5
        0x9
        0x19
        0x1
        0x29
        0x5
        0x15
        0x0
        0x25
        0x1
        0x95
        0x5
        0x75
        0x1
        0x81
        0x2
        0x95
        0x1
        0x75
        0x3
        0x81
        0x3
        0x5
        0x1
        0x9
        0x30
        0x9
        0x31
        0x16
        0x0
        0x80
        0x26
        0xff
        0x7f
        0x75
        0x10
        0x95
        0x2
        0x81
        0x6
        0x9
        0x38
        0x15
        0x81
        0x25
        0x7f
        0x75
        0x8
        0x95
        0x1
        0x81
        0x6
        0xc0
        0xc0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/zjx/gw2lic/desktop/HidReports;->keys:Ljava/util/TreeSet;

    return-void
.end method

.method public static register(ILjava/lang/String;[I)Ljava/lang/String;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "!\u00e5W\u00cec\u0016\u0089;\u00a6\r\u00a6+\u0004\u00867\u00d4Y\u00e3a\u0003\u00fcg\u009aL\u00f6\u00ddV"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "v\u00e5Z\u00c0c\u001e\u00cao\u00e0"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "x\u00eb\u0016\u00d7g\u001f\u00cao\u00f4\u001c\u00a9:Z\u00c1 \u00d4N\u00b5>"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    add-int/lit16 p0, p0, 0x55f0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "v\u00e5V\u00d4}Y\u00d2w\u00b7\\\u00fe+Z\u00c14\u00d8Y\u00f4v\u0018\u00ae?\u00d7W\u00b0\u00c57"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 25
    const/4 p1, 0x0

    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_1

    if-lez p1, :cond_0

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    aget v0, p2, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "\u0007\u00ba>"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static report([B)Ljava/lang/String;
    .locals 5

    .line 28
    if-eqz p0, :cond_4

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    array-length v3, p0

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    array-length v1, p0

    const/4 v3, 0x7

    if-ne v1, v3, :cond_4

    .line 29
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "!\u00e5W\u00cec\u0016\u0089;\u00a6\r\u00a6+\u0004\u0086 \u00d2X\u00e3&]\u00fc\"\u00dc\u0007\u00a8"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v0, p0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "v\u00e5F\u00c4~\u0014\u009a!\u00e0\u0015\u00c7"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 30
    move v1, v2

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_3

    if-le v1, v2, :cond_2

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "\u0007\u00ba>"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 28
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u0012\u008ep\u0081|\u001e\u0098:\u00b0["

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public button(IZ)[B
    .locals 2

    .line 18
    const v0, 0xfffe

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const v0, 0xffff

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const v0, 0xfffd

    if-ne p1, v0, :cond_2

    const/4 p1, 0x4

    goto :goto_0

    :cond_2
    const v0, 0xfffc

    if-ne p1, v0, :cond_3

    const/16 p1, 0x8

    goto :goto_0

    :cond_3
    const v0, 0xfffb

    if-ne p1, v0, :cond_4

    const/16 p1, 0x10

    goto :goto_0

    :cond_4
    move p1, v1

    .line 19
    :goto_0
    if-nez p1, :cond_5

    const/4 p1, 0x0

    return-object p1

    :cond_5
    if-eqz p2, :cond_6

    iget p2, p0, Lcom/zjx/gw2lic/desktop/HidReports;->buttons:I

    or-int/2addr p1, p2

    goto :goto_1

    :cond_6
    iget p2, p0, Lcom/zjx/gw2lic/desktop/HidReports;->buttons:I

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_1
    iput p1, p0, Lcom/zjx/gw2lic/desktop/HidReports;->buttons:I

    invoke-virtual {p0, v1, v1, v1}, Lcom/zjx/gw2lic/desktop/HidReports;->mouse(III)[B

    move-result-object p1

    return-object p1
.end method

.method public key(IZ)[B
    .locals 4

    .line 10
    and-int/lit16 p1, p1, 0xff

    .line 11
    const/4 v0, 0x1

    const/16 v1, 0xe0

    if-lt p1, v1, :cond_1

    const/16 v2, 0xe7

    if-gt p1, v2, :cond_1

    sub-int/2addr p1, v1

    shl-int p1, v0, p1

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/zjx/gw2lic/desktop/HidReports;->modifiers:I

    or-int/2addr p1, p2

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/zjx/gw2lic/desktop/HidReports;->modifiers:I

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_0
    iput p1, p0, Lcom/zjx/gw2lic/desktop/HidReports;->modifiers:I

    goto :goto_1

    .line 12
    :cond_1
    const/4 v1, 0x4

    if-lt p1, v1, :cond_5

    const/16 v1, 0xdf

    if-gt p1, v1, :cond_5

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/zjx/gw2lic/desktop/HidReports;->keys:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/zjx/gw2lic/desktop/HidReports;->keys:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 13
    :goto_1
    const/16 p1, 0x9

    new-array p2, p1, [B

    const/4 v1, 0x0

    aput-byte v0, p2, v1

    iget v1, p0, Lcom/zjx/gw2lic/desktop/HidReports;->modifiers:I

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 14
    iget-object v1, p0, Lcom/zjx/gw2lic/desktop/HidReports;->keys:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x3

    if-le v1, v2, :cond_3

    invoke-static {p2, v3, p1, v0}, Ljava/util/Arrays;->fill([BIIB)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/zjx/gw2lic/desktop/HidReports;->keys:Ljava/util/TreeSet;

    invoke-virtual {p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v1, v3, 0x1

    int-to-byte v0, v0

    aput-byte v0, p2, v3

    move v3, v1

    goto :goto_2

    .line 15
    :cond_4
    :goto_3
    return-object p2

    .line 12
    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public mouse(III)[B
    .locals 6

    .line 21
    iget v0, p0, Lcom/zjx/gw2lic/desktop/HidReports;->buttons:I

    int-to-byte v0, v0

    int-to-byte v1, p1

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    int-to-byte v2, p2

    shr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    int-to-byte p3, p3

    const/4 v3, 0x7

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    aput-byte v0, v3, v4

    aput-byte v1, v3, v5

    const/4 v0, 0x3

    aput-byte p1, v3, v0

    const/4 p1, 0x4

    aput-byte v2, v3, p1

    const/4 p1, 0x5

    aput-byte p2, v3, p1

    const/4 p1, 0x6

    aput-byte p3, v3, p1

    return-object v3
.end method

.method public reset()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/zjx/gw2lic/desktop/HidReports;->keys:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zjx/gw2lic/desktop/HidReports;->buttons:I

    iput v0, p0, Lcom/zjx/gw2lic/desktop/HidReports;->modifiers:I

    return-void
.end method
