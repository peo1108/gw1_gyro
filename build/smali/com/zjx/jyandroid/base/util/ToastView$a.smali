.class public final enum Lcom/zjx/jyandroid/base/util/ToastView$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/base/util/ToastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zjx/jyandroid/base/util/ToastView$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/zjx/jyandroid/base/util/ToastView$a;

.field public static final enum b:Lcom/zjx/jyandroid/base/util/ToastView$a;

.field public static final enum c:Lcom/zjx/jyandroid/base/util/ToastView$a;

.field public static final enum d:Lcom/zjx/jyandroid/base/util/ToastView$a;

.field public static final enum e:Lcom/zjx/jyandroid/base/util/ToastView$a;

.field public static final synthetic f:[Lcom/zjx/jyandroid/base/util/ToastView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zjx/jyandroid/base/util/ToastView$a;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/util/ToastView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/base/util/ToastView$a;->a:Lcom/zjx/jyandroid/base/util/ToastView$a;

    new-instance v0, Lcom/zjx/jyandroid/base/util/ToastView$a;

    const-string v1, "SUCCESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/util/ToastView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/base/util/ToastView$a;->b:Lcom/zjx/jyandroid/base/util/ToastView$a;

    new-instance v0, Lcom/zjx/jyandroid/base/util/ToastView$a;

    const-string v1, "DANGER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/util/ToastView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    new-instance v0, Lcom/zjx/jyandroid/base/util/ToastView$a;

    const-string v1, "WARNING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/util/ToastView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/base/util/ToastView$a;->d:Lcom/zjx/jyandroid/base/util/ToastView$a;

    new-instance v0, Lcom/zjx/jyandroid/base/util/ToastView$a;

    const-string v1, "LINK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/util/ToastView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/base/util/ToastView$a;->e:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/ToastView$a;->a()[Lcom/zjx/jyandroid/base/util/ToastView$a;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/base/util/ToastView$a;->f:[Lcom/zjx/jyandroid/base/util/ToastView$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lcom/zjx/jyandroid/base/util/ToastView$a;
    .locals 5

    sget-object v0, Lcom/zjx/jyandroid/base/util/ToastView$a;->a:Lcom/zjx/jyandroid/base/util/ToastView$a;

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->b:Lcom/zjx/jyandroid/base/util/ToastView$a;

    sget-object v2, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    sget-object v3, Lcom/zjx/jyandroid/base/util/ToastView$a;->d:Lcom/zjx/jyandroid/base/util/ToastView$a;

    sget-object v4, Lcom/zjx/jyandroid/base/util/ToastView$a;->e:Lcom/zjx/jyandroid/base/util/ToastView$a;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/zjx/jyandroid/base/util/ToastView$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zjx/jyandroid/base/util/ToastView$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zjx/jyandroid/base/util/ToastView$a;

    return-object p0
.end method

.method public static values()[Lcom/zjx/jyandroid/base/util/ToastView$a;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/base/util/ToastView$a;->f:[Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-virtual {v0}, [Lcom/zjx/jyandroid/base/util/ToastView$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zjx/jyandroid/base/util/ToastView$a;

    return-object v0
.end method
