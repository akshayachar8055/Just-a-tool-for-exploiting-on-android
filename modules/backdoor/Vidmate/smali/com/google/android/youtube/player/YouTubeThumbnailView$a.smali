.class final Lcom/google/android/youtube/player/YouTubeThumbnailView$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/player/internal/t$a;
.implements Lcom/google/android/youtube/player/internal/t$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/player/YouTubeThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/google/android/youtube/player/YouTubeThumbnailView;

.field private b:Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/player/YouTubeThumbnailView;Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "thumbnailView cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/player/internal/ab;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/player/YouTubeThumbnailView;

    iput-object v0, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$a;->a:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    const-string v0, "onInitializedlistener cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/player/internal/ab;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;

    iput-object v0, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$a;->b:Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;

    return-void
.end method

.method private c()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$a;->a:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$a;->a:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubeThumbnailView;->c(Lcom/google/android/youtube/player/YouTubeThumbnailView;)Lcom/google/android/youtube/player/internal/b;

    iput-object v1, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$a;->a:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    iput-object v1, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$a;->b:Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$a;->a:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$a;->a:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubeThumbnailView;->a(Lcom/google/android/youtube/player/YouTubeThumbnailView;)Lcom/google/android/youtube/player/internal/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$a;->a:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    invoke-static {}, Lcom/google/android/youtube/player/internal/aa;->a()Lcom/google/android/youtube/player/internal/aa;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$a;->a:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    invoke-static {v2}, Lcom/google/android/youtube/player/YouTubeThumbnailView;->a(Lcom/google/android/youtube/player/YouTubeThumbnailView;)Lcom/google/android/youtube/player/internal/b;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$a;->a:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/player/internal/aa;->a(Lcom/google/android/youtube/player/internal/b;Lcom/google/android/youtube/player/YouTubeThumbnailView;)Lcom/google/android/youtube/player/internal/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/player/YouTubeThumbnailView;->a(Lcom/google/android/youtube/player/YouTubeThumbnailView;Lcom/google/android/youtube/player/internal/a;)Lcom/google/android/youtube/player/internal/a;

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$a;->b:Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;

    iget-object v1, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$a;->a:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    iget-object v2, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$a;->a:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    invoke-static {v2}, Lcom/google/android/youtube/player/YouTubeThumbnailView;->b(Lcom/google/android/youtube/player/YouTubeThumbnailView;)Lcom/google/android/youtube/player/internal/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;->onInitializationSuccess(Lcom/google/android/youtube/player/YouTubeThumbnailView;Lcom/google/android/youtube/player/YouTubeThumbnailLoader;)V

    invoke-direct {p0}, Lcom/google/android/youtube/player/YouTubeThumbnailView$a;->c()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$a;->b:Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;

    iget-object v1, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$a;->a:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    invoke-interface {v0, v1, p1}, Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;->onInitializationFailure(Lcom/google/android/youtube/player/YouTubeThumbnailView;Lcom/google/android/youtube/player/YouTubeInitializationResult;)V

    invoke-direct {p0}, Lcom/google/android/youtube/player/YouTubeThumbnailView$a;->c()V

    return-void
.end method

.method public final b()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/youtube/player/YouTubeThumbnailView$a;->c()V

    return-void
.end method
