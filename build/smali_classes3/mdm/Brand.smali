.class public final Lmdm/Brand;
.super Ljava/lang/Object;


# direct methods
.method public static logo(Landroid/widget/ImageView;)V
    .registers 2

    if-eqz p0, :cond_0

    const v0, 0x7f080124

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method
