.class public Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/ForegroundService/KeymapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeymapContentInfo"
.end annotation


# instance fields
.field public componentCount:I

.field public forPhone:Z

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x22127dacc755L

    .line 2
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->name:Ljava/lang/String;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->componentCount:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x22137dacc755L

    .line 5
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->name:Ljava/lang/String;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->componentCount:I

    const-wide v0, -0x22147dacc755L

    .line 7
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 8
    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->name:Ljava/lang/String;

    :cond_0
    const-wide v0, -0x22197dacc755L

    .line 9
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/AbstractList;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->componentCount:I

    :cond_1
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->forPhone:Z

    return-void
.end method
