.class public final Lcom/google/android/gms/internal/ads/qx;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<WebViewT::",
        "Lcom/google/android/gms/internal/ads/ra;",
        ":",
        "Lcom/google/android/gms/internal/ads/ri;",
        ":",
        "Lcom/google/android/gms/internal/ads/rl;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/qz;

.field private final b:Lcom/google/android/gms/internal/ads/ra;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TWebViewT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ra;Lcom/google/android/gms/internal/ads/qz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWebViewT;",
            "Lcom/google/android/gms/internal/ads/qz;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qx;->a:Lcom/google/android/gms/internal/ads/qz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qx;->b:Lcom/google/android/gms/internal/ads/ra;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/qe;)Lcom/google/android/gms/internal/ads/qx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/qe;",
            ")",
            "Lcom/google/android/gms/internal/ads/qx<",
            "Lcom/google/android/gms/internal/ads/qe;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/qx;

    new-instance v1, Lcom/google/android/gms/internal/ads/qy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/qy;-><init>(Lcom/google/android/gms/internal/ads/qe;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/qx;-><init>(Lcom/google/android/gms/internal/ads/ra;Lcom/google/android/gms/internal/ads/qz;)V

    return-object v0
.end method
