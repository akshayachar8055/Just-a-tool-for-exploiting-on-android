.class final Lcom/google/android/gms/ads/internal/overlay/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:I

.field private synthetic c:Lcom/google/android/gms/ads/internal/overlay/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/x;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/ac;->c:Lcom/google/android/gms/ads/internal/overlay/x;

    iput p2, p0, Lcom/google/android/gms/ads/internal/overlay/ac;->a:I

    iput p3, p0, Lcom/google/android/gms/ads/internal/overlay/ac;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/ac;->c:Lcom/google/android/gms/ads/internal/overlay/x;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/x;->a(Lcom/google/android/gms/ads/internal/overlay/x;)Lcom/google/android/gms/ads/internal/overlay/ar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/ac;->c:Lcom/google/android/gms/ads/internal/overlay/x;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/x;->a(Lcom/google/android/gms/ads/internal/overlay/x;)Lcom/google/android/gms/ads/internal/overlay/ar;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/ac;->a:I

    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/ac;->b:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/ar;->a(II)V

    :cond_0
    return-void
.end method
