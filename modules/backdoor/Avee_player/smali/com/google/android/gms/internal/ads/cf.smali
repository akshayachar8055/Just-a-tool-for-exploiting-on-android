.class final Lcom/google/android/gms/internal/ads/cf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/mq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/mq<",
        "Lcom/google/android/gms/internal/ads/qe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/qe;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/qe;->destroy()V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
