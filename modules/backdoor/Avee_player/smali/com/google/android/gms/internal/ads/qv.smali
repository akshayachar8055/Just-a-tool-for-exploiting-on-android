.class final synthetic Lcom/google/android/gms/internal/ads/qv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/qu;

.field private final b:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qu;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qv;->a:Lcom/google/android/gms/internal/ads/qu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qv;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qv;->a:Lcom/google/android/gms/internal/ads/qu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qv;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/qu;->a(Ljava/util/Map;)V

    return-void
.end method
