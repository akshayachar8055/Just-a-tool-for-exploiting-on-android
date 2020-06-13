.class final Lcom/google/android/youtube/player/internal/p$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Landroid/graphics/Bitmap;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/google/android/youtube/player/internal/p$a;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/player/internal/p$a;ZZLandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/youtube/player/internal/p$a$1;->e:Lcom/google/android/youtube/player/internal/p$a;

    iput-boolean p2, p0, Lcom/google/android/youtube/player/internal/p$a$1;->a:Z

    iput-boolean p3, p0, Lcom/google/android/youtube/player/internal/p$a$1;->b:Z

    iput-object p4, p0, Lcom/google/android/youtube/player/internal/p$a$1;->c:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/google/android/youtube/player/internal/p$a$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/p$a$1;->e:Lcom/google/android/youtube/player/internal/p$a;

    iget-object v0, v0, Lcom/google/android/youtube/player/internal/p$a;->a:Lcom/google/android/youtube/player/internal/p;

    iget-boolean v1, p0, Lcom/google/android/youtube/player/internal/p$a$1;->a:Z

    invoke-static {v0, v1}, Lcom/google/android/youtube/player/internal/p;->a(Lcom/google/android/youtube/player/internal/p;Z)Z

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/p$a$1;->e:Lcom/google/android/youtube/player/internal/p$a;

    iget-object v0, v0, Lcom/google/android/youtube/player/internal/p$a;->a:Lcom/google/android/youtube/player/internal/p;

    iget-boolean v1, p0, Lcom/google/android/youtube/player/internal/p$a$1;->b:Z

    invoke-static {v0, v1}, Lcom/google/android/youtube/player/internal/p;->b(Lcom/google/android/youtube/player/internal/p;Z)Z

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/p$a$1;->e:Lcom/google/android/youtube/player/internal/p$a;

    iget-object v0, v0, Lcom/google/android/youtube/player/internal/p$a;->a:Lcom/google/android/youtube/player/internal/p;

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/p$a$1;->c:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/google/android/youtube/player/internal/p$a$1;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/player/internal/p;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method
