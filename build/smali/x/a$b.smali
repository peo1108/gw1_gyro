.class public Lx/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/a;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lx/a;


# direct methods
.method public constructor <init>(Lx/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lx/a$b;->a:Lx/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;)V
    .locals 2

    iget-object p3, p0, Lx/a$b;->a:Lx/a;

    invoke-static {p3}, Lx/a;->b(Lx/a;)Lv/h;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lx/a$b;->a:Lx/a;

    invoke-static {p3}, Lx/a;->b(Lx/a;)Lv/h;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lx/a$b;->a:Lx/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lx/a;->c(Lx/a;Lv/h;)Lv/h;

    :cond_0
    return-void
.end method

.method public b(JLjava/lang/String;)V
    .locals 0

    return-void
.end method
