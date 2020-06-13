.class Lcom/google/android/gms/ads/internal/l$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/l$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field final synthetic b:Lcom/google/android/gms/ads/internal/l$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/l$b;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l$b$1;->b:Lcom/google/android/gms/ads/internal/l$b;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/l$b$1;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->c()Lcom/google/android/gms/ads/internal/overlay/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/l$b$1;->b:Lcom/google/android/gms/ads/internal/l$b;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/l$b;->a:Lcom/google/android/gms/ads/internal/l;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/l$b$1;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/e;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method
