.class final synthetic Lcom/google/android/gms/ads/internal/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/rp;


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/zzal;

.field private final b:Lcom/google/android/gms/internal/ads/ij;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzal;Lcom/google/android/gms/internal/ads/ij;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/f;->a:Lcom/google/android/gms/ads/internal/zzal;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/f;->b:Lcom/google/android/gms/internal/ads/ij;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/f;->a:Lcom/google/android/gms/ads/internal/zzal;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/f;->b:Lcom/google/android/gms/internal/ads/ij;

    new-instance v2, Lcom/google/android/gms/internal/ads/akg;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzal;->e:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzrt:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/ij;->b:Lcom/google/android/gms/internal/ads/qe;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/qe;->getView()Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/akg;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/ij;->b:Lcom/google/android/gms/internal/ads/qe;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/akg;->a(Lcom/google/android/gms/internal/ads/akk;)V

    return-void
.end method
