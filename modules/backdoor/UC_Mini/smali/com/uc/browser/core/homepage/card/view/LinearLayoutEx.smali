.class public Lcom/uc/browser/core/homepage/card/view/LinearLayoutEx;
.super Landroid/view/ViewGroup;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/uc/browser/core/homepage/card/view/LinearLayoutEx;->a:I

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 8

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/LinearLayoutEx;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/LinearLayoutEx;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/LinearLayoutEx;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/LinearLayoutEx;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/uc/browser/core/homepage/card/view/LinearLayoutEx;->a:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/uc/browser/core/homepage/card/view/LinearLayoutEx;->a:I

    add-int/2addr v0, v1

    div-int v3, v0, v2

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/LinearLayoutEx;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/LinearLayoutEx;->getPaddingLeft()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/uc/browser/core/homepage/card/view/LinearLayoutEx;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    add-int v6, v1, v3

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v5, v1, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    iget v5, p0, Lcom/uc/browser/core/homepage/card/view/LinearLayoutEx;->a:I

    add-int/2addr v5, v3

    add-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/LinearLayoutEx;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/LinearLayoutEx;->getPaddingLeft()I

    move-result v0

    sub-int v0, v4, v0

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/LinearLayoutEx;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/uc/browser/core/homepage/card/view/LinearLayoutEx;->a:I

    mul-int/2addr v2, v3

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/uc/browser/core/homepage/card/view/LinearLayoutEx;->a:I

    add-int/2addr v0, v2

    div-int v5, v0, v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v8, :cond_2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    :goto_1
    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/uc/browser/core/homepage/card/view/LinearLayoutEx;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    or-int v6, v5, v8

    or-int v7, v0, v8

    invoke-virtual {v2, v6, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0, v4, v0}, Lcom/uc/browser/core/homepage/card/view/LinearLayoutEx;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_2
    move v0, v1

    move v2, v1

    :goto_2
    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/uc/browser/core/homepage/card/view/LinearLayoutEx;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    or-int v7, v5, v8

    invoke-virtual {v6, v7, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/LinearLayoutEx;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/LinearLayoutEx;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v4, v0}, Lcom/uc/browser/core/homepage/card/view/LinearLayoutEx;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setGap(F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/uc/browser/core/homepage/card/view/LinearLayoutEx;->a:I

    return-void
.end method

.method public setGap(I)V
    .locals 0

    iput p1, p0, Lcom/uc/browser/core/homepage/card/view/LinearLayoutEx;->a:I

    return-void
.end method
