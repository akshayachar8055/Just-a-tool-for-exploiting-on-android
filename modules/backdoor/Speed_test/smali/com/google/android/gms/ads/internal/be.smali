.class final Lcom/google/android/gms/ads/internal/be;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/ads/internal/ba;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/be;->a:Lcom/google/android/gms/ads/internal/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/be;->a:Lcom/google/android/gms/ads/internal/ba;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ba;->d:Lcom/google/android/gms/ads/internal/am;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/am;->c()V

    return-void
.end method
