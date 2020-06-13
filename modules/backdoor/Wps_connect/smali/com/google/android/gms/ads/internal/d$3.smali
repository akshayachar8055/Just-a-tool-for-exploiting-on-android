.class Lcom/google/android/gms/ads/internal/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/d;->a(Lcom/google/android/gms/b/gx$a;Lcom/google/android/gms/b/az;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/gx$a;

.field final synthetic b:Lcom/google/android/gms/b/az;

.field final synthetic c:Lcom/google/android/gms/ads/internal/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/d;Lcom/google/android/gms/b/gx$a;Lcom/google/android/gms/b/az;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/d$3;->c:Lcom/google/android/gms/ads/internal/d;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/d$3;->a:Lcom/google/android/gms/b/gx$a;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/d$3;->b:Lcom/google/android/gms/b/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d$3;->a:Lcom/google/android/gms/b/gx$a;

    iget-object v0, v0, Lcom/google/android/gms/b/gx$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d$3;->c:Lcom/google/android/gms/ads/internal/d;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->x:Lcom/google/android/gms/b/bd;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/d$3;->a:Lcom/google/android/gms/b/gx$a;

    iget-object v1, v1, Lcom/google/android/gms/b/gx$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->e()Lcom/google/android/gms/b/hj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/d$3;->a:Lcom/google/android/gms/b/gx$a;

    iget-object v1, v1, Lcom/google/android/gms/b/gx$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/hj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/b/ba;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/d$3;->c:Lcom/google/android/gms/ads/internal/d;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/d$3;->a:Lcom/google/android/gms/b/gx$a;

    iget-object v3, v3, Lcom/google/android/gms/b/gx$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/b/ba;-><init>(Lcom/google/android/gms/ads/internal/h;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d$3;->c:Lcom/google/android/gms/ads/internal/d;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/t;

    iput v5, v0, Lcom/google/android/gms/ads/internal/t;->D:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d$3;->c:Lcom/google/android/gms/ads/internal/d;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/gms/ads/internal/d;->d:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d$3;->c:Lcom/google/android/gms/ads/internal/d;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->x:Lcom/google/android/gms/b/bd;

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/bd;->a(Lcom/google/android/gms/b/bc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call the onCustomRenderedAdLoadedListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/b/hf;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d$3;->c:Lcom/google/android/gms/ads/internal/d;

    iput-boolean v5, v0, Lcom/google/android/gms/ads/internal/d;->d:Z

    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/f;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/f;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/d$3;->c:Lcom/google/android/gms/ads/internal/d;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/d$3;->a:Lcom/google/android/gms/b/gx$a;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/ads/internal/d;->a(Lcom/google/android/gms/b/gx$a;Lcom/google/android/gms/ads/internal/f;)Lcom/google/android/gms/b/ii;

    move-result-object v5

    new-instance v1, Lcom/google/android/gms/ads/internal/f$b;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/d$3;->a:Lcom/google/android/gms/b/gx$a;

    invoke-direct {v1, v2, v5}, Lcom/google/android/gms/ads/internal/f$b;-><init>(Lcom/google/android/gms/b/gx$a;Lcom/google/android/gms/b/ii;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/f;->a(Lcom/google/android/gms/ads/internal/f$a;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/d$3$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/d$3$1;-><init>(Lcom/google/android/gms/ads/internal/d$3;Lcom/google/android/gms/ads/internal/f;)V

    invoke-interface {v5, v1}, Lcom/google/android/gms/b/ii;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/d$3$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/d$3$2;-><init>(Lcom/google/android/gms/ads/internal/d$3;Lcom/google/android/gms/ads/internal/f;)V

    invoke-interface {v5, v1}, Lcom/google/android/gms/b/ii;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d$3;->c:Lcom/google/android/gms/ads/internal/d;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/t;

    iput v4, v0, Lcom/google/android/gms/ads/internal/t;->D:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d$3;->c:Lcom/google/android/gms/ads/internal/d;

    iget-object v9, v0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/t;

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/b/fq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/d$3;->c:Lcom/google/android/gms/ads/internal/d;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/d$3;->c:Lcom/google/android/gms/ads/internal/d;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/d$3;->a:Lcom/google/android/gms/b/gx$a;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/d$3;->c:Lcom/google/android/gms/ads/internal/d;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/t;->d:Lcom/google/android/gms/b/k;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/d$3;->c:Lcom/google/android/gms/ads/internal/d;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/d;->j:Lcom/google/android/gms/b/du;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/d$3;->c:Lcom/google/android/gms/ads/internal/d;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/d$3;->b:Lcom/google/android/gms/b/az;

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/b/fq;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/b/gx$a;Lcom/google/android/gms/b/k;Lcom/google/android/gms/b/ii;Lcom/google/android/gms/b/du;Lcom/google/android/gms/b/fq$a;Lcom/google/android/gms/b/az;)Lcom/google/android/gms/b/hl;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/ads/internal/t;->h:Lcom/google/android/gms/b/hl;

    goto :goto_0
.end method
