.class public Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COLOR_str:Ljava/lang/String; = "color"

.field private static final CUSTOMIZED_STYLE_str:Ljava/lang/String; = "customized_style"

.field private static final ENABLED_str:Ljava/lang/String; = "enabled"

.field private static final HIDE_WHEN_AIMING_str:Ljava/lang/String; = "hide_when_aiming"

.field private static final HORIZONTAL_OFFSET_str:Ljava/lang/String; = "horizontal_offset"

.field private static final SIZE_str:Ljava/lang/String; = "size"

.field private static final TYPE_str:Ljava/lang/String; = "type"

.field private static final VERTICAL_OFFSET_str:Ljava/lang/String; = "vertical_offset"


# instance fields
.field editor:Landroid/content/SharedPreferences$Editor;

.field settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "CrosshairUserSettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->settings:Landroid/content/SharedPreferences;

    const-string v1, "color"

    const/high16 v2, -0x1000000

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->settings:Landroid/content/SharedPreferences;

    const-string v1, "horizontal_offset"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->settings:Landroid/content/SharedPreferences;

    const-string v1, "size"

    const/16 v2, 0x1e

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getType()Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$CrosshairType;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$CrosshairType;->values()[Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$CrosshairType;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->settings:Landroid/content/SharedPreferences;

    const-string v3, "type"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aget-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$CrosshairType;->values()[Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$CrosshairType;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public getVerticalOffset()I
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->settings:Landroid/content/SharedPreferences;

    const-string v1, "vertical_offset"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isCustomizedStyle()Z
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->settings:Landroid/content/SharedPreferences;

    const-string v1, "customized_style"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->settings:Landroid/content/SharedPreferences;

    const-string v1, "enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHiddenWhenAiming()Z
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->settings:Landroid/content/SharedPreferences;

    const-string v1, "hide_when_aiming"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setCustomizedStyle(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "customized_style"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setHiddenWhenAiming(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "hide_when_aiming"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "horizontal_offset"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setSize(I)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "size"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setType(Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$CrosshairType;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "type"

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "vertical_offset"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
