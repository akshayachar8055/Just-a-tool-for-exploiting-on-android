.class Lcom/google/android/gms/b/ei$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/b/ei;->a(Lcom/google/ads/mediation/f;Lcom/google/ads/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/a$a;

.field final synthetic b:Lcom/google/android/gms/b/ei;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/ei;Lcom/google/ads/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/ei$1;->b:Lcom/google/android/gms/b/ei;

    iput-object p2, p0, Lcom/google/android/gms/b/ei$1;->a:Lcom/google/ads/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/ei$1;->b:Lcom/google/android/gms/b/ei;

    invoke-static {v0}, Lcom/google/android/gms/b/ei;->a(Lcom/google/android/gms/b/ei;)Lcom/google/android/gms/b/dw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/ei$1;->a:Lcom/google/ads/a$a;

    invoke-static {v1}, Lcom/google/android/gms/b/ej;->a(Lcom/google/ads/a$a;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/dw;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
