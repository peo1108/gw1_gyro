.class public Lmdm/LinkCell;
.super Landroid/widget/FrameLayout;
.source "LinkCell.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lmdm/LinkCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, p2, v0}, Lmdm/LinkCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Lmdm/LinkCell;->setClickable(Z)V

    .line 17
    new-instance p1, Lmdm/LinkCell$1;

    invoke-direct {p1, p0}, Lmdm/LinkCell$1;-><init>(Lmdm/LinkCell;)V

    invoke-virtual {p0, p1}, Lmdm/LinkCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
