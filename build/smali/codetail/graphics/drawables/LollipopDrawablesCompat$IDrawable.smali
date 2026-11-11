.class interface abstract Lcodetail/graphics/drawables/LollipopDrawablesCompat$IDrawable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcodetail/graphics/drawables/LollipopDrawablesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDrawable"
.end annotation


# virtual methods
.method public abstract applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
.end method

.method public abstract canApplyTheme(Landroid/graphics/drawable/Drawable;)Z
.end method

.method public abstract inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
