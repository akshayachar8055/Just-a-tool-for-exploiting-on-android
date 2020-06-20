.class final synthetic Lcom/google/android/gms/internal/ads/az;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ay;

.field private final b:Lcom/google/android/gms/internal/ads/np;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ay;Lcom/google/android/gms/internal/ads/np;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/az;->a:Lcom/google/android/gms/internal/ads/ay;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/az;->b:Lcom/google/android/gms/internal/ads/np;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/az;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/az;->a:Lcom/google/android/gms/internal/ads/ay;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/az;->b:Lcom/google/android/gms/internal/ads/np;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/az;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ay;->a(Lcom/google/android/gms/internal/ads/np;Ljava/lang/String;)V

    return-void
.end method
