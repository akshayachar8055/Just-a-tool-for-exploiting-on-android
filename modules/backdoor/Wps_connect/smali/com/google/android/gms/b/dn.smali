.class public final Lcom/google/android/gms/b/dn;
.super Lcom/google/android/gms/b/dw$a;


# annotations
.annotation runtime Lcom/google/android/gms/b/gb;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/b/dp$a;

.field private c:Lcom/google/android/gms/b/dm;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/b/dw$a;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/dn;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/b/dn;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/dn;->c:Lcom/google/android/gms/b/dm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/dn;->c:Lcom/google/android/gms/b/dm;

    invoke-interface {v0}, Lcom/google/android/gms/b/dm;->t()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(I)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/b/dn;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/dn;->b:Lcom/google/android/gms/b/dp$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/b/dn;->b:Lcom/google/android/gms/b/dp$a;

    invoke-interface {v2, v0}, Lcom/google/android/gms/b/dp$a;->a(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/b/dn;->b:Lcom/google/android/gms/b/dp$a;

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/b/dm;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/b/dn;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/b/dn;->c:Lcom/google/android/gms/b/dm;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/b/dp$a;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/b/dn;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/b/dn;->b:Lcom/google/android/gms/b/dp$a;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/b/dy;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/b/dn;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/dn;->b:Lcom/google/android/gms/b/dp$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/dn;->b:Lcom/google/android/gms/b/dp$a;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1}, Lcom/google/android/gms/b/dp$a;->a(ILcom/google/android/gms/b/dy;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/b/dn;->b:Lcom/google/android/gms/b/dp$a;

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/dn;->c:Lcom/google/android/gms/b/dm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/dn;->c:Lcom/google/android/gms/b/dm;

    invoke-interface {v0}, Lcom/google/android/gms/b/dm;->x()V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/b/dn;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/dn;->c:Lcom/google/android/gms/b/dm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/dn;->c:Lcom/google/android/gms/b/dm;

    invoke-interface {v0}, Lcom/google/android/gms/b/dm;->u()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/b/dn;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/dn;->c:Lcom/google/android/gms/b/dm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/dn;->c:Lcom/google/android/gms/b/dm;

    invoke-interface {v0}, Lcom/google/android/gms/b/dm;->v()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/b/dn;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/dn;->c:Lcom/google/android/gms/b/dm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/dn;->c:Lcom/google/android/gms/b/dm;

    invoke-interface {v0}, Lcom/google/android/gms/b/dm;->w()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/b/dn;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/dn;->b:Lcom/google/android/gms/b/dp$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/dn;->b:Lcom/google/android/gms/b/dp$a;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/b/dp$a;->a(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/b/dn;->b:Lcom/google/android/gms/b/dp$a;

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/dn;->c:Lcom/google/android/gms/b/dm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/dn;->c:Lcom/google/android/gms/b/dm;

    invoke-interface {v0}, Lcom/google/android/gms/b/dm;->x()V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
