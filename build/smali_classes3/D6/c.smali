.class public LD6/c;
.super LW5/b;
.source "SourceFile"


# static fields
.field public static final REG:[LD6/c;

.field public static swapActive:Z

.field public static swapEnabled:Z


# instance fields
.field public final c:Ln7/a$b;

.field public final d:Ln7/a;

.field public held:Z

.field public tapPos:Lo6/d;

.field public tapPtr:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [LD6/c;

    sput-object v0, LD6/c;->REG:[LD6/c;

    invoke-static {}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->startPolling()V

    return-void
.end method

.method public constructor <init>(Ln7/a;Ln7/a$b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD6/c;->d:Ln7/a;

    iput-object p2, p0, LD6/c;->c:Ln7/a$b;

    const/4 v0, -0x1

    iput v0, p0, LD6/c;->tapPtr:I

    new-instance v0, Lo6/d;

    invoke-direct {v0}, Lo6/d;-><init>()V

    iput-object v0, p0, LD6/c;->tapPos:Lo6/d;

    sget-object v0, LD6/c;->REG:[LD6/c;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput-object p0, v0, v1

    return-void
.end method

.method public static reassertOpposite(LD6/c;)V
    .locals 8

    sget-object v6, LD6/c;->REG:[LD6/c;

    if-eqz v6, :cond_1

    iget-object v0, p0, LD6/c;->c:Ln7/a$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x3

    xor-int/2addr v0, v1

    aget-object v6, v6, v0

    if-eqz v6, :cond_1

    monitor-enter v6

    :try_start_0
    iget-boolean v0, v6, LD6/c;->held:Z

    if-eqz v0, :cond_0

    iget v0, v6, LD6/c;->tapPtr:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, v6, LD6/c;->tapPos:Lo6/d;

    iget v2, v1, Lo6/d;->a:F

    iget v1, v1, Lo6/d;->b:F

    invoke-static {}, Ls5/k;->i()Ls5/k;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v1}, Ls5/k;->p(IFF)V

    iget-object v0, v6, LD6/c;->c:Ln7/a$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-static {}, Ls5/k;->i()Ls5/k;

    move-result-object v0

    invoke-static {v7}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->x(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v7}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->y(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, LR5/a;->w()LR5/a;

    move-result-object v3

    invoke-virtual {v3}, LR5/a;->m()I

    move-result v3

    move v4, v3

    iget-object v5, v6, LD6/c;->tapPos:Lo6/d;

    invoke-virtual/range {v0 .. v5}, Ls5/k;->m(FFIILo6/d;)I

    move-result v0

    iput v0, v6, LD6/c;->tapPtr:I

    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static switchMode(Z)V
    .locals 9

    if-eqz p0, :cond_0

    sget-boolean v0, LD6/c;->swapEnabled:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2LsSpKey;->gw2Release(I)V

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2LsSpKey;->gw2Release(I)V

    sput-boolean p0, LD6/c;->swapActive:Z

    sget-object v0, LD6/c;->REG:[LD6/c;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    aget-object v2, v0, v1

    if-eqz v2, :cond_4

    monitor-enter v2

    :try_start_0
    if-eqz p0, :cond_2

    iget-boolean v3, v2, LD6/c;->held:Z

    if-eqz v3, :cond_3

    iget v3, v2, LD6/c;->tapPtr:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    iget-object v3, v2, LD6/c;->d:Ln7/a;

    iget-object v4, v2, LD6/c;->c:Ln7/a$b;

    invoke-interface {v3, v4}, Ln7/a;->d(Ln7/a$b;)V

    iget-object v3, v2, LD6/c;->c:Ln7/a$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v3}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->x(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->y(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {}, LR5/a;->w()LR5/a;

    move-result-object v6

    invoke-virtual {v6}, LR5/a;->m()I

    move-result v6

    move v7, v6

    iget-object v8, v2, LD6/c;->tapPos:Lo6/d;

    invoke-static {}, Ls5/k;->i()Ls5/k;

    move-result-object v3

    invoke-virtual/range {v3 .. v8}, Ls5/k;->m(FFIILo6/d;)I

    move-result v3

    iput v3, v2, LD6/c;->tapPtr:I

    goto :goto_1

    :cond_2
    iget v3, v2, LD6/c;->tapPtr:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    iget-object v5, v2, LD6/c;->tapPos:Lo6/d;

    iget v6, v5, Lo6/d;->a:F

    iget v5, v5, Lo6/d;->b:F

    invoke-static {}, Ls5/k;->i()Ls5/k;

    move-result-object v7

    invoke-virtual {v7, v3, v6, v5}, Ls5/k;->p(IFF)V

    iput v4, v2, LD6/c;->tapPtr:I

    iget-boolean v3, v2, LD6/c;->held:Z

    if-eqz v3, :cond_3

    iget-object v3, v2, LD6/c;->d:Ln7/a;

    iget-object v4, v2, LD6/c;->c:Ln7/a$b;

    invoke-interface {v3, v4}, Ln7/a;->i(Ln7/a$b;)V

    :cond_3
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public d(II)V
    .locals 5

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    const/4 v0, 0x0

    iput-boolean v0, p0, LD6/c;->held:Z

    iget v0, p0, LD6/c;->tapPtr:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, LD6/c;->tapPos:Lo6/d;

    iget v3, v2, Lo6/d;->a:F

    iget v2, v2, Lo6/d;->b:F

    invoke-static {}, Ls5/k;->i()Ls5/k;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v2}, Ls5/k;->p(IFF)V

    const/4 v0, -0x1

    iput v0, p0, LD6/c;->tapPtr:I

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LD6/c;->d:Ln7/a;

    iget-object v1, p0, LD6/c;->c:Ln7/a$b;

    invoke-interface {v0, v1}, Ln7/a;->d(Ln7/a$b;)V

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    invoke-static {p0}, LD6/c;->reassertOpposite(LD6/c;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e(II)V
    .locals 8

    monitor-enter p0

    :try_start_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LD6/c;->held:Z

    sget-boolean v0, LD6/c;->swapActive:Z

    if-eqz v0, :cond_0

    iget v0, p0, LD6/c;->tapPtr:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LD6/c;->c:Ln7/a$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-static {v6}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->x(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v6}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->y(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, LR5/a;->w()LR5/a;

    move-result-object v7

    invoke-virtual {v7}, LR5/a;->m()I

    move-result v3

    move v4, v3

    iget-object v5, p0, LD6/c;->tapPos:Lo6/d;

    invoke-static {}, Ls5/k;->i()Ls5/k;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Ls5/k;->m(FFIILo6/d;)I

    move-result v0

    iput v0, p0, LD6/c;->tapPtr:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, LD6/c;->d:Ln7/a;

    iget-object v1, p0, LD6/c;->c:Ln7/a$b;

    invoke-interface {v0, v1}, Ln7/a;->i(Ln7/a$b;)V

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
