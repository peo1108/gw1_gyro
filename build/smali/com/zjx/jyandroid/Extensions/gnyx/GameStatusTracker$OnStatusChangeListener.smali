.class public interface abstract Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnStatusChangeListener"
.end annotation


# virtual methods
.method public abstract onCurrentAccessoryChanged(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;)V
.end method

.method public abstract onCurrentAimingStatusChanged(Z)V
.end method

.method public abstract onCurrentWeaponChanged(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;)V
.end method

.method public abstract onCurrentWeaponScopeChanged(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;)V
.end method

.method public abstract onPlayerGestureChanged(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;)V
.end method
