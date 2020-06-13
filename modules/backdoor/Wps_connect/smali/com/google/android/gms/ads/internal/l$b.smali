.class Lcom/google/android/gms/ads/internal/l$b;
.super Lcom/google/android/gms/b/he;


# annotations
.annotation runtime Lcom/google/android/gms/b/gb;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/l;

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/l;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l$b;->a:Lcom/google/android/gms/ads/internal/l;

    invoke-direct {p0}, Lcom/google/android/gms/b/he;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/l$b;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/l$b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l$b;->a:Lcom/google/android/gms/ads/internal/l;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/t;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/t;->F:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->e()Lcom/google/android/gms/b/hj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/l$b;->a:Lcom/google/android/gms/ads/internal/l;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/l$b;->b:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/l$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/b/hj;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    move v3, v0

    :goto_0
    new-instance v0, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/l$b;->a:Lcom/google/android/gms/ads/internal/l;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/t;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/t;->F:Z

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/l$b;->a:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/l;->C()Z

    move-result v2

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/l$b;->c:Ljava/lang/String;

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/l$b;->a:Lcom/google/android/gms/ads/internal/l;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/l;->a(Lcom/google/android/gms/ads/internal/l;)Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/l$b;->a:Lcom/google/android/gms/ads/internal/l;

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/l;->b(Lcom/google/android/gms/ads/internal/l;)F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;-><init>(ZZLjava/lang/String;ZF)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/l$b;->a:Lcom/google/android/gms/ads/internal/l;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/b/gx;

    iget-object v1, v1, Lcom/google/android/gms/b/gx;->b:Lcom/google/android/gms/b/ii;

    invoke-interface {v1}, Lcom/google/android/gms/b/ii;->q()I

    move-result v6

    const/4 v1, -0x1

    if-ne v6, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/l$b;->a:Lcom/google/android/gms/ads/internal/l;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/b/gx;

    iget v6, v1, Lcom/google/android/gms/b/gx;->g:I

    :cond_0
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/l$b;->a:Lcom/google/android/gms/ads/internal/l;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/l$b;->a:Lcom/google/android/gms/ads/internal/l;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/l$b;->a:Lcom/google/android/gms/ads/internal/l;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/l$b;->a:Lcom/google/android/gms/ads/internal/l;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/b/gx;

    iget-object v5, v5, Lcom/google/android/gms/b/gx;->b:Lcom/google/android/gms/b/ii;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/l$b;->a:Lcom/google/android/gms/ads/internal/l;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/t;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/l$b;->a:Lcom/google/android/gms/ads/internal/l;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/b/gx;

    iget-object v8, v8, Lcom/google/android/gms/b/gx;->A:Ljava/lang/String;

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/g;Lcom/google/android/gms/ads/internal/overlay/p;Lcom/google/android/gms/b/ii;ILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;)V

    sget-object v0, Lcom/google/android/gms/b/hj;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/l$b$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/ads/internal/l$b$1;-><init>(Lcom/google/android/gms/ads/internal/l$b;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    move v3, v0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public b()V
    .locals 0

    return-void
.end method
