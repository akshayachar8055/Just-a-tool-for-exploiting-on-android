.class final synthetic Lcom/google/android/gms/ads/internal/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/zzay;

.field private final b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzay;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/q;->a:Lcom/google/android/gms/ads/internal/zzay;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/q;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/q;->a:Lcom/google/android/gms/ads/internal/zzay;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/q;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzay;->a(Ljava/lang/Runnable;)V

    return-void
.end method
