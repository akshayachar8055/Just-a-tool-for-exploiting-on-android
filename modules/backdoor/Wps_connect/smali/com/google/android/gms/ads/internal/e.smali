.class public Lcom/google/android/gms/ads/internal/e;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/gb;
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/b/cp;

.field public final b:Lcom/google/android/gms/ads/internal/overlay/j;

.field public final c:Lcom/google/android/gms/ads/internal/overlay/m;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/b/cp;Lcom/google/android/gms/ads/internal/overlay/j;Lcom/google/android/gms/ads/internal/overlay/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/e;->a:Lcom/google/android/gms/b/cp;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/e;->b:Lcom/google/android/gms/ads/internal/overlay/j;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/e;->c:Lcom/google/android/gms/ads/internal/overlay/m;

    return-void
.end method

.method public static a()Lcom/google/android/gms/ads/internal/e;
    .locals 4

    new-instance v0, Lcom/google/android/gms/ads/internal/e;

    new-instance v1, Lcom/google/android/gms/b/by;

    invoke-direct {v1}, Lcom/google/android/gms/b/by;-><init>()V

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/n;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/overlay/n;-><init>()V

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/r;

    invoke-direct {v3}, Lcom/google/android/gms/ads/internal/overlay/r;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/e;-><init>(Lcom/google/android/gms/b/cp;Lcom/google/android/gms/ads/internal/overlay/j;Lcom/google/android/gms/ads/internal/overlay/m;)V

    return-object v0
.end method
