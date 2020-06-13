.class final Lcom/uc/browser/mediaplayer/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;


# direct methods
.method constructor <init>(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/mediaplayer/e;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/e;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v0}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->s(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Lcom/uc/browser/mediaplayer/aa;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/uc/browser/mediaplayer/aa;->a(I)V

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/e;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v0}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->k(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/e;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-virtual {v0}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->d()V

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/e;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v0}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->C(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Z

    :goto_0
    iget-object v0, p0, Lcom/uc/browser/mediaplayer/e;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v0}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->s(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Lcom/uc/browser/mediaplayer/aa;

    const-string v0, "v03"

    invoke-static {v0}, Lcom/uc/browser/mediaplayer/af;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uc/browser/mediaplayer/e;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v0}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->g(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/e;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-virtual {v0}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->c()V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/uc/browser/mediaplayer/e;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v0}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->n(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)V

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/e;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    sget v1, Lcom/uc/browser/mediaplayer/x;->b:I

    invoke-static {v0, v1}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->f(Lcom/uc/browser/mediaplayer/UcMediaPlayer;I)V

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/e;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v0}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->B(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
