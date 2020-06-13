.class Lcom/google/android/gms/b/ij$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/b/ij;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/ij;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/ij;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/ij$1;->a:Lcom/google/android/gms/b/ij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/ij$1;->a:Lcom/google/android/gms/b/ij;

    iget-object v0, v0, Lcom/google/android/gms/b/ij;->a:Lcom/google/android/gms/b/ii;

    invoke-interface {v0}, Lcom/google/android/gms/b/ii;->y()V

    iget-object v0, p0, Lcom/google/android/gms/b/ij$1;->a:Lcom/google/android/gms/b/ij;

    iget-object v0, v0, Lcom/google/android/gms/b/ij;->a:Lcom/google/android/gms/b/ii;

    invoke-interface {v0}, Lcom/google/android/gms/b/ii;->i()Lcom/google/android/gms/ads/internal/overlay/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/d;->m()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/ij$1;->a:Lcom/google/android/gms/b/ij;

    invoke-static {v0}, Lcom/google/android/gms/b/ij;->d(Lcom/google/android/gms/b/ij;)Lcom/google/android/gms/b/ij$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/ij$1;->a:Lcom/google/android/gms/b/ij;

    invoke-static {v0}, Lcom/google/android/gms/b/ij;->d(Lcom/google/android/gms/b/ij;)Lcom/google/android/gms/b/ij$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/b/ij$b;->a()V

    iget-object v0, p0, Lcom/google/android/gms/b/ij$1;->a:Lcom/google/android/gms/b/ij;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/b/ij;->a(Lcom/google/android/gms/b/ij;Lcom/google/android/gms/b/ij$b;)Lcom/google/android/gms/b/ij$b;

    :cond_1
    return-void
.end method
