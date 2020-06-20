.class final Lcom/google/android/gms/internal/ads/aly;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/alb;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/alw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/alw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aly;->a:Lcom/google/android/gms/internal/ads/alw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aly;->a:Lcom/google/android/gms/internal/ads/alw;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/alw;->b(Lcom/google/android/gms/internal/ads/alw;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aly;->a:Lcom/google/android/gms/internal/ads/alw;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/alw;->a(Lcom/google/android/gms/internal/ads/alw;)V

    return-void
.end method
