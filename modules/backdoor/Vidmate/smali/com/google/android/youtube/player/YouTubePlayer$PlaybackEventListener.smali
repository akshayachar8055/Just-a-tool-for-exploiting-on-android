.class public interface abstract Lcom/google/android/youtube/player/YouTubePlayer$PlaybackEventListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/player/YouTubePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlaybackEventListener"
.end annotation


# virtual methods
.method public abstract onBuffering(Z)V
.end method

.method public abstract onPaused()V
.end method

.method public abstract onPlaying()V
.end method

.method public abstract onSeekTo(I)V
.end method

.method public abstract onStopped()V
.end method
