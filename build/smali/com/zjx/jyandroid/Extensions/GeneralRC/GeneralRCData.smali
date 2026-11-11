.class public Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGestureNameByGesture(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    sget p0, Lcom/zjx/jyandroid/R$string;->general_rc_gesture_prone:I

    invoke-static {p0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget p0, Lcom/zjx/jyandroid/R$string;->general_rc_gesture_crouch:I

    invoke-static {p0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sget p0, Lcom/zjx/jyandroid/R$string;->general_rc_gesture_stand:I

    invoke-static {p0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
