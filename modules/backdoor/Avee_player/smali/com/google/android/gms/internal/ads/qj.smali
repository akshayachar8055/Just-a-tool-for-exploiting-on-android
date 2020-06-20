.class final Lcom/google/android/gms/internal/ads/qj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/hu;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/qf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qf;Lcom/google/android/gms/internal/ads/hu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qj;->b:Lcom/google/android/gms/internal/ads/qf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qj;->a:Lcom/google/android/gms/internal/ads/hu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qj;->b:Lcom/google/android/gms/internal/ads/qf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qj;->a:Lcom/google/android/gms/internal/ads/hu;

    const/16 v2, 0xa

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/qf;->a(Lcom/google/android/gms/internal/ads/qf;Landroid/view/View;Lcom/google/android/gms/internal/ads/hu;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
