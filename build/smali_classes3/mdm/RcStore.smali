.class public final Lmdm/RcStore;
.super Ljava/lang/Object;
.source "RcStore.java"


# static fields
.field static final COEFFICIENT_KEYS:[Ljava/lang/String;

.field static final DEFAULT_STAND:[D

.field public static final FORMAT:I = 0x2

.field public static final FORMAT_KEY:Ljava/lang/String; = "mdm_format"

.field static final GROUPS:[[Ljava/lang/Object;

.field static final MIN_WEAPONS:I = 0x43

.field static final SCOPES:I = 0xb

.field public static final SLOTS:[I

.field public static final SLOT_LABELS:[Ljava/lang/String;

.field public static final STANCES:[Ljava/lang/String;

.field static final STANCE_FACTOR:[D

.field static final WEAPONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 70

    .line 30
    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_1ce

    sput-object v1, Lmdm/RcStore;->SLOTS:[I

    .line 31
    const-string v7, "x6"

    const-string v8, "x8"

    const-string v2, "x0"

    const-string v3, "x1"

    const-string v4, "x2"

    const-string v5, "x3"

    const-string v6, "x4"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmdm/RcStore;->SLOT_LABELS:[Ljava/lang/String;

    .line 32
    const-string v1, "Ng\u1ed3i"

    const-string v2, "N\u1eb1m"

    const-string v3, "\u0110\u1ee9ng"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmdm/RcStore;->STANCES:[Ljava/lang/String;

    .line 38
    new-array v1, v0, [D

    fill-array-data v1, :array_1e0

    sput-object v1, Lmdm/RcStore;->DEFAULT_STAND:[D

    .line 39
    const/4 v1, 0x3

    new-array v2, v1, [D

    fill-array-data v2, :array_200

    sput-object v2, Lmdm/RcStore;->STANCE_FACTOR:[D

    .line 41
    const-string v14, "prone"

    const-string v15, "stand"

    const-string v3, "laserGrip"

    const-string v4, "halfGrip"

    const-string v5, "compensatorMuzzle"

    const-string v6, "suppressorMuzzle"

    const-string v7, "flashHidderMuzzle"

    const-string v8, "crouch"

    const-string v9, "lightGrip"

    const-string v10, "thumbGrip"

    const-string v11, "generalStock"

    const-string v12, "verticalGrip"

    const-string v13, "horizontalGrip"

    filled-new-array/range {v3 .. v15}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lmdm/RcStore;->COEFFICIENT_KEYS:[Ljava/lang/String;

    .line 47
    const-string v68, "AS50"

    const-string v69, "MG97"

    const-string v3, "Empty"

    const-string v4, "AWM"

    const-string v5, "CrossBow"

    const-string v6, "M24"

    const-string v7, "Mosin"

    const-string v8, "Kar98K"

    const-string v9, "MG3"

    const-string v10, "DP28"

    const-string v11, "MK14"

    const-string v12, "SKS"

    const-string v13, "SLR"

    const-string v14, "Groza"

    const-string v15, "MK47"

    const-string v16, "M762"

    const-string v17, "AKM"

    const-string v18, "MK12"

    const-string v19, "M249"

    const-string v20, "QBU"

    const-string v21, "AUG"

    const-string v22, "G36C"

    const-string v23, "QBZ"

    const-string v24, "PKM"

    const-string v25, "M416"

    const-string v26, "Scar"

    const-string v27, "M16"

    const-string v28, "ASM"

    const-string v29, "DBS"

    const-string v30, "S12K"

    const-string v31, "M1014"

    const-string v32, "S1897"

    const-string v33, "S686"

    const-string v34, "VSS"

    const-string v35, "Vector"

    const-string v36, "MP5K"

    const-string v37, "Bison"

    const-string v38, "UZI"

    const-string v39, "P90"

    const-string v40, "Win94"

    const-string v41, "Thomson"

    const-string v42, "UMP45"

    const-string v43, "AMR"

    const-string v44, "VCVAL"

    const-string v45, "Mini14"

    const-string v46, "Bow"

    const-string v47, "SPAS12"

    const-string v48, "M417"

    const-string v49, "HB"

    const-string v50, "TacticsBow"

    const-string v51, "MK20H"

    const-string v52, "M200"

    const-string v53, "SHIELD"

    const-string v54, "AA12G"

    const-string v55, "FAMAS"

    const-string v56, "AKS"

    const-string v57, "FireCompositeBow"

    const-string v58, "SVD"

    const-string v59, "MG36"

    const-string v60, "MORTAR"

    const-string v61, "ACE32"

    const-string v62, "JS9"

    const-string v63, "M1"

    const-string v64, "ARX"

    const-string v65, "ABAKAN"

    const-string v66, "M338"

    const-string v67, "MP7"

    filled-new-array/range {v3 .. v69}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lmdm/RcStore;->WEAPONS:[Ljava/lang/String;

    .line 58
    const-string v19, "HB"

    const-string v20, "ASM"

    const-string v3, "M416"

    const-string v4, "AKM"

    const-string v5, "Scar"

    const-string v6, "M16"

    const-string v7, "Groza"

    const-string v8, "AUG"

    const-string v9, "QBZ"

    const-string v10, "M762"

    const-string v11, "MK47"

    const-string v12, "G36C"

    const-string v13, "FAMAS"

    const-string v14, "ACE32"

    const-string v15, "ABAKAN"

    const-string v16, "AKS"

    const-string v17, "ARX"

    const-string v18, "VCVAL"

    filled-new-array/range {v3 .. v20}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    new-array v4, v3, [I

    fill-array-data v4, :array_210

    const-string v5, "S\u00fang tr\u01b0\u1eddng"

    filled-new-array {v5, v2, v4}, [Ljava/lang/Object;

    move-result-object v6

    const-string v15, "MK20H"

    const-string v16, "M1"

    const-string v7, "MK14"

    const-string v8, "SKS"

    const-string v9, "SLR"

    const-string v10, "QBU"

    const-string v11, "Mini14"

    const-string v12, "MK12"

    const-string v13, "VSS"

    const-string v14, "M417"

    filled-new-array/range {v7 .. v16}, [Ljava/lang/String;

    move-result-object v2

    new-array v4, v0, [I

    fill-array-data v4, :array_220

    const-string v5, "DMR"

    filled-new-array {v5, v2, v4}, [Ljava/lang/Object;

    move-result-object v7

    const-string v15, "AS50"

    const-string v16, "SVD"

    const-string v8, "AWM"

    const-string v9, "M24"

    const-string v10, "Mosin"

    const-string v11, "Kar98K"

    const-string v12, "AMR"

    const-string v13, "M200"

    const-string v14, "M338"

    filled-new-array/range {v8 .. v16}, [Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [I

    fill-array-data v0, :array_232

    const-string v4, "Sniper"

    filled-new-array {v4, v2, v0}, [Ljava/lang/Object;

    move-result-object v8

    const-string v13, "MG36"

    const-string v14, "MG97"

    const-string v9, "M249"

    const-string v10, "DP28"

    const-string v11, "MG3"

    const-string v12, "PKM"

    filled-new-array/range {v9 .. v14}, [Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [I

    fill-array-data v2, :array_244

    const-string v3, "LMG"

    filled-new-array {v3, v0, v2}, [Ljava/lang/Object;

    move-result-object v9

    const-string v17, "JS9"

    const-string v18, "MP7"

    const-string v10, "Vector"

    const-string v11, "MP5K"

    const-string v12, "Bison"

    const-string v13, "UZI"

    const-string v14, "P90"

    const-string v15, "Thomson"

    const-string v16, "UMP45"

    filled-new-array/range {v10 .. v18}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x4

    filled-new-array {v2, v3, v4, v1, v5}, [I

    move-result-object v1

    const-string v4, "SMG"

    filled-new-array {v4, v0, v1}, [Ljava/lang/Object;

    move-result-object v10

    const-string v16, "AA12G"

    const-string v17, "SPAS12"

    const-string v11, "S12K"

    const-string v12, "M1014"

    const-string v13, "DBS"

    const-string v14, "S1897"

    const-string v15, "S686"

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v3}, [I

    move-result-object v1

    const-string v3, "Shotgun"

    filled-new-array {v3, v0, v1}, [Ljava/lang/Object;

    move-result-object v11

    const-string v0, "Win94"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2}, [I

    move-result-object v1

    const-string v2, "Kh\u00e1c"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v12

    filled-new-array/range {v6 .. v12}, [[Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lmdm/RcStore;->GROUPS:[[Ljava/lang/Object;

    return-void

    nop

    :array_1ce
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data

    :array_1e0
    .array-data 8
        0x4024000000000000L    # 10.0
        0x4034000000000000L    # 20.0
        0x4036000000000000L    # 22.0
        0x4050800000000000L    # 66.0
        0x4059000000000000L    # 100.0
        0x4050800000000000L    # 66.0
        0x4059000000000000L    # 100.0
    .end array-data

    :array_200
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fe999999999999aL    # 0.8
        0x3fe3333333333333L    # 0.6
    .end array-data

    :array_210
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data

    :array_220
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data

    :array_232
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data

    :array_244
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static availableSlots(I)[I
    .registers 2

    .line 98
    invoke-static {p0}, Lmdm/RcStore;->groupOf(I)[Ljava/lang/Object;

    move-result-object p0

    .line 99
    if-nez p0, :cond_a

    const/4 p0, 0x0

    new-array p0, p0, [I

    goto :goto_15

    :cond_a
    const/4 v0, 0x2

    aget-object p0, p0, v0

    check-cast p0, [I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    :goto_15
    return-object p0
.end method

.method static clamp(D)D
    .registers 5

    .line 234
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_8

    :goto_6
    move-wide p0, v0

    goto :goto_12

    :cond_8
    const-wide v0, 0x408f380000000000L    # 999.0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_12

    goto :goto_6

    :cond_12
    :goto_12
    return-wide p0
.end method

.method static defaultValue(II)D
    .registers 5

    .line 144
    sget-object v0, Lmdm/RcStore;->DEFAULT_STAND:[D

    aget-wide v1, v0, p1

    sget-object p1, Lmdm/RcStore;->STANCE_FACTOR:[D

    aget-wide p0, p1, p0

    mul-double/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    return-wide p0
.end method

.method static find(Ljava/util/List;II)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 217
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 218
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 219
    instance-of v2, v1, Ljava/util/Map;

    if-nez v2, :cond_17

    goto :goto_8

    .line 220
    :cond_17
    check-cast v1, Ljava/util/Map;

    .line 221
    const-string v2, "scope"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lmdm/RcStore;->num(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, p1, :cond_32

    const-string v2, "gesture"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lmdm/RcStore;->num(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, p2, :cond_32

    return-object v1

    .line 222
    :cond_32
    goto :goto_8

    .line 223
    :cond_33
    return-object v0
.end method

.method public static get(Ljava/util/Map;III)D
    .registers 4

    .line 228
    invoke-static {p0, p1}, Lmdm/RcStore;->weaponRecords(Ljava/util/Map;I)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p3, p2}, Lmdm/RcStore;->find(Ljava/util/List;II)Ljava/util/Map;

    move-result-object p0

    .line 229
    if-nez p0, :cond_c

    const/4 p0, 0x0

    goto :goto_10

    :cond_c
    invoke-static {p0}, Lmdm/RcStore;->pairOf(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    .line 230
    :goto_10
    if-nez p0, :cond_15

    const-wide/16 p0, 0x0

    goto :goto_20

    :cond_15
    const/4 p1, 0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    :goto_20
    return-wide p0
.end method

.method static groupOf(I)[Ljava/lang/Object;
    .registers 6

    .line 79
    invoke-static {p0}, Lmdm/RcStore;->weaponName(I)Ljava/lang/String;

    move-result-object p0

    .line 80
    sget-object v0, Lmdm/RcStore;->GROUPS:[[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1f

    aget-object v3, v0, v2

    .line 81
    const/4 v4, 0x1

    aget-object v4, v3, v4

    check-cast v4, [Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    return-object v3

    .line 80
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 83
    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isV2(Ljava/util/Map;)Z
    .registers 3

    .line 138
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 139
    :cond_4
    const-string v1, "mdm_format"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 140
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_18

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0
.end method

.method public static makeDefault(Ljava/util/Map;)V
    .registers 18

    .line 166
    move-object/from16 v0, p0

    const-string v1, "recoil_data"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 167
    instance-of v3, v2, Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v3, :cond_14

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_15

    :cond_14
    move v2, v4

    :goto_15
    const/16 v3, 0x43

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 168
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 169
    move v5, v4

    :goto_21
    if-ge v5, v2, :cond_86

    .line 170
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0x21

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    move v7, v4

    :goto_2b
    const/16 v8, 0xb

    if-ge v7, v8, :cond_48

    .line 172
    move v8, v4

    :goto_30
    const/4 v9, 0x3

    if-ge v8, v9, :cond_45

    .line 173
    invoke-static {v7}, Lmdm/RcStore;->realSlot(I)I

    move-result v9

    invoke-static {v8, v9}, Lmdm/RcStore;->defaultValue(II)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lmdm/RcStore;->record(IID)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v8, v8, 0x1

    goto :goto_30

    .line 171
    :cond_45
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    .line 176
    :cond_48
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xd

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 177
    move v9, v4

    :goto_50
    if-ge v9, v8, :cond_71

    .line 178
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 179
    sget-object v11, Lmdm/RcStore;->COEFFICIENT_KEYS:[Ljava/lang/String;

    array-length v12, v11

    move v13, v4

    :goto_5b
    if-ge v13, v12, :cond_6b

    aget-object v14, v11, v13

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-interface {v10, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    goto :goto_5b

    .line 180
    :cond_6b
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v9, v9, 0x1

    goto :goto_50

    .line 182
    :cond_71
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 183
    const-string v9, "v"

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v6, "coefficients"

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 187
    :cond_86
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "mdm_format"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-void
.end method

.method static num(Ljava/lang/Object;)I
    .registers 2

    .line 204
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, -0x1

    :goto_c
    return p0
.end method

.method static pairOf(Ljava/util/Map;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 209
    const-string v0, "recoilValue"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 210
    instance-of v0, p0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_28

    .line 211
    :cond_14
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 212
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_27

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_27

    move-object v1, p0

    :cond_27
    return-object v1

    .line 210
    :cond_28
    :goto_28
    return-object v1
.end method

.method public static realSlot(I)I
    .registers 1

    .line 104
    packed-switch p0, :pswitch_data_a

    .line 109
    return p0

    .line 108
    :pswitch_4
    const/4 p0, 0x1

    return p0

    .line 106
    :pswitch_6
    const/4 p0, 0x6

    return p0

    .line 105
    :pswitch_8
    const/4 p0, 0x5

    return p0

    :pswitch_data_a
    .packed-switch 0x7
        :pswitch_8
        :pswitch_6
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method static record(IID)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IID)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 149
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "grip"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v2, "muzzle"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v2, "stock"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v2, "gesture"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    int-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "scope"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    const-string p0, "recoilValue"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-object v0
.end method

.method public static set(Ljava/util/Map;IIID)Z
    .registers 9

    .line 239
    invoke-static {p0, p1}, Lmdm/RcStore;->weaponRecords(Ljava/util/Map;I)Ljava/util/List;

    move-result-object p0

    .line 240
    invoke-static {p4, p5}, Lmdm/RcStore;->clamp(D)D

    move-result-wide p4

    .line 241
    nop

    .line 242
    const/4 p1, 0x0

    move v0, p1

    :goto_b
    const/16 v1, 0xb

    if-ge p1, v1, :cond_31

    .line 243
    invoke-static {p1}, Lmdm/RcStore;->realSlot(I)I

    move-result v1

    if-eq v1, p3, :cond_16

    goto :goto_2e

    .line 244
    :cond_16
    invoke-static {p0, p1, p2}, Lmdm/RcStore;->find(Ljava/util/List;II)Ljava/util/Map;

    move-result-object v1

    .line 245
    if-nez v1, :cond_1e

    const/4 v1, 0x0

    goto :goto_22

    :cond_1e
    invoke-static {v1}, Lmdm/RcStore;->pairOf(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    .line 246
    :goto_22
    if-nez v1, :cond_25

    goto :goto_2e

    .line 247
    :cond_25
    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 248
    move v0, v2

    .line 242
    :goto_2e
    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 250
    :cond_31
    return v0
.end method

.method public static staleLiveIds(Ljava/util/Collection;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x2f

    const/16 v4, 0x5c

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 124
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pubgrc/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 125
    :cond_2b
    goto :goto_9

    .line 126
    :cond_2c
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_30
    :goto_30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 128
    const-string v2, "keymaps/content/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    const-string v5, ".json"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_30

    const-string v6, ".v1.bak.json"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_59

    goto :goto_30

    .line 129
    :cond_59
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v6, v5

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_81

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_81

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_81

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_81
    goto :goto_30

    .line 132
    :cond_82
    return-object v0
.end method

.method public static syncAliases(Ljava/util/List;Ljava/util/Map;)V
    .registers 8

    .line 259
    if-eqz p0, :cond_4b

    if-nez p1, :cond_5

    goto :goto_4b

    .line 261
    :cond_5
    invoke-static {p1}, Lmdm/RcStore;->pairOf(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 262
    if-nez v0, :cond_c

    return-void

    .line 263
    :cond_c
    const-string v1, "gesture"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmdm/RcStore;->num(Ljava/lang/Object;)I

    move-result v1

    .line 264
    const-string v2, "scope"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lmdm/RcStore;->num(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Lmdm/RcStore;->realSlot(I)I

    move-result v2

    .line 265
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 266
    const/4 v4, 0x0

    :goto_2a
    const/16 v5, 0xb

    if-ge v4, v5, :cond_4a

    .line 267
    invoke-static {v4}, Lmdm/RcStore;->realSlot(I)I

    move-result v5

    if-eq v5, v2, :cond_35

    goto :goto_47

    .line 269
    :cond_35
    invoke-static {p0, v4, v1}, Lmdm/RcStore;->find(Ljava/util/List;II)Ljava/util/Map;

    move-result-object v5

    .line 270
    if-eqz v5, :cond_47

    if-ne v5, p1, :cond_3e

    goto :goto_47

    .line 271
    :cond_3e
    invoke-static {v5}, Lmdm/RcStore;->pairOf(Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    .line 272
    if-eqz v5, :cond_47

    invoke-interface {v5, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_47
    :goto_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 274
    :cond_4a
    return-void

    .line 259
    :cond_4b
    :goto_4b
    return-void
.end method

.method public static visible(I)Z
    .registers 1

    .line 93
    invoke-static {p0}, Lmdm/RcStore;->groupOf(I)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static weaponGroup(I)Ljava/lang/String;
    .registers 2

    .line 88
    invoke-static {p0}, Lmdm/RcStore;->groupOf(I)[Ljava/lang/Object;

    move-result-object p0

    .line 89
    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_d

    :cond_8
    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Ljava/lang/String;

    :goto_d
    return-object p0
.end method

.method public static weaponName(I)Ljava/lang/String;
    .registers 3

    .line 75
    if-ltz p0, :cond_c

    sget-object v0, Lmdm/RcStore;->WEAPONS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_c

    sget-object v0, Lmdm/RcStore;->WEAPONS:[Ljava/lang/String;

    aget-object p0, v0, p0

    goto :goto_1f

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1f
    return-object p0
.end method

.method static weaponRecords(Ljava/util/Map;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 195
    const-string v0, "recoil_data"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 196
    instance-of v0, p0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    if-ltz p1, :cond_2f

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_16

    goto :goto_2f

    .line 197
    :cond_16
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 198
    instance-of p1, p0, Ljava/util/Map;

    if-nez p1, :cond_1f

    return-object v1

    .line 199
    :cond_1f
    check-cast p0, Ljava/util/Map;

    const-string p1, "v"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 200
    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_2e

    move-object v1, p0

    check-cast v1, Ljava/util/List;

    :cond_2e
    return-object v1

    .line 196
    :cond_2f
    :goto_2f
    return-object v1
.end method
