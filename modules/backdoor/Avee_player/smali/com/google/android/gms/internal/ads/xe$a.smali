.class public final Lcom/google/android/gms/internal/ads/xe$a;
.super Lcom/google/android/gms/internal/ads/abe$a;

# interfaces
.implements Lcom/google/android/gms/internal/ads/acn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/xe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/abe$a<",
        "Lcom/google/android/gms/internal/ads/xe;",
        "Lcom/google/android/gms/internal/ads/xe$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/acn;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/xe;->b()Lcom/google/android/gms/internal/ads/xe;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/abe$a;-><init>(Lcom/google/android/gms/internal/ads/abe;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/xf;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/xe$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/xe$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/abe$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xe$a;->a:Lcom/google/android/gms/internal/ads/abe;

    check-cast v0, Lcom/google/android/gms/internal/ads/xe;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/xe;->a(Lcom/google/android/gms/internal/ads/xe;I)V

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/xe$b;)Lcom/google/android/gms/internal/ads/xe$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/abe$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xe$a;->a:Lcom/google/android/gms/internal/ads/abe;

    check-cast v0, Lcom/google/android/gms/internal/ads/xe;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/xe;->a(Lcom/google/android/gms/internal/ads/xe;Lcom/google/android/gms/internal/ads/xe$b;)V

    return-object p0
.end method
