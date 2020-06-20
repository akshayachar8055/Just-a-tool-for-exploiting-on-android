.class public final Lcom/google/android/gms/internal/ads/ye;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/yu;

.field private final b:Lcom/google/android/gms/internal/ads/yu;


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/yu;->a([B)Lcom/google/android/gms/internal/ads/yu;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ye;->a:Lcom/google/android/gms/internal/ads/yu;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/yu;->a([B)Lcom/google/android/gms/internal/ads/yu;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ye;->b:Lcom/google/android/gms/internal/ads/yu;

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ye;->a:Lcom/google/android/gms/internal/ads/yu;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ye;->a:Lcom/google/android/gms/internal/ads/yu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yu;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public final b()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ye;->b:Lcom/google/android/gms/internal/ads/yu;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ye;->b:Lcom/google/android/gms/internal/ads/yu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yu;->a()[B

    move-result-object v0

    return-object v0
.end method
