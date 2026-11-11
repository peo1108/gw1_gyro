.class public final Lmdm/RcPanel;
.super Ljava/lang/Object;
.source "RcPanel.java"


# static fields
.field static final HIDDEN:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 21
    const-string v0, "coefficientButton"

    const-string v1, "deleteButton"

    const-string v2, "dynamicRCButton"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmdm/RcPanel;->HIDDEN:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)V
    .registers 6

    .line 24
    const-string v0, " \u00b7 "

    if-nez p0, :cond_5

    return-void

    .line 26
    :cond_5
    :try_start_5
    invoke-static {p0}, Lmdm/RcPanel;->hideExtras(Landroid/view/View;)V

    .line 28
    new-instance v1, Lmdm/RcPanel$1;

    invoke-direct {v1, p0}, Lmdm/RcPanel$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    if-nez p1, :cond_13

    return-void

    .line 32
    :cond_13
    const-string v1, "l"

    invoke-static {p1, v1}, Lmdm/RcPanel;->shortField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    .line 33
    const-string v2, "g"

    invoke-static {p1, v2}, Lmdm/RcPanel;->shortField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    .line 34
    const-string v3, "h"

    invoke-static {p1, v3}, Lmdm/RcPanel;->shortField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    .line 35
    if-ltz p1, :cond_6c

    const/16 v3, 0xa

    if-gt p1, v3, :cond_6c

    if-ltz v2, :cond_6c

    const/4 v3, 0x2

    if-le v2, v3, :cond_31

    goto :goto_6c

    .line 36
    :cond_31
    const-string v3, "textView22"

    invoke-static {p0, v3}, Lmdm/RcPanel;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 37
    if-eqz p0, :cond_6b

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lmdm/RcStore;->weaponName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lmdm/RcStore;->STANCES:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmdm/RcStore;->SLOT_LABELS:[Ljava/lang/String;

    .line 39
    invoke-static {p1}, Lmdm/RcStore;->realSlot(I)I

    move-result p1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_6b
    .catchall {:try_start_5 .. :try_end_6b} :catchall_6d

    .line 43
    :cond_6b
    goto :goto_6e

    .line 35
    :cond_6c
    :goto_6c
    return-void

    .line 41
    :catchall_6d
    move-exception p0

    .line 44
    :goto_6e
    return-void
.end method

.method static find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 5

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 55
    if-nez p1, :cond_16

    const/4 p0, 0x0

    goto :goto_1a

    :cond_16
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    :goto_1a
    return-object p0
.end method

.method static hideExtras(Landroid/view/View;)V
    .registers 7

    .line 47
    sget-object v0, Lmdm/RcPanel;->HIDDEN:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    .line 48
    invoke-static {p0, v3}, Lmdm/RcPanel;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 49
    if-eqz v3, :cond_19

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_19

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 47
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 51
    :cond_1c
    return-void
.end method

.method static shortField(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 61
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method
