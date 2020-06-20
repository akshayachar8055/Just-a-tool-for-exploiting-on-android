.class final synthetic Lcom/google/android/gms/internal/ads/ip;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/io;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/io;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ip;->a:Lcom/google/android/gms/internal/ads/io;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ip;->a:Lcom/google/android/gms/internal/ads/io;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/io;->o()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
