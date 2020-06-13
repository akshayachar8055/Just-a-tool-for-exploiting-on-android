.class Lcom/google/android/gms/ads/internal/request/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/ib$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/request/d;->c()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/b/ib$c",
        "<",
        "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/request/j;

.field final synthetic b:Lcom/google/android/gms/ads/internal/request/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/d;Lcom/google/android/gms/ads/internal/request/j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/d$1;->b:Lcom/google/android/gms/ads/internal/request/d;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/d$1;->a:Lcom/google/android/gms/ads/internal/request/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/d$1;->b:Lcom/google/android/gms/ads/internal/request/d;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/d$1;->a:Lcom/google/android/gms/ads/internal/request/j;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/internal/request/d;->a(Lcom/google/android/gms/ads/internal/request/j;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/d$1;->b:Lcom/google/android/gms/ads/internal/request/d;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/d;->a()V

    :cond_0
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/request/d$1;->a(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    return-void
.end method
