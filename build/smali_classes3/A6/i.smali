.class public final LA6/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LA6/i$a;
    }
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final c:Ljava/util/Random;

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "LA6/i$a;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:[F

.field public g:[F

.field public h:[F

.field public i:[I


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, p1, p2, v0}, LA6/i;-><init>(FFLjava/util/Random;)V

    return-void
.end method

.method public constructor <init>(FFLjava/util/Random;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LA6/i;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, LA6/i;->e:I

    cmpl-float v0, p2, p1

    if-lez v0, :cond_0

    .line 5
    iput p1, p0, LA6/i;->a:F

    .line 6
    iput p2, p0, LA6/i;->b:F

    .line 7
    iput-object p3, p0, LA6/i;->c:Ljava/util/Random;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "upperBound must be > lowerBound"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(FFD)LA6/i;
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-lez v0, :cond_1

    iget v0, p0, LA6/i;->a:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, LA6/i;->b:F

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    cmpl-float v0, p2, p1

    if-lez v0, :cond_0

    iget-object v0, p0, LA6/i;->d:Ljava/util/ArrayList;

    new-instance v1, LA6/i$a;

    invoke-direct {v1, p1, p2, p3, p4}, LA6/i$a;-><init>(FFD)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "range invalid or outside bounds after clamping"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "weight must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()LA6/i;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, LA6/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, LA6/i;->e:I

    if-eqz v1, :cond_8

    new-array v2, v1, [F

    iput-object v2, v0, LA6/i;->f:[F

    new-array v2, v1, [F

    iput-object v2, v0, LA6/i;->g:[F

    new-array v2, v1, [F

    iput-object v2, v0, LA6/i;->h:[F

    new-array v1, v1, [I

    iput-object v1, v0, LA6/i;->i:[I

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move v4, v1

    :goto_0
    iget v5, v0, LA6/i;->e:I

    if-ge v4, v5, :cond_0

    iget-object v5, v0, LA6/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LA6/i$a;

    iget-wide v5, v5, LA6/i$a;->c:D

    add-double/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array v4, v5, [D

    move v5, v1

    :goto_1
    iget v6, v0, LA6/i;->e:I

    if-ge v5, v6, :cond_1

    iget-object v6, v0, LA6/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LA6/i$a;

    iget-object v7, v0, LA6/i;->f:[F

    iget v8, v6, LA6/i$a;->a:F

    aput v8, v7, v5

    iget-object v7, v0, LA6/i;->g:[F

    iget v9, v6, LA6/i$a;->b:F

    sub-float/2addr v9, v8

    aput v9, v7, v5

    iget-wide v6, v6, LA6/i$a;->c:D

    iget v8, v0, LA6/i;->e:I

    int-to-double v8, v8

    mul-double/2addr v6, v8

    div-double/2addr v6, v2

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    new-array v2, v6, [I

    new-array v3, v6, [I

    move v5, v1

    move v6, v5

    :goto_2
    iget v7, v0, LA6/i;->e:I

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-ge v1, v7, :cond_3

    aget-wide v10, v4, v1

    cmpg-double v7, v10, v8

    if-gez v7, :cond_2

    add-int/lit8 v7, v6, 0x1

    aput v1, v2, v6

    move v6, v7

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v5, 0x1

    aput v1, v3, v5

    move v5, v7

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_4
    if-lez v6, :cond_5

    if-lez v5, :cond_5

    add-int/lit8 v1, v6, -0x1

    aget v7, v2, v1

    add-int/lit8 v10, v5, -0x1

    aget v11, v3, v10

    iget-object v12, v0, LA6/i;->h:[F

    aget-wide v13, v4, v7

    double-to-float v15, v13

    aput v15, v12, v7

    iget-object v12, v0, LA6/i;->i:[I

    aput v11, v12, v7

    aget-wide v15, v4, v11

    add-double/2addr v15, v13

    sub-double/2addr v15, v8

    aput-wide v15, v4, v11

    cmpg-double v7, v15, v8

    if-gez v7, :cond_4

    aput v11, v2, v1

    move v5, v10

    goto :goto_4

    :cond_4
    aput v11, v3, v10

    move v6, v1

    goto :goto_4

    :cond_5
    :goto_5
    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v5, :cond_6

    add-int/lit8 v5, v5, -0x1

    aget v4, v3, v5

    iget-object v7, v0, LA6/i;->h:[F

    aput v1, v7, v4

    iget-object v1, v0, LA6/i;->i:[I

    aput v4, v1, v4

    goto :goto_5

    :cond_6
    :goto_6
    if-lez v6, :cond_7

    add-int/lit8 v6, v6, -0x1

    aget v3, v2, v6

    iget-object v4, v0, LA6/i;->h:[F

    aput v1, v4, v3

    iget-object v4, v0, LA6/i;->i:[I

    aput v3, v4, v3

    goto :goto_6

    :cond_7
    return-object v0

    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No ranges configured."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, LA6/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, LA6/i;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, LA6/i;->h:[F

    iput-object v0, p0, LA6/i;->g:[F

    iput-object v0, p0, LA6/i;->f:[F

    iput-object v0, p0, LA6/i;->i:[I

    return-void
.end method

.method public d()F
    .locals 4

    iget v0, p0, LA6/i;->e:I

    if-eqz v0, :cond_1

    iget-object v1, p0, LA6/i;->c:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget-object v1, p0, LA6/i;->c:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget-object v2, p0, LA6/i;->h:[F

    aget v2, v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, LA6/i;->i:[I

    aget v0, v1, v0

    :goto_0
    iget-object v1, p0, LA6/i;->f:[F

    aget v1, v1, v0

    iget-object v2, p0, LA6/i;->c:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    iget-object v3, p0, LA6/i;->g:[F

    aget v0, v3, v0

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    return v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call build() after adding ranges."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
