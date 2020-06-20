.class final synthetic Lcom/google/android/gms/internal/ads/ha;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/gz;

.field private final b:Lcom/google/android/gms/internal/ads/ij;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/gz;Lcom/google/android/gms/internal/ads/ij;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ha;->a:Lcom/google/android/gms/internal/ads/gz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ha;->b:Lcom/google/android/gms/internal/ads/ij;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->a:Lcom/google/android/gms/internal/ads/gz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ha;->b:Lcom/google/android/gms/internal/ads/ij;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/gz;->b(Lcom/google/android/gms/internal/ads/ij;)V

    return-void
.end method
