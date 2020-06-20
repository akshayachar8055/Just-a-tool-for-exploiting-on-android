.class public final Lcom/google/android/gms/ads/internal/zzw;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field public final zzwy:Lcom/google/android/gms/internal/ads/pu;

.field public final zzwz:Lcom/google/android/gms/internal/ads/oo;

.field public final zzxa:Lcom/google/android/gms/internal/ads/hv;

.field public final zzxb:Lcom/google/android/gms/internal/ads/amo;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/pu;Lcom/google/android/gms/internal/ads/oo;Lcom/google/android/gms/internal/ads/hv;Lcom/google/android/gms/internal/ads/amo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzw;->zzwy:Lcom/google/android/gms/internal/ads/pu;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzw;->zzwz:Lcom/google/android/gms/internal/ads/oo;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzw;->zzxa:Lcom/google/android/gms/internal/ads/hv;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzw;->zzxb:Lcom/google/android/gms/internal/ads/amo;

    return-void
.end method

.method public static zzc(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/zzw;
    .locals 5

    new-instance v0, Lcom/google/android/gms/ads/internal/zzw;

    new-instance v1, Lcom/google/android/gms/internal/ads/pj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/pj;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/ov;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/ov;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/ads/hq;

    new-instance v4, Lcom/google/android/gms/internal/ads/hr;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/hr;-><init>()V

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/hq;-><init>(Lcom/google/android/gms/internal/ads/hw;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/amo;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/ads/amo;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/zzw;-><init>(Lcom/google/android/gms/internal/ads/pu;Lcom/google/android/gms/internal/ads/oo;Lcom/google/android/gms/internal/ads/hv;Lcom/google/android/gms/internal/ads/amo;)V

    return-object v0
.end method
