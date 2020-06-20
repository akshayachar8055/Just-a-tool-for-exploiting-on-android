.class final synthetic Lcom/google/android/gms/internal/ads/oq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/on;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/on;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oq;->a:Lcom/google/android/gms/internal/ads/on;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/on;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/oq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/oq;-><init>(Lcom/google/android/gms/internal/ads/on;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oq;->a:Lcom/google/android/gms/internal/ads/on;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/on;->b()V

    return-void
.end method
