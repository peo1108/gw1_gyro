.class public Lcom/zjx/gw2lic/Gw2LsSpKey;
.super LW5/b;
.source "Gw2LsSpKey.java"


# static fields
.field public static lsPosA:Lo6/d;

.field public static lsPosB:Lo6/d;

.field public static lsPtrA:I

.field public static lsPtrB:I


# instance fields
.field public final slot:I

.field public final tapPos:Lo6/d;

.field public tapPtr:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo6/d;

    invoke-direct {v0}, Lo6/d;-><init>()V

    sput-object v0, Lcom/zjx/gw2lic/Gw2LsSpKey;->lsPosA:Lo6/d;

    new-instance v0, Lo6/d;

    invoke-direct {v0}, Lo6/d;-><init>()V

    sput-object v0, Lcom/zjx/gw2lic/Gw2LsSpKey;->lsPosB:Lo6/d;

    const/4 v0, -0x1

    sput v0, Lcom/zjx/gw2lic/Gw2LsSpKey;->lsPtrA:I

    sput v0, Lcom/zjx/gw2lic/Gw2LsSpKey;->lsPtrB:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zjx/gw2lic/Gw2LsSpKey;->slot:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/zjx/gw2lic/Gw2LsSpKey;->tapPtr:I

    new-instance v0, Lo6/d;

    invoke-direct {v0}, Lo6/d;-><init>()V

    iput-object v0, p0, Lcom/zjx/gw2lic/Gw2LsSpKey;->tapPos:Lo6/d;

    return-void
.end method

.method public static gw2Press(I)V
    .locals 14

    sget-boolean v0, LD6/c;->swapActive:Z

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->lsSpEnabled:Z

    if-eqz v0, :cond_6

    const/4 v10, 0x4

    if-ne p0, v10, :cond_0

    sget v10, Lcom/zjx/gw2lic/Gw2LsSpKey;->lsPtrA:I

    goto :goto_0

    :cond_0
    sget v10, Lcom/zjx/gw2lic/Gw2LsSpKey;->lsPtrB:I

    :goto_0
    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->landscapeSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    const-string v1, "=\u00b0\u0006\u00fej\t\u0081#\u00a7D\u00f9pD"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v11, "1"

    invoke-static/range {v11 .. v11}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "\""

    invoke-static/range {v11 .. v11}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x0

    invoke-interface {v1, v11, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v11, "1"

    invoke-static/range {v11 .. v11}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "#"

    invoke-static/range {v11 .. v11}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v7, 0x0

    invoke-interface {v1, v11, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v11, ")\u00a4F\u00f6"

    invoke-static/range {v11 .. v11}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v8, 0x0

    invoke-interface {v1, v11, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v11, ")\u00a4F\u00e9"

    invoke-static/range {v11 .. v11}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x0

    invoke-interface {v1, v11, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-lez v6, :cond_2

    if-lez v7, :cond_2

    if-lez v8, :cond_3

    if-lez v9, :cond_3

    int-to-float v6, v6

    int-to-float v10, v3

    mul-float v6, v6, v10

    int-to-float v10, v8

    div-float v6, v6, v10

    float-to-int v6, v6

    int-to-float v7, v7

    int-to-float v10, v4

    mul-float v7, v7, v10

    int-to-float v10, v9

    div-float v7, v7, v10

    float-to-int v7, v7

    goto :goto_1

    :cond_2
    invoke-static {v0, p0}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->defPointX(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v0, p0}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->defPointY(Landroid/content/Context;I)I

    move-result v7

    :cond_3
    :goto_1
    invoke-static {}, LR5/a;->w()LR5/a;

    move-result-object v10

    invoke-virtual {v10}, LR5/a;->m()I

    move-result v8

    move v9, v8

    invoke-static {}, Ls5/k;->i()Ls5/k;

    move-result-object v0

    int-to-float v1, v6

    int-to-float v2, v7

    move v3, v8

    move v4, v9

    const/4 v10, 0x4

    if-ne p0, v10, :cond_4

    sget-object v5, Lcom/zjx/gw2lic/Gw2LsSpKey;->lsPosA:Lo6/d;

    goto :goto_2

    :cond_4
    sget-object v5, Lcom/zjx/gw2lic/Gw2LsSpKey;->lsPosB:Lo6/d;

    :goto_2
    invoke-virtual/range {v0 .. v5}, Ls5/k;->m(FFIILo6/d;)I

    move-result v0

    const/4 v10, 0x4

    if-ne p0, v10, :cond_5

    sput v0, Lcom/zjx/gw2lic/Gw2LsSpKey;->lsPtrA:I

    return-void

    :cond_5
    sput v0, Lcom/zjx/gw2lic/Gw2LsSpKey;->lsPtrB:I

    return-void

    :cond_6
    return-void
.end method

.method public static gw2Release(I)V
    .locals 5

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    sget v1, Lcom/zjx/gw2lic/Gw2LsSpKey;->lsPtrA:I

    sget-object v2, Lcom/zjx/gw2lic/Gw2LsSpKey;->lsPosA:Lo6/d;

    const/4 v0, -0x1

    sput v0, Lcom/zjx/gw2lic/Gw2LsSpKey;->lsPtrA:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/zjx/gw2lic/Gw2LsSpKey;->lsPtrB:I

    sget-object v2, Lcom/zjx/gw2lic/Gw2LsSpKey;->lsPosB:Lo6/d;

    const/4 v0, -0x1

    sput v0, Lcom/zjx/gw2lic/Gw2LsSpKey;->lsPtrB:I

    :goto_0
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    iget v3, v2, Lo6/d;->a:F

    iget v4, v2, Lo6/d;->b:F

    invoke-static {}, Ls5/k;->i()Ls5/k;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v4}, Ls5/k;->p(IFF)V

    return-void
.end method


# virtual methods
.method public d(II)V
    .locals 0

    iget p0, p0, Lcom/zjx/gw2lic/Gw2LsSpKey;->slot:I

    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2LsSpKey;->gw2Release(I)V

    return-void
.end method

.method public e(II)V
    .locals 0

    iget p0, p0, Lcom/zjx/gw2lic/Gw2LsSpKey;->slot:I

    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2LsSpKey;->gw2Press(I)V

    return-void
.end method
