.class final synthetic Lcom/google/android/gms/internal/ads/mz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/np;

.field private final b:Lcom/google/android/gms/internal/ads/ne;

.field private final c:Ljava/lang/Class;

.field private final d:Lcom/google/android/gms/internal/ads/mo;

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/np;Lcom/google/android/gms/internal/ads/ne;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/mo;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mz;->a:Lcom/google/android/gms/internal/ads/np;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mz;->b:Lcom/google/android/gms/internal/ads/ne;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/mz;->c:Ljava/lang/Class;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/mz;->d:Lcom/google/android/gms/internal/ads/mo;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/mz;->e:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mz;->a:Lcom/google/android/gms/internal/ads/np;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mz;->b:Lcom/google/android/gms/internal/ads/ne;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/mz;->c:Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mz;->d:Lcom/google/android/gms/internal/ads/mo;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/mz;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/mt;->a(Lcom/google/android/gms/internal/ads/np;Lcom/google/android/gms/internal/ads/ne;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/mo;Ljava/util/concurrent/Executor;)V

    return-void
.end method
