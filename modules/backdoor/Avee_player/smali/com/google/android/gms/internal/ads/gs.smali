.class public final Lcom/google/android/gms/internal/ads/gs;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:J

.field private final d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/gu;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gu;->a(Lcom/google/android/gms/internal/ads/gu;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gs;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gu;->b(Lcom/google/android/gms/internal/ads/gu;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gs;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gu;->c(Lcom/google/android/gms/internal/ads/gu;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/gs;->b:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gu;->d(Lcom/google/android/gms/internal/ads/gu;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/gs;->c:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/gu;Lcom/google/android/gms/internal/ads/gt;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/gs;-><init>(Lcom/google/android/gms/internal/ads/gu;)V

    return-void
.end method
