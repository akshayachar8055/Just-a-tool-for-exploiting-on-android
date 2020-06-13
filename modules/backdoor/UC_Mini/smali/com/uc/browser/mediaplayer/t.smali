.class final Lcom/uc/browser/mediaplayer/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;


# direct methods
.method constructor <init>(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/mediaplayer/t;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/t;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v0}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->s(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Lcom/uc/browser/mediaplayer/aa;

    const-string v0, "vps_11"

    invoke-static {v0}, Lcom/uc/browser/mediaplayer/af;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/t;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->d(Lcom/uc/browser/mediaplayer/UcMediaPlayer;I)V

    return-void
.end method
