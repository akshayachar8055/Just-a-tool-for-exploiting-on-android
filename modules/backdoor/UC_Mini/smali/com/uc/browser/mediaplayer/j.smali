.class final Lcom/uc/browser/mediaplayer/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;


# direct methods
.method constructor <init>(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/mediaplayer/j;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/j;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    iget-object v0, v0, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/j;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v0}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->E(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Lcom/uc/browser/mediaplayer/RotateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/browser/mediaplayer/RotateView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/j;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-virtual {v0}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->i()V

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/j;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v0}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->F(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/j;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->a:Z

    :cond_0
    return-void
.end method
