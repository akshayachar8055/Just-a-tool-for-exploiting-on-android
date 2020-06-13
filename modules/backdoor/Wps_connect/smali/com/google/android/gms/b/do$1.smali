.class Lcom/google/android/gms/b/do$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/b/do;->a(JJ)Lcom/google/android/gms/b/dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/dn;

.field final synthetic b:Lcom/google/android/gms/b/do;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/do;Lcom/google/android/gms/b/dn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/do$1;->b:Lcom/google/android/gms/b/do;

    iput-object p2, p0, Lcom/google/android/gms/b/do$1;->a:Lcom/google/android/gms/b/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/b/do$1;->b:Lcom/google/android/gms/b/do;

    invoke-static {v0}, Lcom/google/android/gms/b/do;->a(Lcom/google/android/gms/b/do;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/do$1;->b:Lcom/google/android/gms/b/do;

    invoke-static {v0}, Lcom/google/android/gms/b/do;->b(Lcom/google/android/gms/b/do;)I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/do$1;->b:Lcom/google/android/gms/b/do;

    iget-object v2, p0, Lcom/google/android/gms/b/do$1;->b:Lcom/google/android/gms/b/do;

    invoke-static {v2}, Lcom/google/android/gms/b/do;->c(Lcom/google/android/gms/b/do;)Lcom/google/android/gms/b/dv;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/b/do;->a(Lcom/google/android/gms/b/do;Lcom/google/android/gms/b/dv;)Lcom/google/android/gms/b/dv;

    iget-object v0, p0, Lcom/google/android/gms/b/do$1;->b:Lcom/google/android/gms/b/do;

    invoke-static {v0}, Lcom/google/android/gms/b/do;->d(Lcom/google/android/gms/b/do;)Lcom/google/android/gms/b/dv;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/do$1;->b:Lcom/google/android/gms/b/do;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/b/do;->a(I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/b/do$1;->b:Lcom/google/android/gms/b/do;

    invoke-static {v0}, Lcom/google/android/gms/b/do;->e(Lcom/google/android/gms/b/do;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/b/do$1;->b:Lcom/google/android/gms/b/do;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/b/do;->a(Lcom/google/android/gms/b/do;I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring adapter "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/b/do$1;->b:Lcom/google/android/gms/b/do;

    invoke-static {v2}, Lcom/google/android/gms/b/do;->f(Lcom/google/android/gms/b/do;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " as delayed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " impression is not supported"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/b/hf;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/b/do$1;->b:Lcom/google/android/gms/b/do;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/b/do;->a(I)V

    monitor-exit v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/b/do$1;->a:Lcom/google/android/gms/b/dn;

    iget-object v2, p0, Lcom/google/android/gms/b/do$1;->b:Lcom/google/android/gms/b/do;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/b/dn;->a(Lcom/google/android/gms/b/dp$a;)V

    iget-object v0, p0, Lcom/google/android/gms/b/do$1;->b:Lcom/google/android/gms/b/do;

    iget-object v2, p0, Lcom/google/android/gms/b/do$1;->a:Lcom/google/android/gms/b/dn;

    invoke-static {v0, v2}, Lcom/google/android/gms/b/do;->a(Lcom/google/android/gms/b/do;Lcom/google/android/gms/b/dn;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
