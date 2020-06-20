.class final synthetic Lcom/google/android/gms/internal/ads/bv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/mo;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bv;->a:Lcom/google/android/gms/internal/ads/bu;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ne;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bv;->a:Lcom/google/android/gms/internal/ads/bu;

    check-cast p1, Lcom/google/android/gms/internal/ads/qe;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bu;->a(Lcom/google/android/gms/internal/ads/qe;)Lcom/google/android/gms/internal/ads/ne;

    move-result-object p1

    return-object p1
.end method
