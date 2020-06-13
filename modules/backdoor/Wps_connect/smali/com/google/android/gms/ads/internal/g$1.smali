.class Lcom/google/android/gms/ads/internal/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/ij$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/g;->e(Lcom/google/android/gms/b/gx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/gx;

.field final synthetic b:Lcom/google/android/gms/ads/internal/g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/g;Lcom/google/android/gms/b/gx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/g$1;->b:Lcom/google/android/gms/ads/internal/g;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/g$1;->a:Lcom/google/android/gms/b/gx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g$1;->b:Lcom/google/android/gms/ads/internal/g;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/g;->h:Lcom/google/android/gms/b/t;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/g$1;->b:Lcom/google/android/gms/ads/internal/g;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/g$1;->a:Lcom/google/android/gms/b/gx;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/b/t;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/b/gx;)Lcom/google/android/gms/b/q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/g$1;->a:Lcom/google/android/gms/b/gx;

    iget-object v1, v1, Lcom/google/android/gms/b/gx;->b:Lcom/google/android/gms/b/ii;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/q;->a(Lcom/google/android/gms/b/r;)V

    return-void
.end method
