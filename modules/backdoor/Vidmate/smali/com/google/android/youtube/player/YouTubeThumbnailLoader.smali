.class public interface abstract Lcom/google/android/youtube/player/YouTubeThumbnailLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;,
        Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;
    }
.end annotation


# virtual methods
.method public abstract first()V
.end method

.method public abstract hasNext()Z
.end method

.method public abstract hasPrevious()Z
.end method

.method public abstract next()V
.end method

.method public abstract previous()V
.end method

.method public abstract release()V
.end method

.method public abstract setOnThumbnailLoadedListener(Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;)V
.end method

.method public abstract setPlaylist(Ljava/lang/String;)V
.end method

.method public abstract setPlaylist(Ljava/lang/String;I)V
.end method

.method public abstract setVideo(Ljava/lang/String;)V
.end method
