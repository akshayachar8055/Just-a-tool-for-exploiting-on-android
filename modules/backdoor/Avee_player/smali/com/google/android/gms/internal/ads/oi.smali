.class final Lcom/google/android/gms/internal/ads/oi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:I

.field private final synthetic c:Lcom/google/android/gms/internal/ads/ob;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ob;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oi;->c:Lcom/google/android/gms/internal/ads/ob;

    iput p2, p0, Lcom/google/android/gms/internal/ads/oi;->a:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/oi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oi;->c:Lcom/google/android/gms/internal/ads/ob;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ob;->a(Lcom/google/android/gms/internal/ads/ob;)Lcom/google/android/gms/internal/ads/om;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oi;->c:Lcom/google/android/gms/internal/ads/ob;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ob;->a(Lcom/google/android/gms/internal/ads/ob;)Lcom/google/android/gms/internal/ads/om;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/oi;->a:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/oi;->b:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/om;->a(II)V

    :cond_0
    return-void
.end method
