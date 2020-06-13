.class public final Lcom/google/android/youtube/player/internal/n;
.super Landroid/widget/FrameLayout;


# instance fields
.field private final a:Landroid/widget/ProgressBar;

.field private final b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/16 v6, 0x8

    const/16 v5, 0x11

    const/4 v4, -0x2

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/android/youtube/player/internal/z;->c(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/google/android/youtube/player/internal/m;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/player/internal/m;-><init>(Landroid/content/Context;)V

    const/high16 v1, -0x1000000

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/player/internal/n;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/youtube/player/internal/n;->a:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/n;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/n;->a:Landroid/widget/ProgressBar;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/youtube/player/internal/n;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/youtube/player/internal/n;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/youtube/player/internal/n;->b:Landroid/widget/TextView;

    const v3, 0x1030046

    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/google/android/youtube/player/internal/n;->b:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/google/android/youtube/player/internal/n;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/android/youtube/player/internal/n;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/n;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/n;->b:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/google/android/youtube/player/internal/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/n;->b:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/player/internal/n;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/n;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/n;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/n;->a:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/n;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/n;->a:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/n;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 8

    const/4 v1, 0x0

    const/high16 v7, -0x80000000

    const v6, 0x3fe374bc    # 1.777f

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-ne v3, v5, :cond_0

    if-ne v4, v5, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1, p1}, Lcom/google/android/youtube/player/internal/n;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/google/android/youtube/player/internal/n;->resolveSize(II)I

    move-result v0

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_0
    if-eq v3, v5, :cond_1

    if-ne v3, v7, :cond_2

    if-nez v4, :cond_2

    :cond_1
    int-to-float v0, v2

    div-float/2addr v0, v6

    float-to-int v0, v0

    move v1, v2

    goto :goto_0

    :cond_2
    if-eq v4, v5, :cond_3

    if-ne v4, v7, :cond_4

    if-nez v3, :cond_4

    :cond_3
    int-to-float v1, v0

    mul-float/2addr v1, v6

    float-to-int v1, v1

    goto :goto_0

    :cond_4
    if-ne v3, v7, :cond_6

    if-ne v4, v7, :cond_6

    int-to-float v1, v0

    int-to-float v3, v2

    div-float/2addr v3, v6

    cmpg-float v1, v1, v3

    if-gez v1, :cond_5

    int-to-float v1, v0

    mul-float/2addr v1, v6

    float-to-int v1, v1

    goto :goto_0

    :cond_5
    int-to-float v0, v2

    div-float/2addr v0, v6

    float-to-int v0, v0

    move v1, v2

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method
