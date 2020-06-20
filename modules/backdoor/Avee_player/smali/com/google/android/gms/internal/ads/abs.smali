.class public Lcom/google/android/gms/internal/ads/abs;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/aar;


# instance fields
.field private b:Lcom/google/android/gms/internal/ads/zw;

.field private volatile c:Lcom/google/android/gms/internal/ads/acl;

.field private volatile d:Lcom/google/android/gms/internal/ads/zw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/aar;->a()Lcom/google/android/gms/internal/ads/aar;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/abs;->a:Lcom/google/android/gms/internal/ads/aar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/acl;)Lcom/google/android/gms/internal/ads/acl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->c:Lcom/google/android/gms/internal/ads/acl;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->c:Lcom/google/android/gms/internal/ads/acl;

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abs;->c:Lcom/google/android/gms/internal/ads/acl;

    sget-object v0, Lcom/google/android/gms/internal/ads/zw;->a:Lcom/google/android/gms/internal/ads/zw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->d:Lcom/google/android/gms/internal/ads/zw;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/abk; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abs;->c:Lcom/google/android/gms/internal/ads/acl;

    sget-object p1, Lcom/google/android/gms/internal/ads/zw;->a:Lcom/google/android/gms/internal/ads/zw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abs;->d:Lcom/google/android/gms/internal/ads/zw;

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/abs;->c:Lcom/google/android/gms/internal/ads/acl;

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/acl;)Lcom/google/android/gms/internal/ads/acl;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->c:Lcom/google/android/gms/internal/ads/acl;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/abs;->b:Lcom/google/android/gms/internal/ads/zw;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/abs;->d:Lcom/google/android/gms/internal/ads/zw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abs;->c:Lcom/google/android/gms/internal/ads/acl;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->d:Lcom/google/android/gms/internal/ads/zw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->d:Lcom/google/android/gms/internal/ads/zw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zw;->a()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->c:Lcom/google/android/gms/internal/ads/acl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->c:Lcom/google/android/gms/internal/ads/acl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/acl;->l()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->d:Lcom/google/android/gms/internal/ads/zw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->d:Lcom/google/android/gms/internal/ads/zw;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->d:Lcom/google/android/gms/internal/ads/zw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->d:Lcom/google/android/gms/internal/ads/zw;

    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->c:Lcom/google/android/gms/internal/ads/acl;

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zw;->a:Lcom/google/android/gms/internal/ads/zw;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->d:Lcom/google/android/gms/internal/ads/zw;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->c:Lcom/google/android/gms/internal/ads/acl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/acl;->h()Lcom/google/android/gms/internal/ads/zw;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->d:Lcom/google/android/gms/internal/ads/zw;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/abs;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/abs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abs;->c:Lcom/google/android/gms/internal/ads/acl;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/abs;->c:Lcom/google/android/gms/internal/ads/acl;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/abs;->c()Lcom/google/android/gms/internal/ads/zw;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/abs;->c()Lcom/google/android/gms/internal/ads/zw;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zw;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/acl;->p()Lcom/google/android/gms/internal/ads/acl;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/abs;->b(Lcom/google/android/gms/internal/ads/acl;)Lcom/google/android/gms/internal/ads/acl;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/acl;->p()Lcom/google/android/gms/internal/ads/acl;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/abs;->b(Lcom/google/android/gms/internal/ads/acl;)Lcom/google/android/gms/internal/ads/acl;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
