.class public LL4/c;
.super LF4/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF4/z<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:LF4/A;


# instance fields
.field public final a:LF4/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LF4/z<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LL4/c$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LL4/c;->b:LF4/A;

    return-void
.end method

.method public constructor <init>(LF4/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LF4/z<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LL4/c;->a:LF4/z;

    return-void
.end method

.method public synthetic constructor <init>(LF4/z;LL4/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LL4/c;-><init>(LF4/z;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic e(LN4/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LL4/c;->j(LN4/a;)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i(LN4/d;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, LL4/c;->k(LN4/d;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public j(LN4/a;)Ljava/sql/Timestamp;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LL4/c;->a:LF4/z;

    invoke-virtual {v0, p1}, LF4/z;->e(LN4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public k(LN4/d;Ljava/sql/Timestamp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LL4/c;->a:LF4/z;

    invoke-virtual {v0, p1, p2}, LF4/z;->i(LN4/d;Ljava/lang/Object;)V

    return-void
.end method
