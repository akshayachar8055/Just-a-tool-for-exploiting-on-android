.class Lcom/google/android/gms/b/dd$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/b/dd;->c()Lcom/google/android/gms/b/dd$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/dd$e;

.field final synthetic b:Lcom/google/android/gms/b/dd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/dd;Lcom/google/android/gms/b/dd$e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/dd$1;->b:Lcom/google/android/gms/b/dd;

    iput-object p2, p0, Lcom/google/android/gms/b/dd$1;->a:Lcom/google/android/gms/b/dd$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/b/dd$1;->b:Lcom/google/android/gms/b/dd;

    iget-object v1, p0, Lcom/google/android/gms/b/dd$1;->b:Lcom/google/android/gms/b/dd;

    invoke-static {v1}, Lcom/google/android/gms/b/dd;->a(Lcom/google/android/gms/b/dd;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/b/dd$1;->b:Lcom/google/android/gms/b/dd;

    invoke-static {v2}, Lcom/google/android/gms/b/dd;->b(Lcom/google/android/gms/b/dd;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/b/dd;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/b/da;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/b/dd$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/b/dd$1$1;-><init>(Lcom/google/android/gms/b/dd$1;Lcom/google/android/gms/b/da;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/da;->a(Lcom/google/android/gms/b/da$a;)V

    const-string v1, "/jsLoaded"

    new-instance v2, Lcom/google/android/gms/b/dd$1$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/b/dd$1$2;-><init>(Lcom/google/android/gms/b/dd$1;Lcom/google/android/gms/b/da;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/b/da;->a(Ljava/lang/String;Lcom/google/android/gms/b/cb;)V

    new-instance v1, Lcom/google/android/gms/b/ht;

    invoke-direct {v1}, Lcom/google/android/gms/b/ht;-><init>()V

    new-instance v2, Lcom/google/android/gms/b/dd$1$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/b/dd$1$3;-><init>(Lcom/google/android/gms/b/dd$1;Lcom/google/android/gms/b/da;Lcom/google/android/gms/b/ht;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/b/ht;->a(Ljava/lang/Object;)V

    const-string v1, "/requestReload"

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/b/da;->a(Ljava/lang/String;Lcom/google/android/gms/b/cb;)V

    iget-object v1, p0, Lcom/google/android/gms/b/dd$1;->b:Lcom/google/android/gms/b/dd;

    invoke-static {v1}, Lcom/google/android/gms/b/dd;->f(Lcom/google/android/gms/b/dd;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".js"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/b/dd$1;->b:Lcom/google/android/gms/b/dd;

    invoke-static {v1}, Lcom/google/android/gms/b/dd;->f(Lcom/google/android/gms/b/dd;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/da;->a(Ljava/lang/String;)V

    :goto_0
    sget-object v1, Lcom/google/android/gms/b/hj;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/b/dd$1$4;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/b/dd$1$4;-><init>(Lcom/google/android/gms/b/dd$1;Lcom/google/android/gms/b/da;)V

    sget v0, Lcom/google/android/gms/b/dd$a;->a:I

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/b/dd$1;->b:Lcom/google/android/gms/b/dd;

    invoke-static {v1}, Lcom/google/android/gms/b/dd;->f(Lcom/google/android/gms/b/dd;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<html>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/b/dd$1;->b:Lcom/google/android/gms/b/dd;

    invoke-static {v1}, Lcom/google/android/gms/b/dd;->f(Lcom/google/android/gms/b/dd;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/da;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/b/dd$1;->b:Lcom/google/android/gms/b/dd;

    invoke-static {v1}, Lcom/google/android/gms/b/dd;->f(Lcom/google/android/gms/b/dd;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/da;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
