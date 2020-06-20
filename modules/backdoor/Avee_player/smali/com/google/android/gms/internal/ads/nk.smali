.class public final Lcom/google/android/gms/internal/ads/nk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Ljava/util/concurrent/Executor;

.field private static final c:Lcom/google/android/gms/internal/ads/nj;

.field private static final d:Lcom/google/android/gms/internal/ads/nj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/nl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/nl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/nk;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/internal/ads/nm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/nm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/nk;->b:Ljava/util/concurrent/Executor;

    sget-object v0, Lcom/google/android/gms/internal/ads/nk;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nk;->a(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/nj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/nk;->c:Lcom/google/android/gms/internal/ads/nj;

    sget-object v0, Lcom/google/android/gms/internal/ads/nk;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nk;->a(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/nj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/nk;->d:Lcom/google/android/gms/internal/ads/nj;

    return-void
.end method

.method public static a(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/nj;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/nn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/nn;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/nl;)V

    return-object v0
.end method
