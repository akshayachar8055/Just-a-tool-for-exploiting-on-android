.class final Lcom/uc/browser/mediaplayer/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;


# direct methods
.method constructor <init>(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/mediaplayer/c;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/c;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v0}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->r(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Lcom/uc/browser/mediaplayer/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/browser/mediaplayer/ac;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/c;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v0}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->r(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Lcom/uc/browser/mediaplayer/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/browser/mediaplayer/ac;->u()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/c;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v0}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->s(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Lcom/uc/browser/mediaplayer/aa;

    const-string v0, "v42"

    invoke-static {v0}, Lcom/uc/browser/mediaplayer/af;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/c;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v0}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->s(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Lcom/uc/browser/mediaplayer/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/browser/mediaplayer/c;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v1}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->r(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Lcom/uc/browser/mediaplayer/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/browser/mediaplayer/ac;->q()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/uc/browser/mediaplayer/c;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v2}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->r(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Lcom/uc/browser/mediaplayer/ac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uc/browser/mediaplayer/ac;->n()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/uc/browser/mediaplayer/c;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v3}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->r(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Lcom/uc/browser/mediaplayer/ac;

    iget-object v3, p0, Lcom/uc/browser/mediaplayer/c;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v3}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->r(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Lcom/uc/browser/mediaplayer/ac;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uc/browser/mediaplayer/ac;->o()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/uc/browser/mediaplayer/c;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v5}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->r(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Lcom/uc/browser/mediaplayer/ac;

    move-result-object v5

    invoke-virtual {v5}, Lcom/uc/browser/mediaplayer/ac;->r()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".uvideo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/uc/browser/mediaplayer/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/uc/browser/mediaplayer/c;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v0}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->s(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Lcom/uc/browser/mediaplayer/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/browser/mediaplayer/c;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v1}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->r(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Lcom/uc/browser/mediaplayer/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/browser/mediaplayer/ac;->q()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/uc/browser/mediaplayer/c;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v2}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->r(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Lcom/uc/browser/mediaplayer/ac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uc/browser/mediaplayer/ac;->n()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/uc/browser/mediaplayer/c;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v3}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->r(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Lcom/uc/browser/mediaplayer/ac;

    iget-object v3, p0, Lcom/uc/browser/mediaplayer/c;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v3}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->r(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Lcom/uc/browser/mediaplayer/ac;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uc/browser/mediaplayer/ac;->o()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/uc/browser/mediaplayer/c;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v4}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->r(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Lcom/uc/browser/mediaplayer/ac;

    move-result-object v4

    invoke-virtual {v4}, Lcom/uc/browser/mediaplayer/ac;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/uc/browser/mediaplayer/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
