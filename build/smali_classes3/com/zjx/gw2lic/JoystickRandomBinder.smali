.class public final Lcom/zjx/gw2lic/JoystickRandomBinder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyRuntime(II)V
    .locals 2

    invoke-static {}, LR5/a;->w()LR5/a;

    move-result-object v0

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_3

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, 0x2

    iput p1, v0, LR5/a;->startRandomScalePct:I

    return-void

    :cond_1
    :goto_0
    mul-int/lit8 p1, p1, 0x2

    iput p1, v0, LR5/a;->endpointRandomScalePct:I

    return-void

    :cond_2
    iput p1, v0, LR5/a;->dragRandomScalePct:I

    return-void

    :cond_3
    iput p1, v0, LR5/a;->dragHorizontalRandomScalePct:I

    return-void

    :cond_4
    invoke-virtual {v0, p1}, LR5/a;->setRandomScalePct(I)V

    return-void
.end method

.method public static bind(Landroid/view/View;)V
    .locals 8

    const-string v1, "(\u00b4g\u00c4k\u0010\u00aa4\u00b0"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(\u00b4x\u00c0l\u001e\u0084"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(\u00b4y\u00c8`\u000e\u009b"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(\u00b4d\u00cd{\u0008"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0\u00a8M\u00d2z\u0012\u008b>\u009d]\u00fdg\u0012\u008c=\u00e2Z\u00f4p"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x64

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/zjx/gw2lic/JoystickRandomBinder;->bindOne(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v1, ")\u00b3U\u00d3z)\u009b\u0006\u00a7J\u00f7K\u0017\u0091"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ")\u00b3U\u00d3z)\u009b\u0019\u00a3M\u00f9e"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ")\u00b3U\u00d3z)\u009b\u0018\u00abA\u00e9z"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ")\u00b3U\u00d3z)\u009b\u0005\u00aeZ\u00ef"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0\u00a8M\u00d2z\u0012\u008b>\u009d\\\u00e8h\u0004\u0097\u000f\u00cfK\u00f9`\u001e\u00b3\u0014\u00c8F\u00e6"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x64

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/zjx/gw2lic/JoystickRandomBinder;->bindOne(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v1, "?\u00a9P\u00d1a\u0012\u0086!\u0090\\\u00cfl\u0013\u0088\u0012\u00dcX"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "?\u00a9P\u00d1a\u0012\u0086!\u0090\\\u00d0h\u0014\u0086<"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "?\u00a9P\u00d1a\u0012\u0086!\u0090\\\u00d1`\u0018\u0096#"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "?\u00a9P\u00d1a\u0012\u0086!\u0090\\\u00cce\u0003\u0090"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0\u00a8M\u00d2z\u0012\u008b>\u009dJ\u00f2m\u0006\u008c9\u00d3^\u00c8v\u0010\u00b0/\u00d7H\u00cd\u008f\u000f\u00ad"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x64

    const/4 v7, 0x2

    invoke-static/range {v0 .. v7}, Lcom/zjx/gw2lic/JoystickRandomBinder;->bindOne(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v1, ">\u00b5U\u00c6\\\u0008\u00bb0\u00a7D\u00deh\u0004"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ">\u00b5U\u00c6\\\u0008\u00a44\u00a0J\u00f0"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ">\u00b5U\u00c6\\\u0008\u00a5<\u00acZ\u00ef"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ">\u00b5U\u00c6\\\u0008\u00b89\u00b7\\"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0\u00a8M\u00d2z\u0012\u008b>\u009dK\u00eeh\u0011\u00bc\"\u00dcD\u00f3k\u001c\u0081;\u00dbQ"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    const/4 v7, 0x3

    invoke-static/range {v0 .. v7}, Lcom/zjx/gw2lic/JoystickRandomBinder;->bindOne(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v1, ">\u00b5U\u00c6F\u0014\u009a<\u00b8@\u00f2}\u0017\u008f\u0002\u00cey\u00f2a\u001a\u009c*\u00ca"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ">\u00b5U\u00c6F\u0014\u009a<\u00b8@\u00f2}\u0017\u008f\u0002\u00cef\u00f6f\u0014\u00b2"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ">\u00b5U\u00c6F\u0014\u009a<\u00b8@\u00f2}\u0017\u008f\u0002\u00ceg\u00fej\u0004\u00ad"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ">\u00b5U\u00c6F\u0014\u009a<\u00b8@\u00f2}\u0017\u008f\u0002\u00cez\u00fbq\u0002"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0\u00a8M\u00d2z\u0012\u008b>\u009dK\u00eeh\u0011\u00bc8\u00d2X\u00fe~\u001e\u00b0?\u00d9I\u00cd\u008d\r\u00b7\"\u00dcM\u00d2\u008a\u0004\u00a0"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    const/4 v7, 0x4

    invoke-static/range {v0 .. v7}, Lcom/zjx/gw2lic/JoystickRandomBinder;->bindOne(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static bindOne(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "=\u00a6Y\u00d6g\u0015\u008f\n\u00b2]\u00f9o\u0005"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, p5, p6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/zjx/gw2lic/JoystickRandomBinder;->clamp(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-static {v1, v2}, Lcom/zjx/gw2lic/JoystickRandomBinder;->updateLabel(Landroid/widget/TextView;I)V

    invoke-static {p7, v2}, Lcom/zjx/gw2lic/JoystickRandomBinder;->applyRuntime(II)V

    new-instance v2, Lcom/zjx/gw2lic/JoystickRandomSliderListener;

    invoke-direct {v2, v1, p5, p7}, Lcom/zjx/gw2lic/JoystickRandomSliderListener;-><init>(Landroid/widget/TextView;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/zjx/gw2lic/JoystickRandomStepClickListener;

    const/4 v3, -0x5

    invoke-direct {v2, v0, v3}, Lcom/zjx/gw2lic/JoystickRandomStepClickListener;-><init>(Landroid/widget/SeekBar;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0, p4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v1, Lcom/zjx/gw2lic/JoystickRandomStepClickListener;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v2}, Lcom/zjx/gw2lic/JoystickRandomStepClickListener;-><init>(Landroid/widget/SeekBar;I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void

    :cond_2
    return-void
.end method

.method public static clamp(I)I
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x64

    if-gt p0, v0, :cond_1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/16 p0, 0x64

    return p0
.end method

.method public static updateLabel(Landroid/widget/TextView;I)V
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u007f"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
