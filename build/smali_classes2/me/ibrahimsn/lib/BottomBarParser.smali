.class public final Lme/ibrahimsn/lib/BottomBarParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/ibrahimsn/lib/BottomBarParser$Companion;
    }
.end annotation


# static fields
.field private static final CONTENT_DESCRIPTION_ATTRIBUTE:Ljava/lang/String; = "contentDescription"

.field public static final Companion:Lme/ibrahimsn/lib/BottomBarParser$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ICON_ATTRIBUTE:Ljava/lang/String; = "icon"

.field private static final ITEM_TAG:Ljava/lang/String; = "item"

.field private static final TITLE_ATTRIBUTE:Ljava/lang/String; = "title"


# instance fields
.field private final context:Landroid/content/Context;

.field private final parser:Landroid/content/res/XmlResourceParser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lme/ibrahimsn/lib/BottomBarParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lme/ibrahimsn/lib/BottomBarParser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lme/ibrahimsn/lib/BottomBarParser;->Companion:Lme/ibrahimsn/lib/BottomBarParser$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/ibrahimsn/lib/BottomBarParser;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    const-string p2, "context.resources.getXml(res)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lme/ibrahimsn/lib/BottomBarParser;->parser:Landroid/content/res/XmlResourceParser;

    return-void
.end method

.method private final getTabConfig(Landroid/content/res/XmlResourceParser;)Lme/ibrahimsn/lib/BottomBarItem;
    .locals 11

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move-object v6, v3

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_5

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x4be95e3d

    if-eq v7, v8, :cond_3

    const v8, 0x313c79

    if-eq v7, v8, :cond_2

    const v8, 0x6942258

    if-eq v7, v8, :cond_1

    goto :goto_1

    :cond_1
    const-string v7, "title"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :try_start_0
    iget-object v1, p0, Lme/ibrahimsn/lib/BottomBarParser;->context:Landroid/content/Context;

    invoke-interface {p1, v4, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v7, "icon"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lme/ibrahimsn/lib/BottomBarParser;->context:Landroid/content/Context;

    invoke-interface {p1, v4, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v6

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v6, v5

    goto :goto_1

    :cond_3
    const-string v7, "contentDescription"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :try_start_1
    iget-object v3, p0, Lme/ibrahimsn/lib/BottomBarParser;->context:Landroid/content/Context;

    invoke-interface {p1, v4, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-eqz v6, :cond_7

    new-instance p1, Lme/ibrahimsn/lib/BottomBarItem;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_6

    move-object v5, v3

    goto :goto_2

    :cond_6
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_2
    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lme/ibrahimsn/lib/BottomBarItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    :cond_7
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "Item icon can not be null!"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final parse()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lme/ibrahimsn/lib/BottomBarItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v1, p0, Lme/ibrahimsn/lib/BottomBarParser;->parser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lme/ibrahimsn/lib/BottomBarParser;->parser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "item"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lme/ibrahimsn/lib/BottomBarParser;->parser:Landroid/content/res/XmlResourceParser;

    invoke-direct {p0, v2}, Lme/ibrahimsn/lib/BottomBarParser;->getTabConfig(Landroid/content/res/XmlResourceParser;)Lme/ibrahimsn/lib/BottomBarItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-object v0
.end method
