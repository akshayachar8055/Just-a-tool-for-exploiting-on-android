.class final Lcom/uc/browser/mediaplayer/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;


# direct methods
.method constructor <init>(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/mediaplayer/f;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/f;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v0}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->h(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/f;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v0}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->g(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/uc/browser/mediaplayer/f;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v0}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->i(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/uc/browser/mediaplayer/f;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-virtual {v0}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->i()V

    goto :goto_0
.end method
