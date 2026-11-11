.class public Lcom/zjx/jyandroid/Extensions/pubg/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/pubg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/zjx/jyandroid/base/FloatPoint;

.field public b:Lcom/zjx/jyandroid/base/FloatPoint;

.field public c:I

.field public d:Z

.field public final synthetic e:Lcom/zjx/jyandroid/Extensions/pubg/a;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/a;Lcom/zjx/jyandroid/base/FloatPoint;Lcom/zjx/jyandroid/base/FloatPoint;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/a$a;->e:Lcom/zjx/jyandroid/Extensions/pubg/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/a$a;->a:Lcom/zjx/jyandroid/base/FloatPoint;

    iput-object p3, p0, Lcom/zjx/jyandroid/Extensions/pubg/a$a;->b:Lcom/zjx/jyandroid/base/FloatPoint;

    iput p4, p0, Lcom/zjx/jyandroid/Extensions/pubg/a$a;->c:I

    iput-boolean p5, p0, Lcom/zjx/jyandroid/Extensions/pubg/a$a;->d:Z

    return-void
.end method
