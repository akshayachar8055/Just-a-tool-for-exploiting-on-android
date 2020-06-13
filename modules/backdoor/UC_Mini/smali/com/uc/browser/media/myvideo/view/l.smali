.class final Lcom/uc/browser/media/myvideo/view/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;


# direct methods
.method constructor <init>(Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/media/myvideo/view/l;->a:Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/media/myvideo/view/l;->a:Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;

    invoke-static {v0}, Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;->d(Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;)Lcom/uc/browser/media/myvideo/view/n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/media/myvideo/view/l;->a:Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;

    invoke-static {v0}, Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;->a(Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;)Lcom/uc/browser/media/myvideo/view/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/browser/media/myvideo/view/g;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/uc/browser/media/myvideo/view/l;->a:Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;

    invoke-static {v1}, Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;->d(Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;)Lcom/uc/browser/media/myvideo/view/n;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/uc/browser/media/myvideo/view/n;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method
