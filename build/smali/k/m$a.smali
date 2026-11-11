.class public Lk/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:D

.field public final synthetic c:Lk/m;


# direct methods
.method public constructor <init>(Lk/m;ID)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lk/m$a;->c:Lk/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lk/m$a;->a:I

    iput-wide p3, p0, Lk/m$a;->b:D

    return-void
.end method
