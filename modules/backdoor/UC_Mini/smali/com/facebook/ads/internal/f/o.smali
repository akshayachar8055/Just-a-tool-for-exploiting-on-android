.class public Lcom/facebook/ads/internal/f/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/f/i;


# instance fields
.field private a:Lcom/facebook/ads/internal/f/h;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/InterstitialAdActivity;Lcom/facebook/ads/internal/f/i$a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/f/h;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/f/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/f/o;->a:Lcom/facebook/ads/internal/f/h;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/f/o;->a:Lcom/facebook/ads/internal/f/h;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/f/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/f/o;->a:Lcom/facebook/ads/internal/f/h;

    invoke-interface {p2, v0}, Lcom/facebook/ads/internal/f/i$a;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "autoplay"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "videoURL"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "videoPlayReportURL"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "videoTimeReportURL"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "videoPlayReportMS"

    const/16 v5, 0x2710

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/facebook/ads/internal/f/o;->a:Lcom/facebook/ads/internal/f/h;

    invoke-virtual {v5, v0}, Lcom/facebook/ads/internal/f/h;->setAutoplay(Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/f/o;->a:Lcom/facebook/ads/internal/f/h;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/internal/f/h;->setVideoPlayReportMS(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/f/o;->a:Lcom/facebook/ads/internal/f/h;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/f/h;->setVideoPlayReportURI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/f/o;->a:Lcom/facebook/ads/internal/f/h;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/internal/f/h;->setVideoTimeReportURI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/f/o;->a:Lcom/facebook/ads/internal/f/h;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/f/h;->setVideoURI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/f/o;->a:Lcom/facebook/ads/internal/f/h;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/f/h;->a()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/f/o;->a:Lcom/facebook/ads/internal/f/h;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/f/h;->b()V

    return-void
.end method
