.class final Lcom/uc/browser/mediaplayer/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;


# direct methods
.method constructor <init>(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/mediaplayer/p;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/p;->a:Lcom/uc/browser/mediaplayer/UcMediaPlayer;

    invoke-static {v0}, Lcom/uc/browser/mediaplayer/UcMediaPlayer;->s(Lcom/uc/browser/mediaplayer/UcMediaPlayer;)Lcom/uc/browser/mediaplayer/aa;

    const-string v0, "vps_6"

    invoke-static {v0}, Lcom/uc/browser/mediaplayer/af;->a(Ljava/lang/String;)V

    return-void
.end method
