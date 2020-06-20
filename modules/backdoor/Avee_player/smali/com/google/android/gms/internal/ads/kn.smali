.class final synthetic Lcom/google/android/gms/internal/ads/kn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/kh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/kh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kn;->a:Lcom/google/android/gms/internal/ads/kh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kn;->a:Lcom/google/android/gms/internal/ads/kh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/kh;->b()V

    return-void
.end method
