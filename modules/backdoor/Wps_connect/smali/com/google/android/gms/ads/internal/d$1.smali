.class Lcom/google/android/gms/ads/internal/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/cb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/d;->a(Lcom/google/android/gms/b/de;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/d$1;->a:Lcom/google/android/gms/ads/internal/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/ii;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/b/ii;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d$1;->a:Lcom/google/android/gms/ads/internal/d;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/b/gx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d$1;->a:Lcom/google/android/gms/ads/internal/d;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/d;->h:Lcom/google/android/gms/b/t;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/d$1;->a:Lcom/google/android/gms/ads/internal/d;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/d$1;->a:Lcom/google/android/gms/ads/internal/d;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/b/gx;

    invoke-interface {p1}, Lcom/google/android/gms/b/ii;->b()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/b/t;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/b/gx;Landroid/view/View;Lcom/google/android/gms/b/de;)Lcom/google/android/gms/b/q;

    :goto_0
    return-void

    :cond_0
    const-string v0, "Request to enable ActiveView before adState is available."

    invoke-static {v0}, Lcom/google/android/gms/b/hf;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
