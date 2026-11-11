.class public Lcom/zjx/jyandroid/Extensions/pubg/g$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/pubg/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public a:J

.field public b:D

.field public c:Lcom/zjx/jyandroid/Extensions/pubg/g$g;


# direct methods
.method public constructor <init>(ID)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$g;->a:J

    iput-wide p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$g;->b:D

    return-void
.end method
