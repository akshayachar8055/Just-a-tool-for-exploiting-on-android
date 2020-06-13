.class Lcom/google/android/gms/ads/internal/request/m$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/ib$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/request/m$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/b/ib$c",
        "<",
        "Lcom/google/android/gms/b/de;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/request/m$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/m$2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/m$2$1;->a:Lcom/google/android/gms/ads/internal/request/m$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/de;)V
    .locals 2

    :try_start_0
    const-string v0, "AFMA_getAdapterLessMediationAd"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/m$2$1;->a:Lcom/google/android/gms/ads/internal/request/m$2;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/m$2;->a:Lorg/json/JSONObject;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/b/de;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error requesting an ad url"

    invoke-static {v1, v0}, Lcom/google/android/gms/b/hf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/request/m;->c()Lcom/google/android/gms/b/cg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/m$2$1;->a:Lcom/google/android/gms/ads/internal/request/m$2;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/m$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/cg;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/b/de;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/request/m$2$1;->a(Lcom/google/android/gms/b/de;)V

    return-void
.end method
