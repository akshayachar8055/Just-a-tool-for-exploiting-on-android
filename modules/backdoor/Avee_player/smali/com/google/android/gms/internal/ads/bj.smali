.class final synthetic Lcom/google/android/gms/internal/ads/bj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bi;

.field private final b:Lorg/json/JSONObject;

.field private final c:Lcom/google/android/gms/internal/ads/np;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bi;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/np;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bj;->a:Lcom/google/android/gms/internal/ads/bi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bj;->b:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bj;->c:Lcom/google/android/gms/internal/ads/np;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bj;->a:Lcom/google/android/gms/internal/ads/bi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bj;->b:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bj;->c:Lcom/google/android/gms/internal/ads/np;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bi;->a(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/np;)V

    return-void
.end method
