.class final Lcom/google/android/gms/ads/internal/overlay/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/ads/internal/overlay/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Lcom/google/android/gms/ads/internal/overlay/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Lcom/google/android/gms/ads/internal/overlay/b;

    const-string v1, "surfaceDestroyed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/b;->a(Lcom/google/android/gms/ads/internal/overlay/b;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
