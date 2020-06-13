.class public abstract Lcom/google/android/youtube/player/internal/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/player/YouTubeThumbnailLoader;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/youtube/player/YouTubeThumbnailView;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/player/YouTubeThumbnailView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/google/android/youtube/player/internal/ab;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/youtube/player/internal/a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private i()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This YouTubeThumbnailLoader has been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/player/YouTubeThumbnailView;

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/player/YouTubeThumbnailView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/a;->b:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/a;->b:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;

    invoke-interface {v1, v0, p2}, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;->onThumbnailLoaded(Lcom/google/android/youtube/player/YouTubeThumbnailView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;I)V
.end method

.method protected a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/youtube/player/internal/a;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "The finalize() method for a YouTubeThumbnailLoader has work to do. You should have called release()."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/youtube/player/internal/y;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->release()V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/player/YouTubeThumbnailView;

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/a;->b:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;->valueOf(Ljava/lang/String;)Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/youtube/player/internal/a;->b:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;

    invoke-interface {v2, v0, v1}, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;->onThumbnailError(Lcom/google/android/youtube/player/YouTubeThumbnailView;Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;)V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    sget-object v1, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;->UNKNOWN:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v1, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;->UNKNOWN:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;

    goto :goto_0
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()Z
.end method

.method public final first()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/youtube/player/internal/a;->i()V

    iget-boolean v0, p0, Lcom/google/android/youtube/player/internal/a;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setPlaylist first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->e()V

    return-void
.end method

.method public abstract g()Z
.end method

.method public abstract h()V
.end method

.method public final hasNext()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/youtube/player/internal/a;->i()V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->f()Z

    move-result v0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/youtube/player/internal/a;->i()V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->g()Z

    move-result v0

    return v0
.end method

.method public final next()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/youtube/player/internal/a;->i()V

    iget-boolean v0, p0, Lcom/google/android/youtube/player/internal/a;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setPlaylist first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->f()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Called next at end of playlist"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->c()V

    return-void
.end method

.method public final previous()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/youtube/player/internal/a;->i()V

    iget-boolean v0, p0, Lcom/google/android/youtube/player/internal/a;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setPlaylist first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Called previous at start of playlist"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->d()V

    return-void
.end method

.method public final release()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/player/internal/a;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/player/internal/a;->b:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->h()V

    :cond_0
    return-void
.end method

.method public final setOnThumbnailLoadedListener(Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/youtube/player/internal/a;->i()V

    iput-object p1, p0, Lcom/google/android/youtube/player/internal/a;->b:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;

    return-void
.end method

.method public final setPlaylist(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/player/internal/a;->setPlaylist(Ljava/lang/String;I)V

    return-void
.end method

.method public final setPlaylist(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/youtube/player/internal/a;->i()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/player/internal/a;->c:Z

    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/player/internal/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final setVideo(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/youtube/player/internal/a;->i()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/player/internal/a;->c:Z

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/player/internal/a;->a(Ljava/lang/String;)V

    return-void
.end method
