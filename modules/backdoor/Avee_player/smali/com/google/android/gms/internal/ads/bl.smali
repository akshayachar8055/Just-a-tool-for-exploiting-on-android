.class final synthetic Lcom/google/android/gms/internal/ads/bl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/rn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bi;

.field private final b:Lcom/google/android/gms/internal/ads/np;

.field private final c:Lcom/google/android/gms/internal/ads/qe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bi;Lcom/google/android/gms/internal/ads/np;Lcom/google/android/gms/internal/ads/qe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bl;->a:Lcom/google/android/gms/internal/ads/bi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bl;->b:Lcom/google/android/gms/internal/ads/np;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bl;->c:Lcom/google/android/gms/internal/ads/qe;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bl;->a:Lcom/google/android/gms/internal/ads/bi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bl;->b:Lcom/google/android/gms/internal/ads/np;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bl;->c:Lcom/google/android/gms/internal/ads/qe;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/bi;->a(Lcom/google/android/gms/internal/ads/np;Lcom/google/android/gms/internal/ads/qe;Z)V

    return-void
.end method
