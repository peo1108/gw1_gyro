.class public final synthetic Lv/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# instance fields
.field public final synthetic a:Lv/d;


# direct methods
.method public synthetic constructor <init>(Lv/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/b;->a:Lv/d;

    return-void
.end method


# virtual methods
.method public final onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 1

    iget-object v0, p0, Lv/b;->a:Lv/d;

    invoke-static {v0, p1, p2, p3}, Lv/d;->b(Lv/d;Landroid/bluetooth/BluetoothDevice;I[B)V

    return-void
.end method
