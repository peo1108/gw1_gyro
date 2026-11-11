.class public Lcom/zjx/gw2lic/Gw2StrConf;
.super Ljava/lang/Object;
.source "Gw2StrConf.java"


# static fields
.field public static loaded:Z

.field public static subtitle:Ljava/lang/String;

.field public static title:Ljava/lang/String;


# direct methods
.method public static load()V
    .locals 5

    sget-boolean v0, Lcom/zjx/gw2lic/Gw2StrConf;->loaded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zjx/gw2lic/Gw2StrConf;->loaded:Z

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, ">\u00beZ\u00d2m\t\u00879\u00aep\u00ef}\u0004\u008a>\u00daY\u00b9|\u001c\u00b2"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".\u00ae@\u00cdk"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/zjx/gw2lic/Gw2StrConf;->title:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v3, ")\u00b2V\u00d5g\u000f\u00840"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/zjx/gw2lic/Gw2StrConf;->subtitle:Ljava/lang/String;

    :cond_3
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    goto :goto_3

    :catch_0
    move-exception v0

    :goto_3
    return-void
.end method

.method public static resSubtitle()Ljava/lang/String;
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "=\u00b0\u0006\u00fej\u0002\u0086&\u00a1]\u00f3e\u001a\u00bc#\u00c8H\u00e3m\u0005\u00b2."

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ")\u00b3F\u00c8`\u001c"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_0
    const/4 v5, 0x0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v0

    const/4 v5, 0x0

    return-object v5
.end method

.method public static resTitle()Ljava/lang/String;
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "=\u00b0\u0006\u00fej\u0002\u0086&\u00a1]\u00f3e\u001a\u00bc$\u00d4^\u00fba"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ")\u00b3F\u00c8`\u001c"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_0
    const/4 v5, 0x0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v0

    const/4 v5, 0x0

    return-object v5
.end method

.method public static subtitle()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/zjx/gw2lic/Gw2StrConf;->resSubtitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/zjx/gw2lic/Gw2StrConf;->load()V

    sget-object v0, Lcom/zjx/gw2lic/Gw2StrConf;->subtitle:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "\t\u00a4F\u00ceb\u0017\u009bu\u00a4@\u00ee)%\u0080?\u00cdO\u00b7^\u001e\u00b1&\u0098L\u00fc\u00df-\u009d\u0015\u0093A\u00e3\u009eG\u00b5\"\u00dah\u00a8\u0094\u0011\u00efR\u00c6d\u00ee\u00911\u00ea\\\u00c1h\r\u00cb/\u00adW\u00f1,*\u0085<\u00b0H\u00ban\u0007\u00c1\u0001\u00fdn"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static title()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/zjx/gw2lic/Gw2StrConf;->resTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/zjx/gw2lic/Gw2StrConf;->load()V

    sget-object v0, Lcom/zjx/gw2lic/Gw2StrConf;->title:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "\u001e\u00beZ\u00c0c\u0012\u008bu\u008f@\u00e9z\u0013\u00c3\u0003\u00deX\u00f8h\u001d"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method
