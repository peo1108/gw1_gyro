.class public Lcom/evrencoskun/tableview/preference/SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/evrencoskun/tableview/preference/SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public preferences:Lcom/evrencoskun/tableview/preference/Preferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/evrencoskun/tableview/preference/SavedState$1;

    invoke-direct {v0}, Lcom/evrencoskun/tableview/preference/SavedState$1;-><init>()V

    sput-object v0, Lcom/evrencoskun/tableview/preference/SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 4
    const-class v0, Lcom/evrencoskun/tableview/preference/Preferences;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/evrencoskun/tableview/preference/Preferences;

    iput-object p1, p0, Lcom/evrencoskun/tableview/preference/SavedState;->preferences:Lcom/evrencoskun/tableview/preference/Preferences;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/evrencoskun/tableview/preference/SavedState$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/evrencoskun/tableview/preference/SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/evrencoskun/tableview/preference/SavedState;->preferences:Lcom/evrencoskun/tableview/preference/Preferences;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
