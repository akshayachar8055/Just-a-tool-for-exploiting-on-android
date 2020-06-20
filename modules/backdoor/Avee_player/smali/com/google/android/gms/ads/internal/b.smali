.class final Lcom/google/android/gms/ads/internal/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/ads/internal/zzy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/b;->a:Lcom/google/android/gms/ads/internal/zzy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->a:Lcom/google/android/gms/ads/internal/zzy;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->a:Lcom/google/android/gms/ads/internal/zzy;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzy;->e:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/ij;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzy;->c(Lcom/google/android/gms/internal/ads/ij;)V

    return-void
.end method
