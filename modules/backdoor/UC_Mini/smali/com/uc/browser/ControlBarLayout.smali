.class public Lcom/uc/browser/ControlBarLayout;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Ljava/lang/Runnable;

.field private b:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/uc/browser/cc;

    invoke-direct {v0, p0}, Lcom/uc/browser/cc;-><init>(Lcom/uc/browser/ControlBarLayout;)V

    iput-object v0, p0, Lcom/uc/browser/ControlBarLayout;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/uc/browser/cc;

    invoke-direct {v0, p0}, Lcom/uc/browser/cc;-><init>(Lcom/uc/browser/ControlBarLayout;)V

    iput-object v0, p0, Lcom/uc/browser/ControlBarLayout;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/uc/browser/cc;

    invoke-direct {v0, p0}, Lcom/uc/browser/cc;-><init>(Lcom/uc/browser/ControlBarLayout;)V

    iput-object v0, p0, Lcom/uc/browser/ControlBarLayout;->a:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/uc/browser/ControlBarLayout;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/ControlBarLayout;->b:Landroid/widget/Scroller;

    return-object v0
.end method


# virtual methods
.method public final a(IJ)V
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/ControlBarLayout;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/uc/browser/ControlBarLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0, v1, p1}, Landroid/widget/RelativeLayout;->scrollBy(II)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/uc/browser/ControlBarLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const v4, 0x3f19999a    # 0.6f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v0, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/uc/browser/ControlBarLayout;->b:Landroid/widget/Scroller;

    iget-object v0, p0, Lcom/uc/browser/ControlBarLayout;->b:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/uc/browser/ControlBarLayout;->getScrollY()I

    move-result v2

    long-to-int v5, p2

    move v3, v1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/uc/browser/ControlBarLayout;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/uc/browser/ControlBarLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/uc/browser/ControlBarLayout;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
