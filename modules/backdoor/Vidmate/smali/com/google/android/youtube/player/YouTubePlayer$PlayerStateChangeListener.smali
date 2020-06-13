.class public interface abstract Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/player/YouTubePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayerStateChangeListener"
.end annotation


# virtual methods
.method public abstract onAdStarted()V
.end method

.method public abstract onError(Lcom/google/android/youtube/player/YouTubePlayer$ErrorReason;)V
.end method

.method public abstract onLoaded(Ljava/lang/String;)V
.end method

.method public abstract onLoading()V
.end method

.method public abstract onVideoEnded()V
.end method

.method public abstract onVideoStarted()V
.end method
