.class Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->loadPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field lastClickTime:J

.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$8;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$8;->lastClickTime:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$8;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2bc

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$8;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->getWeaponType()Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    move-result-object p1

    sget-object v2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->Empty:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    if-ne p1, v2, :cond_0

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v2, Lcom/zjx/jyandroid/R$string;->pubg_extension_text5:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$8;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->loadAdjustRCValuePanel()V

    :cond_1
    :goto_0
    iput-wide v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$8;->lastClickTime:J

    return-void
.end method
