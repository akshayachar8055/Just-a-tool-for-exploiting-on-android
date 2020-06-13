.class final Lcom/google/android/gms/ads/internal/overlay/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/graphics/drawable/Drawable;

.field private synthetic b:Lcom/google/android/gms/ads/internal/overlay/am;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/am;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/an;->b:Lcom/google/android/gms/ads/internal/overlay/am;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/an;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/an;->b:Lcom/google/android/gms/ads/internal/overlay/am;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/am;->a:Lcom/google/android/gms/ads/internal/overlay/ag;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/ag;->a(Lcom/google/android/gms/ads/internal/overlay/ag;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/an;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
