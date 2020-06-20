.class final Lcom/google/android/gms/internal/ads/fu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ft;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ft;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fu;->a:Lcom/google/android/gms/internal/ads/ft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fu;->a:Lcom/google/android/gms/internal/ads/ft;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ft;->a(Lcom/google/android/gms/internal/ads/ft;I)V

    return-void
.end method
