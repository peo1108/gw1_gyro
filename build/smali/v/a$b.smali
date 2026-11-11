.class public Lv/a$b;
.super Lv/a$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv/a;->e(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lv/a;


# direct methods
.method public constructor <init>(Lv/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lv/a$b;->b:Lv/a;

    iput-boolean p2, p0, Lv/a$b;->a:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lv/a$k;-><init>(Lv/a$b;)V

    return-void
.end method


# virtual methods
.method public a(Lw/a;)V
    .locals 1

    iget-boolean v0, p0, Lv/a$b;->a:Z

    invoke-virtual {p1, v0}, Lw/a;->e(Z)V

    return-void
.end method
