.class public Lx/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw/c;


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

    iput-object p1, p0, Lx/a$a;->a:Lx/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lx/a$a;->a:Lx/a;

    invoke-virtual {v0}, Lx/a;->g()I

    move-result v0

    return v0
.end method

.method public b(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;Ljava/util/UUID;[B)Z
    .locals 1

    iget-object v0, p0, Lx/a$a;->a:Lx/a;

    invoke-static {v0, p1, p2, p3, p4}, Lx/a;->a(Lx/a;Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result p1

    return p1
.end method
