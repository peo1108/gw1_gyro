.class public final Lmdm/RcParams;
.super Ljava/lang/Object;
.source "RcParams.java"


# static fields
.field public static final EDITABLE_SCOPES:[I

.field public static final GRIP_ERGONOMIC:I = 0x7

.field public static final GRIP_HALF:I = 0x3

.field public static final GRIP_HORIZONTAL:I = 0x2

.field public static final GRIP_LASER:I = 0x6

.field public static final GRIP_LIGHT:I = 0x4

.field public static final GRIP_NONE:I = 0x0

.field public static final GRIP_THUMB:I = 0x5

.field public static final GRIP_VERTICAL:I = 0x1

.field public static final MUZZLE_BRAKE:I = 0x4

.field public static final MUZZLE_COMPENSATOR:I = 0x1

.field public static final MUZZLE_EXTENDER:I = 0x5

.field public static final MUZZLE_FLASH_HIDER:I = 0x2

.field public static final MUZZLE_NONE:I = 0x0

.field public static final MUZZLE_SUPPRESSOR:I = 0x3

.field public static final SCOPE_KEYS:[Ljava/lang/String;

.field public static final SCOPE_LABELS:[Ljava/lang/String;

.field public static final STANCE_CROUCH:I = 0x1

.field public static final STANCE_PRONE:I = 0x2

.field public static final STANCE_STAND:I

.field public static final WEAPONS:[Ljava/lang/String;

.field public static final WEAPON_CLASS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 68

    .line 61
    const-string v8, "tactic"

    const-string v9, "tactic_84"

    const-string v0, "x1"

    const-string v1, "x2"

    const-string v2, "x3"

    const-string v3, "x4"

    const-string v4, "x6"

    const-string v5, "x8"

    const-string v6, "x63"

    const-string v7, "x84"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmdm/RcParams;->SCOPE_KEYS:[Ljava/lang/String;

    .line 62
    const-string v9, "Tactic"

    const-string v10, "Tactic 8.4"

    const-string v1, "x1"

    const-string v2, "x2"

    const-string v3, "x3"

    const-string v4, "x4"

    const-string v5, "x6"

    const-string v6, "x8"

    const-string v7, "x6.3"

    const-string v8, "x8.4"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmdm/RcParams;->SCOPE_LABELS:[Ljava/lang/String;

    .line 65
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_156

    sput-object v0, Lmdm/RcParams;->EDITABLE_SCOPES:[I

    .line 68
    const-string v66, "AS50"

    const-string v67, "MG97"

    const-string v1, "Empty"

    const-string v2, "AWM"

    const-string v3, "CrossBow"

    const-string v4, "M24"

    const-string v5, "Mosin"

    const-string v6, "Kar98K"

    const-string v7, "MG3"

    const-string v8, "DP28"

    const-string v9, "MK14"

    const-string v10, "SKS"

    const-string v11, "SLR"

    const-string v12, "Groza"

    const-string v13, "MK47"

    const-string v14, "M762"

    const-string v15, "AKM"

    const-string v16, "MK12"

    const-string v17, "M249"

    const-string v18, "QBU"

    const-string v19, "AUG"

    const-string v20, "G36C"

    const-string v21, "QBZ"

    const-string v22, "PKM"

    const-string v23, "M416"

    const-string v24, "Scar"

    const-string v25, "M16"

    const-string v26, "ASM"

    const-string v27, "DBS"

    const-string v28, "S12K"

    const-string v29, "M1014"

    const-string v30, "S1897"

    const-string v31, "S686"

    const-string v32, "VSS"

    const-string v33, "Vector"

    const-string v34, "MP5K"

    const-string v35, "Bison"

    const-string v36, "UZI"

    const-string v37, "P90"

    const-string v38, "Win94"

    const-string v39, "Thomson"

    const-string v40, "UMP45"

    const-string v41, "AMR"

    const-string v42, "VCVAL"

    const-string v43, "Mini14"

    const-string v44, "Bow"

    const-string v45, "SPAS12"

    const-string v46, "M417"

    const-string v47, "HB"

    const-string v48, "TacticsBow"

    const-string v49, "MK20H"

    const-string v50, "M200"

    const-string v51, "SHIELD"

    const-string v52, "AA12G"

    const-string v53, "FAMAS"

    const-string v54, "AKS"

    const-string v55, "FireCompositeBow"

    const-string v56, "SVD"

    const-string v57, "MG36"

    const-string v58, "MORTAR"

    const-string v59, "ACE32"

    const-string v60, "JS9"

    const-string v61, "M1"

    const-string v62, "ARX"

    const-string v63, "ABAKAN"

    const-string v64, "M338"

    const-string v65, "MP7"

    filled-new-array/range {v1 .. v67}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmdm/RcParams;->WEAPONS:[Ljava/lang/String;

    .line 79
    const-string v66, "Sniper"

    const-string v67, "LMG"

    const-string v1, "Kh\u00e1c"

    const-string v2, "Sniper"

    const-string v3, "Cung"

    const-string v4, "Sniper"

    const-string v5, "Sniper"

    const-string v6, "Sniper"

    const-string v7, "LMG"

    const-string v8, "LMG"

    const-string v9, "S\u00fang tr\u01b0\u1eddng"

    const-string v10, "S\u00fang tr\u01b0\u1eddng"

    const-string v11, "S\u00fang tr\u01b0\u1eddng"

    const-string v12, "S\u00fang tr\u01b0\u1eddng"

    const-string v13, "S\u00fang tr\u01b0\u1eddng"

    const-string v14, "S\u00fang tr\u01b0\u1eddng"

    const-string v15, "S\u00fang tr\u01b0\u1eddng"

    const-string v16, "S\u00fang tr\u01b0\u1eddng"

    const-string v17, "LMG"

    const-string v18, "S\u00fang tr\u01b0\u1eddng"

    const-string v19, "S\u00fang tr\u01b0\u1eddng"

    const-string v20, "S\u00fang tr\u01b0\u1eddng"

    const-string v21, "S\u00fang tr\u01b0\u1eddng"

    const-string v22, "LMG"

    const-string v23, "S\u00fang tr\u01b0\u1eddng"

    const-string v24, "S\u00fang tr\u01b0\u1eddng"

    const-string v25, "S\u00fang tr\u01b0\u1eddng"

    const-string v26, "Shotgun"

    const-string v27, "Shotgun"

    const-string v28, "Shotgun"

    const-string v29, "Shotgun"

    const-string v30, "Shotgun"

    const-string v31, "Shotgun"

    const-string v32, "S\u00fang tr\u01b0\u1eddng"

    const-string v33, "SMG"

    const-string v34, "SMG"

    const-string v35, "SMG"

    const-string v36, "SMG"

    const-string v37, "SMG"

    const-string v38, "Sniper"

    const-string v39, "SMG"

    const-string v40, "SMG"

    const-string v41, "Sniper"

    const-string v42, "S\u00fang tr\u01b0\u1eddng"

    const-string v43, "S\u00fang tr\u01b0\u1eddng"

    const-string v44, "Cung"

    const-string v45, "Shotgun"

    const-string v46, "S\u00fang tr\u01b0\u1eddng"

    const-string v47, "S\u00fang tr\u01b0\u1eddng"

    const-string v48, "Cung"

    const-string v49, "S\u00fang tr\u01b0\u1eddng"

    const-string v50, "Sniper"

    const-string v51, "Kh\u00e1c"

    const-string v52, "Shotgun"

    const-string v53, "S\u00fang tr\u01b0\u1eddng"

    const-string v54, "S\u00fang tr\u01b0\u1eddng"

    const-string v55, "Cung"

    const-string v56, "S\u00fang tr\u01b0\u1eddng"

    const-string v57, "LMG"

    const-string v58, "Kh\u00e1c"

    const-string v59, "S\u00fang tr\u01b0\u1eddng"

    const-string v60, "SMG"

    const-string v61, "S\u00fang tr\u01b0\u1eddng"

    const-string v62, "S\u00fang tr\u01b0\u1eddng"

    const-string v63, "S\u00fang tr\u01b0\u1eddng"

    const-string v64, "Sniper"

    const-string v65, "SMG"

    filled-new-array/range {v1 .. v67}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmdm/RcParams;->WEAPON_CLASS:[Ljava/lang/String;

    return-void

    :array_156
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(DDD)D
    .registers 7

    .line 259
    cmpg-double v0, p0, p2

    if-gez v0, :cond_6

    move-wide p0, p2

    goto :goto_b

    :cond_6
    cmpl-double p2, p0, p4

    if-lez p2, :cond_b

    move-wide p0, p4

    :cond_b
    :goto_b
    return-wide p0
.end method

.method public static coefficients(Ljava/util/Map;II)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 111
    invoke-static {p0, p1}, Lmdm/RcParams;->weaponEntry(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p0

    .line 112
    const/4 p1, 0x0

    if-nez p0, :cond_8

    return-object p1

    .line 113
    :cond_8
    const-string v0, "coefficients"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 114
    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_13

    return-object p1

    .line 115
    :cond_13
    check-cast p0, Ljava/util/List;

    .line 116
    if-ltz p2, :cond_2a

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1e

    goto :goto_2a

    .line 117
    :cond_1e
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 118
    instance-of p2, p0, Ljava/util/Map;

    if-eqz p2, :cond_29

    move-object p1, p0

    check-cast p1, Ljava/util/Map;

    :cond_29
    return-object p1

    .line 116
    :cond_2a
    :goto_2a
    return-object p1
.end method

.method public static copyContent(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 277
    invoke-static {p0}, Lmdm/RcPad;->copy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 278
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/util/Map;

    goto :goto_10

    :cond_b
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_10
    return-object p0
.end method

.method public static findRecord(Ljava/util/Map;IIIII)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "IIIII)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 128
    invoke-static {p0, p1}, Lmdm/RcParams;->weaponEntry(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p0

    .line 129
    const/4 p1, 0x0

    if-nez p0, :cond_8

    return-object p1

    .line 130
    :cond_8
    const-string v0, "v"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 131
    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_13

    return-object p1

    .line 132
    :cond_13
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 133
    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_28

    goto :goto_19

    .line 134
    :cond_28
    check-cast v0, Ljava/util/Map;

    .line 135
    const-string v1, "scope"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmdm/RcParams;->num(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, p2, :cond_37

    goto :goto_19

    .line 136
    :cond_37
    const-string v1, "gesture"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmdm/RcParams;->num(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, p3, :cond_44

    goto :goto_19

    .line 137
    :cond_44
    const-string v1, "grip"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmdm/RcParams;->num(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, p4, :cond_51

    goto :goto_19

    .line 138
    :cond_51
    const-string v1, "muzzle"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmdm/RcParams;->num(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, p5, :cond_5e

    goto :goto_19

    .line 139
    :cond_5e
    return-object v0

    .line 141
    :cond_5f
    return-object p1
.end method

.method public static fmt(D)Ljava/lang/String;
    .registers 4

    .line 325
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_e

    double-to-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 326
    :cond_e
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/util/Map;IIIII)D
    .registers 6

    .line 247
    invoke-static/range {p0 .. p5}, Lmdm/RcParams;->findRecord(Ljava/util/Map;IIIII)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lmdm/RcParams;->readValue(Ljava/util/Map;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static groupedWeapons(Ljava/util/Map;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 337
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 338
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 339
    invoke-static {p0}, Lmdm/RcParams;->weaponCount(Ljava/util/Map;)I

    move-result v3

    .line 340
    const/4 v4, 0x0

    move v5, v4

    :goto_15
    if-ge v5, v3, :cond_3f

    .line 341
    invoke-static {p0, v5}, Lmdm/RcParams;->weaponEntry(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_1e

    goto :goto_3c

    .line 342
    :cond_1e
    invoke-static {v5}, Lmdm/RcParams;->weaponClass(I)Ljava/lang/String;

    move-result-object v6

    .line 343
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 344
    if-nez v7, :cond_35

    .line 345
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 346
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    :goto_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 351
    :cond_3f
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_43
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 352
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 353
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v6, v5, [I

    .line 354
    move v7, v4

    :goto_5c
    if-ge v7, v5, :cond_6d

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5c

    .line 355
    :cond_6d
    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    goto :goto_43

    .line 357
    :cond_75
    return-object v0
.end method

.method public static maxAcrossScopes(Ljava/util/Map;I)D
    .registers 13

    .line 264
    nop

    .line 265
    sget-object v0, Lmdm/RcParams;->EDITABLE_SCOPES:[I

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v1, :cond_1e

    aget v7, v0, v4

    .line 266
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    move v6, p1

    invoke-static/range {v5 .. v10}, Lmdm/RcParams;->get(Ljava/util/Map;IIIII)D

    move-result-wide p0

    .line 267
    cmpl-double v7, p0, v2

    if-lez v7, :cond_19

    move-wide v2, p0

    .line 265
    :cond_19
    add-int/lit8 v4, v4, 0x1

    move-object p0, v5

    move p1, v6

    goto :goto_7

    .line 269
    :cond_1e
    return-wide v2
.end method

.method static num(Ljava/lang/Object;)I
    .registers 2

    .line 145
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static readValue(Ljava/util/Map;)D
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)D"
        }
    .end annotation

    .line 195
    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    return-wide v0

    .line 196
    :cond_5
    const-string v2, "recoilValue"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 197
    instance-of v2, p0, Ljava/util/List;

    if-nez v2, :cond_10

    return-wide v0

    .line 198
    :cond_10
    check-cast p0, Ljava/util/List;

    .line 199
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    return-wide v0

    .line 200
    :cond_19
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 201
    instance-of v2, p0, Ljava/util/List;

    if-nez v2, :cond_23

    return-wide v0

    .line 202
    :cond_23
    check-cast p0, Ljava/util/List;

    .line 203
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2d

    return-wide v0

    .line 204
    :cond_2d
    const/4 v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 205
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_3c

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :cond_3c
    return-wide v0
.end method

.method public static recoilData(Ljava/util/Map;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 95
    :cond_4
    const-string v1, "recoil_data"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 96
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_11

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    :cond_11
    return-object v0
.end method

.method public static recordsFor(Ljava/util/Map;III)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "III)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-static {p0, p1}, Lmdm/RcParams;->weaponEntry(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p0

    .line 156
    if-nez p0, :cond_c

    return-object v0

    .line 157
    :cond_c
    const-string p1, "v"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 158
    instance-of p1, p0, Ljava/util/List;

    if-nez p1, :cond_17

    return-object v0

    .line 159
    :cond_17
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 160
    instance-of v1, p1, Ljava/util/Map;

    if-nez v1, :cond_2c

    goto :goto_1d

    .line 161
    :cond_2c
    check-cast p1, Ljava/util/Map;

    .line 162
    const-string v1, "scope"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmdm/RcParams;->num(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, p2, :cond_3b

    goto :goto_1d

    .line 163
    :cond_3b
    const-string v1, "gesture"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmdm/RcParams;->num(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, p3, :cond_48

    goto :goto_1d

    .line 164
    :cond_48
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    goto :goto_1d

    .line 166
    :cond_4c
    return-object v0
.end method

.method public static set(Ljava/util/Map;IIIIID)Z
    .registers 8

    .line 252
    invoke-static/range {p0 .. p5}, Lmdm/RcParams;->findRecord(Ljava/util/Map;IIIII)Ljava/util/Map;

    move-result-object p0

    .line 253
    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 254
    :cond_8
    invoke-static {p0, p6, p7}, Lmdm/RcParams;->writeValue(Ljava/util/Map;D)V

    .line 255
    const/4 p0, 0x1

    return p0
.end method

.method public static setValueFor(Ljava/util/Map;IIID)Z
    .registers 6

    .line 180
    invoke-static {p0, p1, p2, p3}, Lmdm/RcParams;->recordsFor(Ljava/util/Map;III)Ljava/util/List;

    move-result-object p0

    .line 181
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 182
    invoke-static {p2, p4, p5}, Lmdm/RcParams;->writeValue(Ljava/util/Map;D)V

    .line 183
    goto :goto_8

    .line 184
    :cond_18
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static summary(Ljava/util/Map;I)Ljava/lang/String;
    .registers 13

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lmdm/RcParams;->weaponName(Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    nop

    .line 285
    sget-object v1, Lmdm/RcParams;->EDITABLE_SCOPES:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_10
    if-ge v4, v2, :cond_43

    aget v6, v1, v4

    .line 286
    invoke-static {p0, p1, v6, v3}, Lmdm/RcParams;->valueFor(Ljava/util/Map;III)D

    move-result-wide v7

    .line 287
    const-wide/16 v9, 0x0

    cmpg-double v9, v7, v9

    if-gtz v9, :cond_1f

    goto :goto_40

    .line 288
    :cond_1f
    const-string v9, "  "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lmdm/RcParams;->SCOPE_LABELS:[Ljava/lang/String;

    aget-object v6, v10, v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v9, 0x20

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v7, v8}, Lmdm/RcParams;->fmt(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x3

    if-lt v5, v6, :cond_40

    goto :goto_43

    .line 285
    :cond_40
    :goto_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 291
    :cond_43
    :goto_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueFor(Ljava/util/Map;III)D
    .registers 4

    .line 171
    invoke-static {p0, p1, p2, p3}, Lmdm/RcParams;->recordsFor(Ljava/util/Map;III)Ljava/util/List;

    move-result-object p0

    .line 172
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 173
    const-string p3, "grip"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lmdm/RcParams;->num(Ljava/lang/Object;)I

    move-result p3

    if-nez p3, :cond_31

    const-string p3, "muzzle"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lmdm/RcParams;->num(Ljava/lang/Object;)I

    move-result p3

    if-nez p3, :cond_31

    invoke-static {p2}, Lmdm/RcParams;->readValue(Ljava/util/Map;)D

    move-result-wide p0

    return-wide p0

    .line 174
    :cond_31
    goto :goto_8

    .line 175
    :cond_32
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3b

    const-wide/16 p0, 0x0

    goto :goto_46

    :cond_3b
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lmdm/RcParams;->readValue(Ljava/util/Map;)D

    move-result-wide p0

    :goto_46
    return-wide p0
.end method

.method public static weaponClass(I)Ljava/lang/String;
    .registers 2

    .line 315
    if-lez p0, :cond_c

    sget-object v0, Lmdm/RcParams;->WEAPON_CLASS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_c

    sget-object v0, Lmdm/RcParams;->WEAPON_CLASS:[Ljava/lang/String;

    aget-object p0, v0, p0

    goto :goto_e

    :cond_c
    const-string p0, "Kh\u00e1c"

    :goto_e
    return-object p0
.end method

.method public static weaponCount(Ljava/util/Map;)I
    .registers 1

    .line 320
    invoke-static {p0}, Lmdm/RcParams;->recoilData(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    .line 321
    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_c

    :cond_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_c
    return p0
.end method

.method public static weaponEntry(Ljava/util/Map;I)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-static {p0}, Lmdm/RcParams;->recoilData(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    .line 103
    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    if-ltz p1, :cond_1c

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_10

    goto :goto_1c

    .line 104
    :cond_10
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 105
    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_1b

    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    :cond_1b
    return-object v0

    .line 103
    :cond_1c
    :goto_1c
    return-object v0
.end method

.method public static weaponName(Ljava/util/Map;I)Ljava/lang/String;
    .registers 3

    .line 300
    invoke-static {p0, p1}, Lmdm/RcParams;->weaponEntry(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p0

    .line 301
    if-eqz p0, :cond_1d

    .line 302
    const-string v0, "name"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 303
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 304
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 305
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    return-object p0

    .line 308
    :cond_1d
    if-nez p1, :cond_22

    const-string p0, "M\u1eb7c \u0111\u1ecbnh"

    return-object p0

    .line 309
    :cond_22
    sget-object p0, Lmdm/RcParams;->WEAPONS:[Ljava/lang/String;

    array-length p0, p0

    if-ge p1, p0, :cond_2c

    sget-object p0, Lmdm/RcParams;->WEAPONS:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 310
    :cond_2c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "S\u00fang "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeValue(Ljava/util/Map;D)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;D)V"
        }
    .end annotation

    .line 214
    if-nez p0, :cond_3

    return-void

    .line 215
    :cond_3
    const-string v0, "recoilValue"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 217
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_10

    .line 218
    check-cast v1, Ljava/util/List;

    goto :goto_18

    .line 220
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 221
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :goto_18
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v0, 0x2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz p0, :cond_39

    .line 225
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 230
    :cond_39
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 231
    instance-of v5, p0, Ljava/util/List;

    if-eqz v5, :cond_44

    .line 232
    check-cast p0, Ljava/util/List;

    goto :goto_5a

    .line 234
    :cond_44
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 235
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-interface {v1, v2, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 240
    :goto_5a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_68

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 241
    :cond_68
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-wide/16 v5, 0x0

    const-wide v7, 0x408f380000000000L    # 999.0

    move-wide v3, p1

    invoke-static/range {v3 .. v8}, Lmdm/RcParams;->clamp(DDD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 243
    return-void
.end method
