.class final synthetic Lcom/google/android/gms/ads/internal/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/rp;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/akg;

.field private final b:Lcom/google/android/gms/internal/ads/ij;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/akg;Lcom/google/android/gms/internal/ads/ij;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/ads/akg;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/a;->b:Lcom/google/android/gms/internal/ads/ij;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/ads/akg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->b:Lcom/google/android/gms/internal/ads/ij;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ij;->b:Lcom/google/android/gms/internal/ads/qe;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/akg;->a(Lcom/google/android/gms/internal/ads/akk;)V

    return-void
.end method
