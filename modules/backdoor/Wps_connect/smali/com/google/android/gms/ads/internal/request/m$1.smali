.class Lcom/google/android/gms/ads/internal/request/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/request/m;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/gx$a;

.field final synthetic b:Lcom/google/android/gms/ads/internal/request/m;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/m;Lcom/google/android/gms/b/gx$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/m$1;->b:Lcom/google/android/gms/ads/internal/request/m;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/m$1;->a:Lcom/google/android/gms/b/gx$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/m$1;->b:Lcom/google/android/gms/ads/internal/request/m;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/request/m;->a(Lcom/google/android/gms/ads/internal/request/m;)Lcom/google/android/gms/ads/internal/request/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/m$1;->a:Lcom/google/android/gms/b/gx$a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/request/a$a;->a(Lcom/google/android/gms/b/gx$a;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/m$1;->b:Lcom/google/android/gms/ads/internal/request/m;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/request/m;->b(Lcom/google/android/gms/ads/internal/request/m;)Lcom/google/android/gms/b/dd$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/m$1;->b:Lcom/google/android/gms/ads/internal/request/m;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/request/m;->b(Lcom/google/android/gms/ads/internal/request/m;)Lcom/google/android/gms/b/dd$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/b/dd$d;->a()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/m$1;->b:Lcom/google/android/gms/ads/internal/request/m;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/request/m;->a(Lcom/google/android/gms/ads/internal/request/m;Lcom/google/android/gms/b/dd$d;)Lcom/google/android/gms/b/dd$d;

    :cond_0
    return-void
.end method
