.class Lcom/google/android/gms/ads/internal/overlay/d$d;
.super Lcom/google/android/gms/b/he;


# annotations
.annotation runtime Lcom/google/android/gms/b/gb;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/overlay/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/overlay/d;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/overlay/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/d$d;->a:Lcom/google/android/gms/ads/internal/overlay/d;

    invoke-direct {p0}, Lcom/google/android/gms/b/he;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/overlay/d;Lcom/google/android/gms/ads/internal/overlay/d$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/d$d;-><init>(Lcom/google/android/gms/ads/internal/overlay/d;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->e()Lcom/google/android/gms/b/hj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/d$d;->a:Lcom/google/android/gms/ads/internal/overlay/d;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/overlay/d;->a(Lcom/google/android/gms/ads/internal/overlay/d;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/d$d;->a:Lcom/google/android/gms/ads/internal/overlay/d;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->q:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/b/hj;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->g()Lcom/google/android/gms/b/hk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/d$d;->a:Lcom/google/android/gms/ads/internal/overlay/d;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/overlay/d;->a(Lcom/google/android/gms/ads/internal/overlay/d;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/d$d;->a:Lcom/google/android/gms/ads/internal/overlay/d;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->q:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->e:Z

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/d$d;->a:Lcom/google/android/gms/ads/internal/overlay/d;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/d;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->q:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget v4, v4, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->f:F

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/b/hk;->a(Landroid/content/Context;Landroid/graphics/Bitmap;ZF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/b/hj;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/d$d$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/overlay/d$d$1;-><init>(Lcom/google/android/gms/ads/internal/overlay/d$d;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
