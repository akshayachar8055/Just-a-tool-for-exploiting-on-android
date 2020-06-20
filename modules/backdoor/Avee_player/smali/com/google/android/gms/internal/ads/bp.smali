.class final Lcom/google/android/gms/internal/ads/bp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field private final synthetic a:Ljava/lang/ref/WeakReference;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/bi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bi;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bp;->b:Lcom/google/android/gms/internal/ads/bi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bp;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bp;->b:Lcom/google/android/gms/internal/ads/bi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bp;->a:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bi;->a(Lcom/google/android/gms/internal/ads/bi;Ljava/lang/ref/WeakReference;Z)V

    return-void
.end method
