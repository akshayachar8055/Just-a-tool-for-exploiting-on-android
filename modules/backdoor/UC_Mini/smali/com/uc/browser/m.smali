.class public Lcom/uc/browser/m;
.super Ljava/lang/Object;


# static fields
.field private static synthetic d:Z


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/uc/browser/m;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/uc/browser/m;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uc/browser/m;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    iput v1, p0, Lcom/uc/browser/m;->b:I

    iput v1, p0, Lcom/uc/browser/m;->c:I

    return-void
.end method

.method private declared-synchronized a(Lcom/uc/browser/o;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/uc/browser/m;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/uc/browser/m;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/uc/browser/m;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/uc/browser/m;->c:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/uc/browser/m;->l()Lcom/uc/browser/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uc/browser/o;->b(I)V

    iget v1, p0, Lcom/uc/browser/m;->c:I

    invoke-virtual {v0}, Lcom/uc/browser/o;->a()I

    move-result v2

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/uc/browser/o;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/uc/browser/m;->c:I

    :cond_2
    invoke-virtual {v0}, Lcom/uc/browser/o;->a()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/uc/browser/m;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/uc/browser/m;->b:I

    sget-boolean v0, Lcom/uc/browser/m;->d:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/uc/browser/m;->b:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/uc/browser/m;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/uc/browser/m;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized q()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/uc/browser/m;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private r()V
    .locals 5

    const/4 v2, -0x1

    const/4 v0, 0x0

    move v1, v2

    move v3, v0

    :goto_0
    iget-object v0, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_1

    iget-object v0, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/browser/o;

    invoke-virtual {v0}, Lcom/uc/browser/o;->b()I

    move-result v0

    if-nez v0, :cond_0

    if-gez v1, :cond_3

    move v0, v3

    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    if-gt v3, v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    if-ltz v1, :cond_2

    iget-object v0, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v0, p0, Lcom/uc/browser/m;->b:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/uc/browser/m;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/uc/browser/m;->b:I

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private s()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/uc/browser/m;->b:I

    const/4 v2, -0x1

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/uc/browser/m;->b:I

    iget-object v2, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    :cond_0
    iput v0, p0, Lcom/uc/browser/m;->b:I

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private t()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/uc/browser/m;->c:I

    const/4 v3, -0x1

    if-ge v2, v3, :cond_0

    iput v1, p0, Lcom/uc/browser/m;->c:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/uc/browser/m;->l()Lcom/uc/browser/o;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/uc/browser/m;->c:I

    invoke-virtual {v2}, Lcom/uc/browser/o;->a()I

    move-result v2

    if-lt v3, v2, :cond_1

    iput v1, p0, Lcom/uc/browser/m;->c:I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/uc/browser/m;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/uc/browser/m;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-ltz p1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/uc/browser/m;->l()Lcom/uc/browser/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/browser/o;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/uc/browser/m;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/uc/browser/m;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(ILjava/util/ArrayList;I)Z
    .locals 10

    const/4 v7, -0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/uc/browser/m;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/uc/browser/m;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/uc/browser/m;->t()Z

    move v4, v2

    move v1, v7

    move v3, v2

    :goto_1
    iget-object v0, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_10

    iget-object v0, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/browser/o;

    invoke-virtual {v0}, Lcom/uc/browser/o;->b()I

    move-result v5

    if-eq v5, p1, :cond_f

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v6, v5

    move v5, v1

    :goto_2
    invoke-virtual {v0}, Lcom/uc/browser/o;->a()I

    move-result v1

    if-lez v1, :cond_e

    invoke-virtual {v0}, Lcom/uc/browser/o;->a()I

    move-result v1

    if-ge v6, v1, :cond_e

    invoke-static {v0}, Lcom/uc/browser/o;->a(Lcom/uc/browser/o;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uc/browser/n;

    invoke-virtual {v1}, Lcom/uc/browser/n;->a()I

    move-result v8

    if-ne v8, p3, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {v1}, Lcom/uc/browser/n;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v7, :cond_4

    add-int/lit8 v1, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v9, v1

    move v1, v5

    move v5, v9

    :goto_3
    invoke-virtual {v0}, Lcom/uc/browser/o;->a()I

    move-result v6

    if-lt v5, v6, :cond_2

    :goto_4
    invoke-virtual {v0}, Lcom/uc/browser/o;->a()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-ge v4, v3, :cond_d

    add-int/lit8 v0, v3, -0x1

    :goto_5
    iget v3, p0, Lcom/uc/browser/m;->b:I

    if-ge v4, v3, :cond_c

    iget v3, p0, Lcom/uc/browser/m;->b:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/uc/browser/m;->b:I

    move v3, v4

    :goto_6
    iget-object v4, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_b

    move v9, v0

    move v0, v1

    move v1, v9

    :goto_7
    invoke-direct {p0}, Lcom/uc/browser/m;->r()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_8
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_4
    invoke-static {v0}, Lcom/uc/browser/o;->a(Lcom/uc/browser/o;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v1, v5

    move v5, v6

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v4, 0x1

    move v9, v0

    move v0, v3

    move v3, v9

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/uc/browser/m;->i()I

    move-result v0

    if-eq p1, v0, :cond_9

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    new-instance v0, Lcom/uc/browser/o;

    invoke-direct {v0, p1}, Lcom/uc/browser/o;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/uc/browser/o;->a(Ljava/util/ArrayList;)V

    invoke-direct {p0, v0}, Lcom/uc/browser/m;->a(Lcom/uc/browser/o;)V

    iget v0, p0, Lcom/uc/browser/m;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uc/browser/m;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/uc/browser/m;->c:I

    :cond_7
    :goto_9
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_8
    if-ltz v1, :cond_7

    iget-object v0, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    invoke-direct {p0, v1}, Lcom/uc/browser/m;->d(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_9
    :try_start_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {p0}, Lcom/uc/browser/m;->l()Lcom/uc/browser/o;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/uc/browser/o;->a(Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    move v0, v2

    goto/16 :goto_0

    :cond_b
    move v4, v3

    move v3, v1

    move v1, v0

    goto/16 :goto_1

    :cond_c
    move v3, v4

    goto :goto_6

    :cond_d
    move v0, v3

    goto/16 :goto_5

    :cond_e
    move v1, v5

    goto/16 :goto_4

    :cond_f
    move v6, v2

    move v5, v3

    move v3, v1

    goto/16 :goto_2

    :cond_10
    move v0, v3

    goto :goto_7
.end method

.method public final declared-synchronized b()Z
    .locals 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/uc/browser/m;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/uc/browser/m;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/uc/browser/m;->t()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/uc/browser/m;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :try_start_2
    iget v0, p0, Lcom/uc/browser/m;->c:I

    if-ltz v0, :cond_4

    iget v2, p0, Lcom/uc/browser/m;->c:I

    iget-object v0, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    iget v3, p0, Lcom/uc/browser/m;->b:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/browser/o;

    invoke-virtual {v0}, Lcom/uc/browser/o;->a()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(I)Z
    .locals 3

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/uc/browser/m;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/uc/browser/m;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/uc/browser/m;->b:I

    move v2, v0

    :goto_1
    if-ltz v2, :cond_3

    iget-object v0, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/browser/o;

    invoke-virtual {v0}, Lcom/uc/browser/o;->b()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-ne v0, p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_3
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/uc/browser/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/uc/browser/m;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/uc/browser/m;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/uc/browser/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/uc/browser/m;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uc/browser/m;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/uc/browser/m;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/uc/browser/m;->b:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/uc/browser/m;->b:I

    iget-object v1, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/uc/browser/m;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/uc/browser/m;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/uc/browser/m;->b:I

    iget-object v0, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/uc/browser/m;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/browser/o;

    invoke-virtual {v0}, Lcom/uc/browser/o;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/uc/browser/m;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/uc/browser/m;->f()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/uc/browser/m;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uc/browser/m;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/uc/browser/m;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()I
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/uc/browser/m;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/uc/browser/m;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/uc/browser/m;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/browser/o;

    invoke-virtual {v0}, Lcom/uc/browser/o;->b()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()I
    .locals 2

    const/4 v0, -0x1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/uc/browser/m;->s()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/uc/browser/m;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/uc/browser/m;->t()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/uc/browser/m;->c:I

    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/uc/browser/m;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/browser/o;

    iget v1, p0, Lcom/uc/browser/m;->c:I

    invoke-virtual {v0, v1}, Lcom/uc/browser/o;->d(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k()Z
    .locals 3

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/uc/browser/m;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/uc/browser/m;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/uc/browser/m;->t()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/uc/browser/m;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    iget v2, p0, Lcom/uc/browser/m;->b:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/browser/o;

    iget v2, p0, Lcom/uc/browser/m;->c:I

    invoke-virtual {v0, v2}, Lcom/uc/browser/o;->a(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized l()Lcom/uc/browser/o;
    .locals 3

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/uc/browser/m;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/uc/browser/m;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    iget v2, p0, Lcom/uc/browser/m;->b:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/browser/o;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized m()V
    .locals 2

    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/uc/browser/m;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/uc/browser/m;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/uc/browser/m;->l()Lcom/uc/browser/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/browser/o;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/uc/browser/m;->c(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized n()V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/uc/browser/m;->s()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/uc/browser/m;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    invoke-virtual {p0}, Lcom/uc/browser/m;->i()I

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    move v4, v1

    move v5, v2

    :goto_2
    add-int/lit8 v2, v6, -0x1

    if-ge v4, v2, :cond_6

    iget v2, p0, Lcom/uc/browser/m;->b:I

    if-ne v5, v2, :cond_4

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/uc/browser/m;->l()Lcom/uc/browser/o;

    move-result-object v7

    invoke-virtual {v7}, Lcom/uc/browser/o;->a()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    move v3, v2

    move v2, v1

    :goto_3
    if-ge v2, v8, :cond_5

    invoke-direct {p0}, Lcom/uc/browser/m;->q()I

    move-result v9

    if-eq v3, v9, :cond_2

    invoke-virtual {v7, v3}, Lcom/uc/browser/o;->b(I)V

    :cond_2
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v3, v5, -0x1

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v5, v3

    goto :goto_2

    :cond_6
    iget v1, p0, Lcom/uc/browser/m;->b:I

    if-eqz v1, :cond_7

    if-nez v0, :cond_7

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/uc/browser/m;->d(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/uc/browser/m;->d(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized o()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized p()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/uc/browser/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uc/browser/o;-><init>(I)V

    invoke-virtual {v0}, Lcom/uc/browser/o;->c()V

    invoke-direct {p0, v0}, Lcom/uc/browser/m;->a(Lcom/uc/browser/o;)V

    iget v0, p0, Lcom/uc/browser/m;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uc/browser/m;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/uc/browser/m;->c:I

    invoke-direct {p0}, Lcom/uc/browser/m;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
