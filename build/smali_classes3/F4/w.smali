.class public interface abstract LF4/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LF4/w$e;
    }
.end annotation


# static fields
.field public static final a:LF4/w;

.field public static final b:LF4/w;

.field public static final c:LF4/w;

.field public static final d:LF4/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LF4/w$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LF4/w;->a:LF4/w;

    new-instance v0, LF4/w$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LF4/w;->b:LF4/w;

    new-instance v0, LF4/w$c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LF4/w;->c:LF4/w;

    new-instance v0, LF4/w$d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LF4/w;->d:LF4/w;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Class;)LF4/w$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "LF4/w$e;"
        }
    .end annotation
.end method
