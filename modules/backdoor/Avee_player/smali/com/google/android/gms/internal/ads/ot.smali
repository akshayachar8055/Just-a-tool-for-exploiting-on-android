.class final Lcom/google/android/gms/internal/ads/ot;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Lcom/google/android/gms/internal/ads/op;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/op;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ot;->b:Lcom/google/android/gms/internal/ads/op;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/ot;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ot;->b:Lcom/google/android/gms/internal/ads/op;

    const-string v1, "windowVisibilityChanged"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "isVisible"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/ot;->a:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/op;->a(Lcom/google/android/gms/internal/ads/op;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
