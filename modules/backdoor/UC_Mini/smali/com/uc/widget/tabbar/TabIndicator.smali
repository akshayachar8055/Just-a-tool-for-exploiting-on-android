.class public Lcom/uc/widget/tabbar/TabIndicator;
.super Landroid/view/View;


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/graphics/Paint;

.field private l:[Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x4

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/uc/widget/tabbar/TabIndicator;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/uc/widget/tabbar/TabIndicator;->c:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/uc/widget/tabbar/TabIndicator;->d:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/uc/widget/tabbar/TabIndicator;->e:I

    iput v1, p0, Lcom/uc/widget/tabbar/TabIndicator;->f:I

    iput v1, p0, Lcom/uc/widget/tabbar/TabIndicator;->g:I

    iput v1, p0, Lcom/uc/widget/tabbar/TabIndicator;->h:I

    iput v2, p0, Lcom/uc/widget/tabbar/TabIndicator;->i:I

    iput v2, p0, Lcom/uc/widget/tabbar/TabIndicator;->j:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/widget/tabbar/TabIndicator;->l:[Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/uc/widget/tabbar/TabIndicator;->k:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabIndicator;->k:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabIndicator;->k:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private static a(II)I
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_0

    move p0, v0

    :cond_0
    return p0
.end method

.method private a(IF)V
    .locals 0

    iput p2, p0, Lcom/uc/widget/tabbar/TabIndicator;->c:F

    iput p1, p0, Lcom/uc/widget/tabbar/TabIndicator;->d:I

    invoke-direct {p0}, Lcom/uc/widget/tabbar/TabIndicator;->d()V

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabIndicator;->invalidate()V

    return-void
.end method

.method private b()I
    .locals 3

    iget v0, p0, Lcom/uc/widget/tabbar/TabIndicator;->a:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/uc/widget/tabbar/TabIndicator;->e:I

    iget v1, p0, Lcom/uc/widget/tabbar/TabIndicator;->f:I

    iget v2, p0, Lcom/uc/widget/tabbar/TabIndicator;->h:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/uc/widget/tabbar/TabIndicator;->a:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private c()V
    .locals 2

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabIndicator;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabIndicator;->getSuggestedMinimumWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabIndicator;->requestLayout()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/uc/widget/tabbar/TabIndicator;->d()V

    goto :goto_0
.end method

.method private d()V
    .locals 9

    const/4 v1, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabIndicator;->l:[Landroid/graphics/RectF;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabIndicator;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/uc/widget/tabbar/TabIndicator;->b()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabIndicator;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/uc/widget/tabbar/TabIndicator;->g:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v4, v2, v4

    iget v2, p0, Lcom/uc/widget/tabbar/TabIndicator;->e:I

    iget v3, p0, Lcom/uc/widget/tabbar/TabIndicator;->f:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/uc/widget/tabbar/TabIndicator;->c:F

    mul-float v5, v2, v3

    move v2, v0

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/uc/widget/tabbar/TabIndicator;->a:I

    if-ge v0, v3, :cond_8

    iget v3, p0, Lcom/uc/widget/tabbar/TabIndicator;->b:I

    if-ne v0, v3, :cond_3

    iget v3, p0, Lcom/uc/widget/tabbar/TabIndicator;->d:I

    if-nez v3, :cond_2

    iget v3, p0, Lcom/uc/widget/tabbar/TabIndicator;->e:I

    int-to-float v3, v3

    :goto_2
    iget-object v6, p0, Lcom/uc/widget/tabbar/TabIndicator;->l:[Landroid/graphics/RectF;

    aget-object v6, v6, v0

    add-float v7, v2, v3

    iget v8, p0, Lcom/uc/widget/tabbar/TabIndicator;->g:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    invoke-virtual {v6, v2, v4, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget v6, p0, Lcom/uc/widget/tabbar/TabIndicator;->h:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    add-float/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/uc/widget/tabbar/TabIndicator;->e:I

    int-to-float v3, v3

    sub-float/2addr v3, v5

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/uc/widget/tabbar/TabIndicator;->b:I

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_5

    iget v3, p0, Lcom/uc/widget/tabbar/TabIndicator;->d:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_4

    iget v3, p0, Lcom/uc/widget/tabbar/TabIndicator;->f:I

    int-to-float v3, v3

    add-float/2addr v3, v5

    goto :goto_2

    :cond_4
    iget v3, p0, Lcom/uc/widget/tabbar/TabIndicator;->f:I

    int-to-float v3, v3

    goto :goto_2

    :cond_5
    iget v3, p0, Lcom/uc/widget/tabbar/TabIndicator;->b:I

    add-int/lit8 v3, v3, 0x1

    if-ne v0, v3, :cond_7

    iget v3, p0, Lcom/uc/widget/tabbar/TabIndicator;->d:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_6

    iget v3, p0, Lcom/uc/widget/tabbar/TabIndicator;->f:I

    int-to-float v3, v3

    add-float/2addr v3, v5

    goto :goto_2

    :cond_6
    iget v3, p0, Lcom/uc/widget/tabbar/TabIndicator;->f:I

    int-to-float v3, v3

    goto :goto_2

    :cond_7
    iget v3, p0, Lcom/uc/widget/tabbar/TabIndicator;->f:I

    int-to-float v3, v3

    goto :goto_2

    :cond_8
    iget v0, p0, Lcom/uc/widget/tabbar/TabIndicator;->c:F

    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    iput v1, p0, Lcom/uc/widget/tabbar/TabIndicator;->d:I

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/uc/widget/tabbar/TabIndicator;->b:I

    return v0
.end method

.method public final a(F)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/uc/widget/tabbar/TabIndicator;->a(IF)V

    return-void
.end method

.method public final b(F)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/uc/widget/tabbar/TabIndicator;->a(IF)V

    return-void
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    invoke-super {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    iget v1, p0, Lcom/uc/widget/tabbar/TabIndicator;->a:I

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabIndicator;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabIndicator;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/uc/widget/tabbar/TabIndicator;->g:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    invoke-super {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    iget v1, p0, Lcom/uc/widget/tabbar/TabIndicator;->a:I

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabIndicator;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabIndicator;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0}, Lcom/uc/widget/tabbar/TabIndicator;->b()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/uc/widget/tabbar/TabIndicator;->a:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/uc/widget/tabbar/TabIndicator;->l:[Landroid/graphics/RectF;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/uc/widget/tabbar/TabIndicator;->i:I

    int-to-float v2, v2

    iget v3, p0, Lcom/uc/widget/tabbar/TabIndicator;->j:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/uc/widget/tabbar/TabIndicator;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabIndicator;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/uc/widget/tabbar/TabIndicator;->a(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabIndicator;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/uc/widget/tabbar/TabIndicator;->a(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/uc/widget/tabbar/TabIndicator;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/uc/widget/tabbar/TabIndicator;->d()V

    return-void
.end method

.method public setCurrentDotWidth(I)V
    .locals 0

    if-gez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/uc/widget/tabbar/TabIndicator;->e:I

    invoke-direct {p0}, Lcom/uc/widget/tabbar/TabIndicator;->c()V

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setCurrentTab(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/uc/widget/tabbar/TabIndicator;->a:I

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/uc/widget/tabbar/TabIndicator;->d:I

    iput p1, p0, Lcom/uc/widget/tabbar/TabIndicator;->b:I

    invoke-direct {p0}, Lcom/uc/widget/tabbar/TabIndicator;->c()V

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setDotColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabIndicator;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabIndicator;->invalidate()V

    return-void
.end method

.method public setDotHeight(I)V
    .locals 2

    if-gez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/uc/widget/tabbar/TabIndicator;->g:I

    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/uc/widget/tabbar/TabIndicator;->j:I

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabIndicator;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabIndicator;->getSuggestedMinimumHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabIndicator;->requestLayout()V

    :goto_1
    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabIndicator;->invalidate()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/uc/widget/tabbar/TabIndicator;->d()V

    goto :goto_1
.end method

.method public setDotRadius(II)V
    .locals 1

    iget v0, p0, Lcom/uc/widget/tabbar/TabIndicator;->i:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/uc/widget/tabbar/TabIndicator;->j:I

    if-ne v0, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/uc/widget/tabbar/TabIndicator;->i:I

    iput p2, p0, Lcom/uc/widget/tabbar/TabIndicator;->j:I

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setDotSpace(I)V
    .locals 0

    if-gez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/uc/widget/tabbar/TabIndicator;->h:I

    invoke-direct {p0}, Lcom/uc/widget/tabbar/TabIndicator;->c()V

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setDotWidth(I)V
    .locals 1

    if-gez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/uc/widget/tabbar/TabIndicator;->f:I

    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/uc/widget/tabbar/TabIndicator;->i:I

    invoke-direct {p0}, Lcom/uc/widget/tabbar/TabIndicator;->c()V

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setTabCount(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/uc/widget/tabbar/TabIndicator;->a:I

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/uc/widget/tabbar/TabIndicator;->a:I

    iget v0, p0, Lcom/uc/widget/tabbar/TabIndicator;->a:I

    if-nez v0, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Lcom/uc/widget/tabbar/TabIndicator;->b:I

    :goto_1
    iget v0, p0, Lcom/uc/widget/tabbar/TabIndicator;->a:I

    new-array v0, v0, [Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/uc/widget/tabbar/TabIndicator;->l:[Landroid/graphics/RectF;

    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lcom/uc/widget/tabbar/TabIndicator;->a:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/uc/widget/tabbar/TabIndicator;->l:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/uc/widget/tabbar/TabIndicator;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/uc/widget/tabbar/TabIndicator;->b:I

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/uc/widget/tabbar/TabIndicator;->c()V

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabIndicator;->invalidate()V

    goto :goto_0
.end method
