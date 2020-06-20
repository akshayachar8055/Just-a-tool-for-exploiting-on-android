.class final synthetic Lcom/google/android/gms/internal/ads/bk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ro;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/qe;

.field private final b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qe;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bk;->a:Lcom/google/android/gms/internal/ads/qe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bk;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bk;->a:Lcom/google/android/gms/internal/ads/qe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bk;->b:Lorg/json/JSONObject;

    const-string v2, "google.afma.nativeAds.renderVideo"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/qe;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
