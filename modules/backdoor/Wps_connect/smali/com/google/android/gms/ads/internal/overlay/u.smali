.class Lcom/google/android/gms/ads/internal/overlay/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/google/android/gms/b/gb;
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/ads/internal/overlay/k;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->b:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/u;->a:Lcom/google/android/gms/ads/internal/overlay/k;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->b:Z

    sget-object v0, Lcom/google/android/gms/b/hj;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/b/hj;->a:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->a:Lcom/google/android/gms/ads/internal/overlay/k;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/k;->n()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/u;->b()V

    :cond_0
    return-void
.end method
