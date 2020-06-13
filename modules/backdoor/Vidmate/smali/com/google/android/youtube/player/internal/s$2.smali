.class final Lcom/google/android/youtube/player/internal/s$2;
.super Lcom/google/android/youtube/player/internal/h$a;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/player/YouTubePlayer$PlaylistEventListener;

.field final synthetic b:Lcom/google/android/youtube/player/internal/s;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/player/internal/s;Lcom/google/android/youtube/player/YouTubePlayer$PlaylistEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/youtube/player/internal/s$2;->b:Lcom/google/android/youtube/player/internal/s;

    iput-object p2, p0, Lcom/google/android/youtube/player/internal/s$2;->a:Lcom/google/android/youtube/player/YouTubePlayer$PlaylistEventListener;

    invoke-direct {p0}, Lcom/google/android/youtube/player/internal/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s$2;->a:Lcom/google/android/youtube/player/YouTubePlayer$PlaylistEventListener;

    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer$PlaylistEventListener;->onPrevious()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s$2;->a:Lcom/google/android/youtube/player/YouTubePlayer$PlaylistEventListener;

    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer$PlaylistEventListener;->onNext()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s$2;->a:Lcom/google/android/youtube/player/YouTubePlayer$PlaylistEventListener;

    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer$PlaylistEventListener;->onPlaylistEnded()V

    return-void
.end method
