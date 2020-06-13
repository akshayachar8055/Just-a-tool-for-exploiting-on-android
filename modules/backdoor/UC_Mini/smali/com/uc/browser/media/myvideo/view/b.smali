.class final Lcom/uc/browser/media/myvideo/view/b;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/uc/browser/media/myvideo/view/d;


# direct methods
.method constructor <init>(Lcom/uc/browser/media/myvideo/view/d;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/media/myvideo/view/b;->a:Lcom/uc/browser/media/myvideo/view/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v1, p0, Lcom/uc/browser/media/myvideo/view/b;->a:Lcom/uc/browser/media/myvideo/view/d;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lcom/uc/browser/media/myvideo/view/d;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
