.class final Lcom/google/android/gms/internal/ads/eg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ns;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ee;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ee;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eg;->a:Lcom/google/android/gms/internal/ads/ee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/ec;->d()Lcom/google/android/gms/ads/internal/gmsg/zzaa;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eg;->a:Lcom/google/android/gms/internal/ads/ee;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ee;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/gmsg/zzaa;->zzat(Ljava/lang/String;)V

    return-void
.end method
