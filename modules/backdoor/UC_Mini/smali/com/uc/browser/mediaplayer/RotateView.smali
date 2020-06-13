.class public Lcom/uc/browser/mediaplayer/RotateView;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/uc/browser/mediaplayer/RotateView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/uc/browser/mediaplayer/RotateView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/uc/browser/mediaplayer/RotateView;->a()V

    return-void
.end method

.method private a()V
    .locals 7

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/uc/browser/mediaplayer/RotateView;->a:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/RotateView;->a:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/RotateView;->a:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/RotateView;->a:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/RotateView;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {p0}, Lcom/uc/browser/mediaplayer/RotateView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/RotateView;->a:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/uc/browser/mediaplayer/RotateView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/uc/browser/mediaplayer/RotateView;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/uc/browser/mediaplayer/RotateView;->clearAnimation()V

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/RotateView;->a:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/uc/browser/mediaplayer/RotateView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/uc/browser/mediaplayer/RotateView;->clearAnimation()V

    goto :goto_1
.end method
