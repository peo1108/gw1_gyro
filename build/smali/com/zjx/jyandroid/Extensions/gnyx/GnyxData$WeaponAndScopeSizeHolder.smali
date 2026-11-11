.class public Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponAndScopeSizeHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeaponAndScopeSizeHolder"
.end annotation


# instance fields
.field public final scopeSize:I

.field public final weaponSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponAndScopeSizeHolder;->weaponSize:I

    iput p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponAndScopeSizeHolder;->scopeSize:I

    return-void
.end method
