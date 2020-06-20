.class final Lcom/google/android/gms/internal/ads/aab;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aak;

.field private final b:[B


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aab;->b:[B

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aab;->b:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aak;->a([B)Lcom/google/android/gms/internal/ads/aak;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aab;->a:Lcom/google/android/gms/internal/ads/aak;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/ads/zx;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/aab;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zw;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->a:Lcom/google/android/gms/internal/ads/aak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aak;->b()V

    new-instance v0, Lcom/google/android/gms/internal/ads/aad;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aab;->b:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/aad;-><init>([B)V

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/aak;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aab;->a:Lcom/google/android/gms/internal/ads/aak;

    return-object v0
.end method
