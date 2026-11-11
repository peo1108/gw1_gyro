.class public Lcom/zjx/jyandroid/base/util/b$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/base/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String; = "0123456789"

.field public static final g:Ljava/lang/String;


# instance fields
.field public final a:Ljava/util/Random;

.field public final b:[C

.field public final c:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/base/util/b$h;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0123456789"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/base/util/b$h;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x15

    .line 10
    invoke-direct {p0, v0}, Lcom/zjx/jyandroid/base/util/b$h;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 9
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/zjx/jyandroid/base/util/b$h;-><init>(ILjava/util/Random;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Random;)V
    .locals 1

    .line 8
    sget-object v0, Lcom/zjx/jyandroid/base/util/b$h;->g:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/zjx/jyandroid/base/util/b$h;-><init>(ILjava/util/Random;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Random;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/zjx/jyandroid/base/util/b$h;->a:Ljava/util/Random;

    .line 4
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    iput-object p2, p0, Lcom/zjx/jyandroid/base/util/b$h;->b:[C

    .line 5
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/zjx/jyandroid/base/util/b$h;->c:[C

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zjx/jyandroid/base/util/b$h;->c:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/zjx/jyandroid/base/util/b$h;->b:[C

    iget-object v3, p0, Lcom/zjx/jyandroid/base/util/b$h;->a:Ljava/util/Random;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
