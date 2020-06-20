.class final synthetic Lcom/google/android/gms/internal/ads/oc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ob;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ob;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oc;->a:Lcom/google/android/gms/internal/ads/ob;

    iput p2, p0, Lcom/google/android/gms/internal/ads/oc;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oc;->a:Lcom/google/android/gms/internal/ads/ob;

    iget v1, p0, Lcom/google/android/gms/internal/ads/oc;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ob;->b(I)V

    return-void
.end method
