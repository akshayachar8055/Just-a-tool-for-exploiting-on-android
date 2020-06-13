.class final Lcom/uc/browser/media/myvideo/view/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Landroid/os/Handler;

.field private synthetic c:Lcom/uc/browser/media/myvideo/view/a;


# direct methods
.method constructor <init>(Lcom/uc/browser/media/myvideo/view/a;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/media/myvideo/view/c;->c:Lcom/uc/browser/media/myvideo/view/a;

    iput-object p2, p0, Lcom/uc/browser/media/myvideo/view/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/uc/browser/media/myvideo/view/c;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/uc/browser/media/myvideo/view/c;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/uc/browser/media/myvideo/view/c;->c:Lcom/uc/browser/media/myvideo/view/a;

    invoke-static {v0}, Lcom/uc/browser/media/myvideo/view/a;->a(Lcom/uc/browser/media/myvideo/view/a;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/uc/browser/media/myvideo/view/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/uc/browser/media/myvideo/view/c;->b:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/browser/media/myvideo/view/c;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
