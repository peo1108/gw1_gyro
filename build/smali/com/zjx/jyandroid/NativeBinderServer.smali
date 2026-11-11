.class public interface abstract Lcom/zjx/jyandroid/NativeBinderServer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/NativeBinderServer$_Parcel;,
        Lcom/zjx/jyandroid/NativeBinderServer$Stub;,
        Lcom/zjx/jyandroid/NativeBinderServer$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.zjx.jyandroid.NativeBinderServer"


# virtual methods
.method public abstract executeShellCommand(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getScreenshot(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setGrabbingTouchEvent(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
