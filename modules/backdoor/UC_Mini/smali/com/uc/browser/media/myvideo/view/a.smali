.class public final Lcom/uc/browser/media/myvideo/view/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/HashMap;

.field private b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/browser/media/myvideo/view/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uc/browser/media/myvideo/view/a;->a:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/uc/browser/media/myvideo/view/a;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/media/myvideo/view/a;->a:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/uc/browser/media/myvideo/view/d;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/uc/browser/media/myvideo/view/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/media/myvideo/view/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/uc/browser/media/myvideo/view/b;

    invoke-direct {v0, p2}, Lcom/uc/browser/media/myvideo/view/b;-><init>(Lcom/uc/browser/media/myvideo/view/d;)V

    iget-object v1, p0, Lcom/uc/browser/media/myvideo/view/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/uc/browser/media/myvideo/view/c;

    invoke-direct {v2, p0, p1, v0}, Lcom/uc/browser/media/myvideo/view/c;-><init>(Lcom/uc/browser/media/myvideo/view/a;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    goto :goto_0
.end method
