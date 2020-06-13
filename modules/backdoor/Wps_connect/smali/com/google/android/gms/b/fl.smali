.class public final Lcom/google/android/gms/b/fl;
.super Lcom/google/android/gms/b/fg$a;


# annotations
.annotation runtime Lcom/google/android/gms/b/gb;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/purchase/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/purchase/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/b/fg$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/b/fl;->a:Lcom/google/android/gms/ads/purchase/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/ff;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/fl;->a:Lcom/google/android/gms/ads/purchase/d;

    new-instance v1, Lcom/google/android/gms/b/fj;

    invoke-direct {v1, p1}, Lcom/google/android/gms/b/fj;-><init>(Lcom/google/android/gms/b/ff;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/purchase/d;->a(Lcom/google/android/gms/ads/purchase/c;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/fl;->a:Lcom/google/android/gms/ads/purchase/d;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/purchase/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
