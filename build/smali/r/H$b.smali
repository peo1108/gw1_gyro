.class public final enum Lr/H$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr/H$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lr/H$b;

.field public static final enum b:Lr/H$b;

.field public static final enum c:Lr/H$b;

.field public static final synthetic d:[Lr/H$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr/H$b;

    const-string v1, "PRESS_TRIGGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr/H$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/H$b;->a:Lr/H$b;

    new-instance v0, Lr/H$b;

    const-string v1, "RELEASE_TRIGGER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lr/H$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/H$b;->b:Lr/H$b;

    new-instance v0, Lr/H$b;

    const-string v1, "PRESS_RELEASE_TRIGGER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lr/H$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/H$b;->c:Lr/H$b;

    invoke-static {}, Lr/H$b;->a()[Lr/H$b;

    move-result-object v0

    sput-object v0, Lr/H$b;->d:[Lr/H$b;

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

.method public static synthetic a()[Lr/H$b;
    .locals 3

    sget-object v0, Lr/H$b;->a:Lr/H$b;

    sget-object v1, Lr/H$b;->b:Lr/H$b;

    sget-object v2, Lr/H$b;->c:Lr/H$b;

    filled-new-array {v0, v1, v2}, [Lr/H$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lr/H$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lr/H$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr/H$b;

    return-object p0
.end method

.method public static values()[Lr/H$b;
    .locals 1

    sget-object v0, Lr/H$b;->d:[Lr/H$b;

    invoke-virtual {v0}, [Lr/H$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr/H$b;

    return-object v0
.end method
