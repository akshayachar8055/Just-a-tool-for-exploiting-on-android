.class final Lcom/uc/browser/mediaplayer/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;


# direct methods
.method constructor <init>(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/mediaplayer/n;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/n;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v0}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->r(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Lcom/uc/browser/mediaplayer/ac;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/uc/browser/mediaplayer/ac;->d(I)V

    sget-object v0, Lcom/uc/browser/mediaplayer/UcMediaPlayerActivity;->b:Lcom/uc/browser/mediaplayer/UcMediaPlayerActivity;

    iget-object v1, p0, Lcom/uc/browser/mediaplayer/n;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v1}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->r(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Lcom/uc/browser/mediaplayer/ac;

    move-result-object v1

    new-instance v2, Lcom/uc/browser/mediaplayer/aa;

    invoke-direct {v2, v0, v1}, Lcom/uc/browser/mediaplayer/aa;-><init>(Landroid/app/Activity;Lcom/uc/browser/mediaplayer/ac;)V

    iput-object v2, v0, Lcom/uc/browser/mediaplayer/UcMediaPlayerActivity;->a:Lcom/uc/browser/mediaplayer/aa;

    return-void
.end method
