.class Lcom/google/android/gms/b/fa$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/b/fa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/b/fa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/fa;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/fa$1;->c:Lcom/google/android/gms/b/fa;

    iput-object p2, p0, Lcom/google/android/gms/b/fa$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/b/fa$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/b/fa$1;->c:Lcom/google/android/gms/b/fa;

    invoke-virtual {v0}, Lcom/google/android/gms/b/fa;->a()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/b/fa$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/b/fa$1$1;-><init>(Lcom/google/android/gms/b/fa$1;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/google/android/gms/b/fa$1;->c:Lcom/google/android/gms/b/fa;

    iget-object v1, v1, Lcom/google/android/gms/b/fa;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/b/fa$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/b/fa$1;->b:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Fetching assets finished."

    invoke-static {v0}, Lcom/google/android/gms/b/hf;->a(Ljava/lang/String;)V

    return-void
.end method
