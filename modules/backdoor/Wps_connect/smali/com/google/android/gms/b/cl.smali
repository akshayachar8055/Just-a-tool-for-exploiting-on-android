.class public Lcom/google/android/gms/b/cl;
.super Lcom/google/android/gms/b/he;


# annotations
.annotation runtime Lcom/google/android/gms/b/gb;
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/b/ii;

.field final b:Lcom/google/android/gms/b/cn;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/ii;Lcom/google/android/gms/b/cn;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/b/he;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/b/cl;->a:Lcom/google/android/gms/b/ii;

    iput-object p2, p0, Lcom/google/android/gms/b/cl;->b:Lcom/google/android/gms/b/cn;

    iput-object p3, p0, Lcom/google/android/gms/b/cl;->c:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->t()Lcom/google/android/gms/b/cm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/b/cm;->a(Lcom/google/android/gms/b/cl;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/cl;->b:Lcom/google/android/gms/b/cn;

    iget-object v1, p0, Lcom/google/android/gms/b/cl;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/cn;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/b/hj;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/b/cl$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/b/cl$1;-><init>(Lcom/google/android/gms/b/cl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/b/hj;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/b/cl$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/b/cl$1;-><init>(Lcom/google/android/gms/b/cl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/cl;->b:Lcom/google/android/gms/b/cn;

    invoke-virtual {v0}, Lcom/google/android/gms/b/cn;->b()V

    return-void
.end method
