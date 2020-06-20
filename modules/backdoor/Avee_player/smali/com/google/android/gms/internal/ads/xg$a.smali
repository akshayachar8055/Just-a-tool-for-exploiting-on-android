.class public final Lcom/google/android/gms/internal/ads/xg$a;
.super Lcom/google/android/gms/internal/ads/abe$a;

# interfaces
.implements Lcom/google/android/gms/internal/ads/acn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/xg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/abe$a<",
        "Lcom/google/android/gms/internal/ads/xg;",
        "Lcom/google/android/gms/internal/ads/xg$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/acn;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/xg;->d()Lcom/google/android/gms/internal/ads/xg;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/abe$a;-><init>(Lcom/google/android/gms/internal/ads/abe;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/xh;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/xg$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/xg$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/abe$a;->b()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/xg$a;->a:Lcom/google/android/gms/internal/ads/abe;

    check-cast p1, Lcom/google/android/gms/internal/ads/xg;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/xg;->a(Lcom/google/android/gms/internal/ads/xg;I)V

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/xi;)Lcom/google/android/gms/internal/ads/xg$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/abe$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xg$a;->a:Lcom/google/android/gms/internal/ads/abe;

    check-cast v0, Lcom/google/android/gms/internal/ads/xg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/xg;->a(Lcom/google/android/gms/internal/ads/xg;Lcom/google/android/gms/internal/ads/xi;)V

    return-object p0
.end method
