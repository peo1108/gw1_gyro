.class final Lcom/zjx/gw2lic/Gw2Device;
.super Ljava/lang/Object;
.source "Gw2Device.java"


# instance fields
.field final androidId:Ljava/lang/String;

.field final androidVersion:Ljava/lang/String;

.field final buildFingerprint:Ljava/lang/String;

.field final deviceCode:Ljava/lang/String;

.field final imeiOrSerial:Ljava/lang/String;

.field final kernelVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/zjx/gw2lic/Gw2Device;->deviceCode:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/zjx/gw2lic/Gw2Device;->kernelVersion:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/zjx/gw2lic/Gw2Device;->androidVersion:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/zjx/gw2lic/Gw2Device;->buildFingerprint:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/zjx/gw2lic/Gw2Device;->androidId:Ljava/lang/String;

    .line 28
    iput-object p6, p0, Lcom/zjx/gw2lic/Gw2Device;->imeiOrSerial:Ljava/lang/String;

    return-void
.end method

.method private static blankToUnknown(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 83
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2Device;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "/\u00a9_\u00cfa\u000c\u0086"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static collect(Landroid/content/Context;)Lcom/zjx/gw2lic/Gw2Device;
    .locals 11

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 33
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "/\u00a9_\u00cfa\u000c\u0086"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2Device;->firstNonBlank([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 34
    const-string v0, "5\u00b4\u001a\u00d7k\t\u009b<\u00adA"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2Device;->blankToUnknown(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 35
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 36
    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2Device;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v7, v0

    .line 37
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2Device;->blankToUnknown(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    .line 40
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, ";\u00a9P\u00d3a\u0012\u008c\n\u00abK"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object p0, v0

    .line 44
    :goto_0
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2Device;->blankToUnknown(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 47
    :try_start_1
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object p0

    .line 48
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2Device;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_1

    move-object v0, p0

    :catchall_1
    :cond_1
    move-object v10, v0

    .line 52
    new-instance p0, Lcom/zjx/gw2lic/Gw2Device;

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/zjx/gw2lic/Gw2Device;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static varargs firstNonBlank([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 87
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/zjx/gw2lic/Gw2Device;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_1
    const-string p0, "/\u00a9_\u00cfa\u000c\u0086"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isBlank(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method applyHeaders(Ljava/net/HttpURLConnection;)V
    .locals 2

    .line 70
    const-string v0, "\u0002\u00eay\u00e5C-\u00a6x\u0086J\u00ea`\u0015\u0086}\u00feE\u00f3a"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/gw2lic/Gw2Device;->deviceCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "\u0002\u00eay\u00e5C-\u00a6x\u0089J\u00eeg\u0013\u008f}\u00ebO\u00e5w\u0018\u00b1%"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/gw2lic/Gw2Device;->kernelVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "\u0002\u00eay\u00e5C-\u00a6x\u0083A\u00f8{\u0019\u008a4\u0090|\u00f2v\u0002\u00b7$\u00d6"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/gw2lic/Gw2Device;->androidVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "\u0002\u00eay\u00e5C-\u00a6x\u0080Z\u00f5e\u0012\u00ce\u0016\u00d4D\u00f0a\u0003\u00ae9\u00d1K\u00e6"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/gw2lic/Gw2Device;->buildFingerprint:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "\u0002\u00eay\u00e5C-\u00a6x\u0083A\u00f8{\u0019\u008a4\u0090c\u00f3"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/gw2lic/Gw2Device;->androidId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/zjx/gw2lic/Gw2Device;->imeiOrSerial:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "\u0002\u00eay\u00e5C-\u00a6x\u008bB\u00f9`[\u00ac\"\u0090y\u00f2v\u0018\u00bf\'"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method toJson()Lorg/json/JSONObject;
    .locals 3

    .line 56
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 58
    :try_start_0
    const-string v1, ">\u00a2B\u00c8m\u001e\u00ab:\u00a6J"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/gw2lic/Gw2Device;->deviceCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v1, "1\u00a2F\u00cfk\u0017\u00be0\u00b0\\\u00f5f\u0018"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/gw2lic/Gw2Device;->kernelVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v1, ";\u00a9P\u00d3a\u0012\u008c\u0003\u00a7]\u00ef`\u0019\u008d"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/gw2lic/Gw2Device;->androidVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v1, "8\u00b2]\u00cdj=\u0081;\u00a5J\u00eey\u0004\u008a>\u00c9"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/gw2lic/Gw2Device;->buildFingerprint:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v1, ";\u00a9P\u00d3a\u0012\u008c\u001c\u00a6"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/gw2lic/Gw2Device;->androidId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v1, "3\u00aaQ\u00c8A\t\u00bb0\u00b0F\u00fde"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/gw2lic/Gw2Device;->imeiOrSerial:Ljava/lang/String;

    if-nez v2, :cond_0

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
