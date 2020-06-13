.class public Lcom/uc/browser/core/homepage/card/view/RoundRectTextView;
.super Landroid/widget/TextView;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:F

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/uc/browser/core/homepage/card/view/RoundRectTextView;->b:F

    iput-boolean v1, p0, Lcom/uc/browser/core/homepage/card/view/RoundRectTextView;->c:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/uc/browser/core/homepage/card/view/RoundRectTextView;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/RoundRectTextView;->a:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/RoundRectTextView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/RoundRectTextView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-boolean v1, p0, Lcom/uc/browser/core/homepage/card/view/RoundRectTextView;->c:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/uc/browser/core/homepage/card/view/RoundRectTextView;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/uc/browser/core/homepage/card/view/RoundRectTextView;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, p0, Lcom/uc/browser/core/homepage/card/view/RoundRectTextView;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v1, p0, Lcom/uc/browser/core/homepage/card/view/RoundRectTextView;->a:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/RoundRectTextView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/uc/browser/core/homepage/card/view/RoundRectTextView;->b:F

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/RoundRectTextView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/uc/browser/core/homepage/card/view/RoundRectTextView;->b:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/uc/browser/core/homepage/card/view/RoundRectTextView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    return-void
.end method

.method public setBgColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/RoundRectTextView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setCorner(F)V
    .locals 0

    iput p1, p0, Lcom/uc/browser/core/homepage/card/view/RoundRectTextView;->b:F

    return-void
.end method

.method public setFill(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uc/browser/core/homepage/card/view/RoundRectTextView;->c:Z

    return-void
.end method
