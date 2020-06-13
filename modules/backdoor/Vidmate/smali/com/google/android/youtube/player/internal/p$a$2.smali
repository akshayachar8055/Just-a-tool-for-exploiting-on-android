.class final Lcom/google/android/youtube/player/internal/p$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/youtube/player/internal/p$a;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/player/internal/p$a;ZZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/youtube/player/internal/p$a$2;->d:Lcom/google/android/youtube/player/internal/p$a;

    iput-boolean p2, p0, Lcom/google/android/youtube/player/internal/p$a$2;->a:Z

    iput-boolean p3, p0, Lcom/google/android/youtube/player/internal/p$a$2;->b:Z

    iput-object p4, p0, Lcom/google/android/youtube/player/internal/p$a$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/p$a$2;->d:Lcom/google/android/youtube/player/internal/p$a;

    iget-object v0, v0, Lcom/google/android/youtube/player/internal/p$a;->a:Lcom/google/android/youtube/player/internal/p;

    iget-boolean v1, p0, Lcom/google/android/youtube/player/internal/p$a$2;->a:Z

    invoke-static {v0, v1}, Lcom/google/android/youtube/player/internal/p;->a(Lcom/google/android/youtube/player/internal/p;Z)Z

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/p$a$2;->d:Lcom/google/android/youtube/player/internal/p$a;

    iget-object v0, v0, Lcom/google/android/youtube/player/internal/p$a;->a:Lcom/google/android/youtube/player/internal/p;

    iget-boolean v1, p0, Lcom/google/android/youtube/player/internal/p$a$2;->b:Z

    invoke-static {v0, v1}, Lcom/google/android/youtube/player/internal/p;->b(Lcom/google/android/youtube/player/internal/p;Z)Z

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/p$a$2;->d:Lcom/google/android/youtube/player/internal/p$a;

    iget-object v0, v0, Lcom/google/android/youtube/player/internal/p$a;->a:Lcom/google/android/youtube/player/internal/p;

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/p$a$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/player/internal/p;->b(Ljava/lang/String;)V

    return-void
.end method
