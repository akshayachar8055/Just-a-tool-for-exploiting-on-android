.class final synthetic Lcom/google/android/gms/internal/ads/mv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/np;

.field private final b:Lcom/google/android/gms/internal/ads/mp;

.field private final c:Lcom/google/android/gms/internal/ads/ne;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/np;Lcom/google/android/gms/internal/ads/mp;Lcom/google/android/gms/internal/ads/ne;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mv;->a:Lcom/google/android/gms/internal/ads/np;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mv;->b:Lcom/google/android/gms/internal/ads/mp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/mv;->c:Lcom/google/android/gms/internal/ads/ne;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mv;->a:Lcom/google/android/gms/internal/ads/np;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mv;->b:Lcom/google/android/gms/internal/ads/mp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/mv;->c:Lcom/google/android/gms/internal/ads/ne;

    :try_start_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/ne;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/mp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/np;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/np;->a(Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/np;->a(Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/np;->a(Ljava/lang/Throwable;)V

    return-void

    :catch_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/np;->cancel(Z)Z

    return-void
.end method
