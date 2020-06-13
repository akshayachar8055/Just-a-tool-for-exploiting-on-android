.class Lcom/google/android/gms/ads/internal/d$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/d$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/f;

.field final synthetic b:Lcom/google/android/gms/ads/internal/d$3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/d$3;Lcom/google/android/gms/ads/internal/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/d$3$1;->b:Lcom/google/android/gms/ads/internal/d$3;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/d$3$1;->a:Lcom/google/android/gms/ads/internal/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d$3$1;->a:Lcom/google/android/gms/ads/internal/f;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/f;->a()V

    const/4 v0, 0x0

    return v0
.end method
