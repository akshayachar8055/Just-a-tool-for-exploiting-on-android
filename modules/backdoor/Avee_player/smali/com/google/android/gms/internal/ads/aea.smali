.class public final Lcom/google/android/gms/internal/ads/aea;
.super Ljava/util/AbstractList;

# interfaces
.implements Lcom/google/android/gms/internal/ads/abu;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/android/gms/internal/ads/abu;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/abu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/abu;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aea;->a:Lcom/google/android/gms/internal/ads/abu;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/aea;)Lcom/google/android/gms/internal/ads/abu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/aea;->a:Lcom/google/android/gms/internal/ads/abu;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zw;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aea;->a:Lcom/google/android/gms/internal/ads/abu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/abu;->b(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aea;->a:Lcom/google/android/gms/internal/ads/abu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/abu;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/abu;
    .locals 0

    return-object p0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aea;->a:Lcom/google/android/gms/internal/ads/abu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/abu;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/aec;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/aec;-><init>(Lcom/google/android/gms/internal/ads/aea;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/aeb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/aeb;-><init>(Lcom/google/android/gms/internal/ads/aea;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aea;->a:Lcom/google/android/gms/internal/ads/abu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/abu;->size()I

    move-result v0

    return v0
.end method
