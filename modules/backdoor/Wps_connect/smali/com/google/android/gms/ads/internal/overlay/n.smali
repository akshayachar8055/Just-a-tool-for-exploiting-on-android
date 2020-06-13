.class public Lcom/google/android/gms/ads/internal/overlay/n;
.super Lcom/google/android/gms/ads/internal/overlay/j;


# annotations
.annotation runtime Lcom/google/android/gms/b/gb;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/google/android/gms/b/ii;ILcom/google/android/gms/b/az;Lcom/google/android/gms/b/aw;)Lcom/google/android/gms/ads/internal/overlay/i;
    .locals 7

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/n;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v6, Lcom/google/android/gms/ads/internal/overlay/c;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/t;

    invoke-interface {p2}, Lcom/google/android/gms/b/ii;->o()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/android/gms/b/ii;->u()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/t;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/b/az;Lcom/google/android/gms/b/aw;)V

    invoke-direct {v6, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/t;)V

    move-object v0, v6

    goto :goto_0
.end method
