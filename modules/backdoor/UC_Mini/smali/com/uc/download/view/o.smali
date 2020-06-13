.class final Lcom/uc/download/view/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/download/view/DownloadEditLayout;


# direct methods
.method constructor <init>(Lcom/uc/download/view/DownloadEditLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/download/view/o;->a:Lcom/uc/download/view/DownloadEditLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/uc/download/view/o;->a:Lcom/uc/download/view/DownloadEditLayout;

    invoke-static {v0}, Lcom/uc/download/view/DownloadEditLayout;->e(Lcom/uc/download/view/DownloadEditLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/uc/download/view/o;->a:Lcom/uc/download/view/DownloadEditLayout;

    invoke-static {v1}, Lcom/uc/download/view/DownloadEditLayout;->e(Lcom/uc/download/view/DownloadEditLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/uc/download/view/o;->a:Lcom/uc/download/view/DownloadEditLayout;

    invoke-static {v0}, Lcom/uc/download/view/DownloadEditLayout;->f(Lcom/uc/download/view/DownloadEditLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uc/download/view/o;->a:Lcom/uc/download/view/DownloadEditLayout;

    invoke-virtual {v0}, Lcom/uc/download/view/DownloadEditLayout;->c()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/uc/download/view/o;->a:Lcom/uc/download/view/DownloadEditLayout;

    invoke-static {v0}, Lcom/uc/download/view/DownloadEditLayout;->g(Lcom/uc/download/view/DownloadEditLayout;)V

    goto :goto_0
.end method
