.class final Lcom/uc/browser/mediaplayer/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;


# direct methods
.method constructor <init>(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/mediaplayer/l;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    iget-object v1, p0, Lcom/uc/browser/mediaplayer/l;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v1}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->G(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)I

    move-result v1

    sub-int v1, v0, v1

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/l;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-virtual {v0}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->r()I

    move-result v2

    const-string v0, "1.0.0"

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    invoke-static {}, Lio/vov/vitamio/Vitamio;->getVersion()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/uc/browser/mediaplayer/ag;->a()Lcom/uc/browser/mediaplayer/ag;

    move-result-object v3

    const-string v4, "_prlt"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/uc/browser/mediaplayer/ag;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_prvers"

    invoke-virtual {v3, v2, v0}, Lcom/uc/browser/mediaplayer/ag;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/l;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v0}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->r(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Lcom/uc/browser/mediaplayer/ac;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "_prsty"

    iget-object v2, p0, Lcom/uc/browser/mediaplayer/l;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v2}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->r(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Lcom/uc/browser/mediaplayer/ac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uc/browser/mediaplayer/ac;->t()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/uc/browser/mediaplayer/ag;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "_amc"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/uc/browser/mediaplayer/ag;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/l;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v0}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->H(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Ljava/lang/Runnable;

    return-void
.end method
