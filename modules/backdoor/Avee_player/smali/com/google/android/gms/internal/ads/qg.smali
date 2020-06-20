.class final synthetic Lcom/google/android/gms/internal/ads/qg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/qf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qg;->a:Lcom/google/android/gms/internal/ads/qf;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qg;->a:Lcom/google/android/gms/internal/ads/qf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qf;->o()V

    return-void
.end method
