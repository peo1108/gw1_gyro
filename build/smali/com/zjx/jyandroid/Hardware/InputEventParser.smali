.class Lcom/zjx/jyandroid/Hardware/InputEventParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private lastDownKeyCodeSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lastMouseKeyDownMask:B

.field private lastSpecialKeyDownMask:B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Hardware/InputEventParser;->lastDownKeyCodeSet:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public inputEventFromUSBData([B)Ljava/util/LinkedList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/base/InputEvents/InputEvent;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x4

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x8

    shl-int/2addr v1, v2

    const/4 v3, 0x5

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    int-to-short v1, v1

    const/4 v3, 0x6

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v2

    const/4 v4, 0x7

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    int-to-short v3, v3

    const/4 v5, 0x3

    aget-byte v5, p1, v5

    const/4 v6, 0x1

    if-nez v1, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v6

    :goto_1
    iget-byte v9, v0, Lcom/zjx/jyandroid/Hardware/InputEventParser;->lastMouseKeyDownMask:B

    if-eq v9, v5, :cond_2

    move v9, v6

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    iput-byte v5, v0, Lcom/zjx/jyandroid/Hardware/InputEventParser;->lastMouseKeyDownMask:B

    aget-byte v10, p1, v2

    if-eqz v10, :cond_3

    move v11, v6

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :goto_3
    new-instance v12, Ljava/util/HashSet;

    iget-object v13, v0, Lcom/zjx/jyandroid/Hardware/InputEventParser;->lastDownKeyCodeSet:Ljava/util/HashSet;

    invoke-direct {v12, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    const/16 v14, 0xa

    :goto_4
    const/16 v15, 0x10

    if-ge v14, v15, :cond_5

    aget-byte v15, p1, v14

    if-nez v15, :cond_4

    goto :goto_5

    :cond_4
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v12, v13}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    iget-object v15, v0, Lcom/zjx/jyandroid/Hardware/InputEventParser;->lastDownKeyCodeSet:Ljava/util/HashSet;

    invoke-virtual {v13, v15}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    iput-object v14, v0, Lcom/zjx/jyandroid/Hardware/InputEventParser;->lastDownKeyCodeSet:Ljava/util/HashSet;

    const/16 v14, 0x9

    aget-byte v14, p1, v14

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v2, :cond_8

    shr-int v16, v14, v15

    and-int/lit8 v2, v16, 0x1

    int-to-byte v2, v2

    iget-byte v7, v0, Lcom/zjx/jyandroid/Hardware/InputEventParser;->lastSpecialKeyDownMask:B

    shr-int/2addr v7, v15

    and-int/2addr v7, v6

    int-to-byte v7, v7

    xor-int/2addr v7, v2

    if-ne v7, v6, :cond_7

    if-ne v2, v6, :cond_6

    sget-object v2, Lcom/zjx/jyandroid/base/InputEvents/SpecialKeyboardKey;->SPECIAL_KEY_CODES:[B

    aget-byte v2, v2, v15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_6
    sget-object v2, Lcom/zjx/jyandroid/base/InputEvents/SpecialKeyboardKey;->SPECIAL_KEY_CODES:[B

    aget-byte v2, v2, v15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_7
    add-int/lit8 v15, v15, 0x1

    const/16 v2, 0x8

    goto :goto_6

    :cond_8
    iput-byte v14, v0, Lcom/zjx/jyandroid/Hardware/InputEventParser;->lastSpecialKeyDownMask:B

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    new-instance v14, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;

    invoke-direct {v14, v4, v13, v6}, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;-><init>(IIZ)V

    invoke-virtual {v2, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_9
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v12, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;

    const/4 v13, 0x0

    invoke-direct {v12, v4, v7, v13}, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;-><init>(IIZ)V

    invoke-virtual {v2, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_a
    const/4 v13, 0x0

    if-eqz v8, :cond_b

    new-instance v4, Lcom/zjx/jyandroid/base/InputEvents/MouseMoveEvent;

    invoke-direct {v4, v1, v3, v13}, Lcom/zjx/jyandroid/base/InputEvents/MouseMoveEvent;-><init>(III)V

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_b
    if-eqz v9, :cond_c

    new-instance v1, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEvent;

    invoke-direct {v1, v5}, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEvent;-><init>(B)V

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_c
    if-eqz v11, :cond_d

    new-instance v1, Lcom/zjx/jyandroid/base/InputEvents/ScrollEvent;

    invoke-direct {v1, v10}, Lcom/zjx/jyandroid/base/InputEvents/ScrollEvent;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-object v2
.end method
