.class final Lcom/google/android/gms/internal/ads/ja;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/iz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/iz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ja;->a:Lcom/google/android/gms/internal/ads/iz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ja;->a:Lcom/google/android/gms/internal/ads/iz;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/iz;->a(Lcom/google/android/gms/internal/ads/iz;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ja;->a:Lcom/google/android/gms/internal/ads/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iz;->a()V

    return-void
.end method
