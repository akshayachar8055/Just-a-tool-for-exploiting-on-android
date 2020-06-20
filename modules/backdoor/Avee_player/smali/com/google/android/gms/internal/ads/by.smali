.class final synthetic Lcom/google/android/gms/internal/ads/by;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/mo;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bu;

.field private final b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bu;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/by;->a:Lcom/google/android/gms/internal/ads/bu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/by;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ne;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/by;->a:Lcom/google/android/gms/internal/ads/bu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/by;->b:Lorg/json/JSONObject;

    check-cast p1, Lcom/google/android/gms/internal/ads/qe;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/bu;->b(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/qe;)Lcom/google/android/gms/internal/ads/ne;

    move-result-object p1

    return-object p1
.end method
