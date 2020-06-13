.class public final Lcom/google/android/youtube/player/internal/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayer;


# instance fields
.field private a:Lcom/google/android/youtube/player/internal/b;

.field private b:Lcom/google/android/youtube/player/internal/d;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/player/internal/b;Lcom/google/android/youtube/player/internal/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "connectionClient cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/player/internal/ab;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/player/internal/b;

    iput-object v0, p0, Lcom/google/android/youtube/player/internal/s;->a:Lcom/google/android/youtube/player/internal/b;

    const-string v0, "embeddedPlayer cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/player/internal/ab;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/player/internal/d;

    iput-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/d;->s()Lcom/google/android/youtube/player/internal/u;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/player/internal/v;->a(Lcom/google/android/youtube/player/internal/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/player/internal/d;->a(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/player/internal/d;->a(Z)V

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->a:Lcom/google/android/youtube/player/internal/b;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/player/internal/b;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->a:Lcom/google/android/youtube/player/internal/b;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/b;->d()V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(ILandroid/view/KeyEvent;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/player/internal/d;->a(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Landroid/os/Bundle;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/player/internal/d;->a(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final addFullscreenControlFlag(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/player/internal/d;->d(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/d;->m()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final b(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/player/internal/d;->e(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final b(ILandroid/view/KeyEvent;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/player/internal/d;->b(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final c()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/d;->n()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final cuePlaylist(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/youtube/player/internal/s;->cuePlaylist(Ljava/lang/String;II)V

    return-void
.end method

.method public final cuePlaylist(Ljava/lang/String;II)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/youtube/player/internal/d;->a(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final cueVideo(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/player/internal/s;->cueVideo(Ljava/lang/String;I)V

    return-void
.end method

.method public final cueVideo(Ljava/lang/String;I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/player/internal/d;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final cueVideos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/youtube/player/internal/s;->cueVideos(Ljava/util/List;II)V

    return-void
.end method

.method public final cueVideos(Ljava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/youtube/player/internal/d;->a(Ljava/util/List;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final d()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/d;->o()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final e()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/d;->p()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final f()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/d;->q()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final g()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/d;->l()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getCurrentTimeMillis()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/d;->h()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getDurationMillis()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/d;->i()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getFullscreenControlFlags()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/d;->j()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final h()Landroid/os/Bundle;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/d;->r()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final hasNext()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/d;->d()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final hasPrevious()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/d;->e()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isPlaying()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/d;->c()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final loadPlaylist(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/youtube/player/internal/s;->loadPlaylist(Ljava/lang/String;II)V

    return-void
.end method

.method public final loadPlaylist(Ljava/lang/String;II)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/youtube/player/internal/d;->b(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final loadVideo(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/player/internal/s;->loadVideo(Ljava/lang/String;I)V

    return-void
.end method

.method public final loadVideo(Ljava/lang/String;I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/player/internal/d;->b(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final loadVideos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/youtube/player/internal/s;->loadVideos(Ljava/util/List;II)V

    return-void
.end method

.method public final loadVideos(Ljava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/youtube/player/internal/d;->b(Ljava/util/List;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final next()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/d;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final pause()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/d;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final play()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/d;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final previous()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/d;->g()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final release()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/player/internal/s;->a(Z)V

    return-void
.end method

.method public final seekRelativeMillis(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/player/internal/d;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final seekToMillis(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/player/internal/d;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setFullscreen(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/player/internal/d;->b(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setFullscreenControlFlags(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/player/internal/d;->c(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setManageAudioFocus(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/player/internal/d;->d(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnFullscreenListener(Lcom/google/android/youtube/player/YouTubePlayer$OnFullscreenListener;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    new-instance v1, Lcom/google/android/youtube/player/internal/s$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/player/internal/s$1;-><init>(Lcom/google/android/youtube/player/internal/s;Lcom/google/android/youtube/player/YouTubePlayer$OnFullscreenListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/youtube/player/internal/d;->a(Lcom/google/android/youtube/player/internal/e;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setPlaybackEventListener(Lcom/google/android/youtube/player/YouTubePlayer$PlaybackEventListener;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    new-instance v1, Lcom/google/android/youtube/player/internal/s$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/player/internal/s$4;-><init>(Lcom/google/android/youtube/player/internal/s;Lcom/google/android/youtube/player/YouTubePlayer$PlaybackEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/youtube/player/internal/d;->a(Lcom/google/android/youtube/player/internal/f;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setPlayerStateChangeListener(Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    new-instance v1, Lcom/google/android/youtube/player/internal/s$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/player/internal/s$3;-><init>(Lcom/google/android/youtube/player/internal/s;Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/youtube/player/internal/d;->a(Lcom/google/android/youtube/player/internal/g;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setPlayerStyle(Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-virtual {p1}, Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/player/internal/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setPlaylistEventListener(Lcom/google/android/youtube/player/YouTubePlayer$PlaylistEventListener;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    new-instance v1, Lcom/google/android/youtube/player/internal/s$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/player/internal/s$2;-><init>(Lcom/google/android/youtube/player/internal/s;Lcom/google/android/youtube/player/YouTubePlayer$PlaylistEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/youtube/player/internal/d;->a(Lcom/google/android/youtube/player/internal/h;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setShowFullscreenButton(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/player/internal/d;->c(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
