.class public final LL4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field public static final b:LI4/d$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LI4/d$b<",
            "+",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:LI4/d$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LI4/d$b<",
            "+",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:LF4/A;

.field public static final e:LF4/A;

.field public static final f:LF4/A;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "java.sql.Date"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, LL4/d;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, LL4/d$a;

    const-class v1, Ljava/sql/Date;

    invoke-direct {v0, v1}, LI4/d$b;-><init>(Ljava/lang/Class;)V

    sput-object v0, LL4/d;->b:LI4/d$b;

    new-instance v0, LL4/d$b;

    const-class v1, Ljava/sql/Timestamp;

    invoke-direct {v0, v1}, LI4/d$b;-><init>(Ljava/lang/Class;)V

    sput-object v0, LL4/d;->c:LI4/d$b;

    sget-object v0, LL4/a;->b:LF4/A;

    sput-object v0, LL4/d;->d:LF4/A;

    sget-object v0, LL4/b;->b:LF4/A;

    sput-object v0, LL4/d;->e:LF4/A;

    sget-object v0, LL4/c;->b:LF4/A;

    sput-object v0, LL4/d;->f:LF4/A;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    sput-object v0, LL4/d;->b:LI4/d$b;

    sput-object v0, LL4/d;->c:LI4/d$b;

    sput-object v0, LL4/d;->d:LF4/A;

    sput-object v0, LL4/d;->e:LF4/A;

    sput-object v0, LL4/d;->f:LF4/A;

    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
