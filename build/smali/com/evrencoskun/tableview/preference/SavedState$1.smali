.class Lcom/evrencoskun/tableview/preference/SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evrencoskun/tableview/preference/SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/evrencoskun/tableview/preference/SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/evrencoskun/tableview/preference/SavedState;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/evrencoskun/tableview/preference/SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/evrencoskun/tableview/preference/SavedState;-><init>(Landroid/os/Parcel;Lcom/evrencoskun/tableview/preference/SavedState$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/evrencoskun/tableview/preference/SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/evrencoskun/tableview/preference/SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/evrencoskun/tableview/preference/SavedState;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-array p1, p1, [Lcom/evrencoskun/tableview/preference/SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/evrencoskun/tableview/preference/SavedState$1;->newArray(I)[Lcom/evrencoskun/tableview/preference/SavedState;

    move-result-object p1

    return-object p1
.end method
