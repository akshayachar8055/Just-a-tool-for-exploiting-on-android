.class Lcom/facebook/ads/internal/e/b/c;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Lcom/facebook/ads/internal/e/b/a/c;

.field public final c:Lcom/facebook/ads/internal/e/b/a/a;


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/facebook/ads/internal/e/b/a/c;Lcom/facebook/ads/internal/e/b/a/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/e/b/c;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/facebook/ads/internal/e/b/c;->b:Lcom/facebook/ads/internal/e/b/a/c;

    iput-object p3, p0, Lcom/facebook/ads/internal/e/b/c;->c:Lcom/facebook/ads/internal/e/b/a/a;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/e/b/c;->b:Lcom/facebook/ads/internal/e/b/a/c;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/e/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/ads/internal/e/b/c;->a:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method
