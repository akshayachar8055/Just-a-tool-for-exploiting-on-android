.class final Lcom/google/android/gms/internal/ads/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ij;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/aw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aw;Lcom/google/android/gms/internal/ads/ij;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ax;->b:Lcom/google/android/gms/internal/ads/aw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ax;->a:Lcom/google/android/gms/internal/ads/ij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ax;->b:Lcom/google/android/gms/internal/ads/aw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aw;->a(Lcom/google/android/gms/internal/ads/aw;)Lcom/google/android/gms/internal/ads/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ax;->a:Lcom/google/android/gms/internal/ads/ij;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ap;->zzb(Lcom/google/android/gms/internal/ads/ij;)V

    return-void
.end method
