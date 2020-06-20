.class final Lcom/google/android/gms/internal/ads/dg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/nu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/nu<",
        "Lcom/google/android/gms/internal/ads/zzaef;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/dq;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/de;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/de;Lcom/google/android/gms/internal/ads/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dg;->b:Lcom/google/android/gms/internal/ads/de;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dg;->a:Lcom/google/android/gms/internal/ads/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaef;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dg;->b:Lcom/google/android/gms/internal/ads/de;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dg;->a:Lcom/google/android/gms/internal/ads/dq;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/de;->a(Lcom/google/android/gms/internal/ads/dq;Lcom/google/android/gms/internal/ads/zzaef;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dg;->b:Lcom/google/android/gms/internal/ads/de;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/de;->a()V

    :cond_0
    return-void
.end method
