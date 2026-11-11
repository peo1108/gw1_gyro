.class public Lcom/zjx/jyandroid/MainApp/AddGameActivity$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/MainApp/AddGameActivity$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/util/List<",
        "Lcom/zjx/jyandroid/MainApp/AddGameActivity$c;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/MainApp/AddGameActivity$b;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/AddGameActivity$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$b$a;->a:Lcom/zjx/jyandroid/MainApp/AddGameActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zjx/jyandroid/MainApp/AddGameActivity$c;",
            ">;",
            "Ljava/util/List<",
            "Lcom/zjx/jyandroid/MainApp/AddGameActivity$c;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/MainApp/AddGameActivity$c;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/AddGameActivity$c;->a:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zjx/jyandroid/MainApp/AddGameActivity$c;

    iget-object p2, p2, Lcom/zjx/jyandroid/MainApp/AddGameActivity$c;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/zjx/jyandroid/MainApp/AddGameActivity$b$a;->a(Ljava/util/List;Ljava/util/List;)I

    move-result p1

    return p1
.end method
