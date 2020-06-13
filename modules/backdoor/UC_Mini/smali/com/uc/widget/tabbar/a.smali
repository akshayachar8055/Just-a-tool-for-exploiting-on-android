.class public final Lcom/uc/widget/tabbar/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:J

.field private m:F

.field private n:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uc/widget/tabbar/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/widget/tabbar/a;->a:Landroid/graphics/drawable/Drawable;

    iput v2, p0, Lcom/uc/widget/tabbar/a;->b:I

    iput v2, p0, Lcom/uc/widget/tabbar/a;->c:I

    iput v2, p0, Lcom/uc/widget/tabbar/a;->d:I

    iput v1, p0, Lcom/uc/widget/tabbar/a;->e:F

    iput v1, p0, Lcom/uc/widget/tabbar/a;->f:F

    iput v1, p0, Lcom/uc/widget/tabbar/a;->g:F

    iput v1, p0, Lcom/uc/widget/tabbar/a;->h:F

    iput v1, p0, Lcom/uc/widget/tabbar/a;->i:F

    iput v1, p0, Lcom/uc/widget/tabbar/a;->j:F

    iput v1, p0, Lcom/uc/widget/tabbar/a;->k:F

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/uc/widget/tabbar/a;->n:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/uc/widget/tabbar/a;->a:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/uc/widget/tabbar/a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/widget/tabbar/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/uc/widget/tabbar/a;->b:I

    iget-object v0, p0, Lcom/uc/widget/tabbar/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/uc/widget/tabbar/a;->c:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/uc/widget/tabbar/a;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/uc/widget/tabbar/a;->d:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/uc/widget/tabbar/a;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/uc/widget/tabbar/a;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :cond_2
    iput v2, p0, Lcom/uc/widget/tabbar/a;->e:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/uc/widget/tabbar/a;->d:I

    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Lcom/uc/widget/tabbar/a;->m:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uc/widget/tabbar/a;->l:J

    iget v0, p0, Lcom/uc/widget/tabbar/a;->f:F

    iput v0, p0, Lcom/uc/widget/tabbar/a;->h:F

    iget v0, p0, Lcom/uc/widget/tabbar/a;->g:F

    iput v0, p0, Lcom/uc/widget/tabbar/a;->j:F

    iput v2, p0, Lcom/uc/widget/tabbar/a;->i:F

    iput v2, p0, Lcom/uc/widget/tabbar/a;->k:F

    goto :goto_0
.end method

.method public final a(F)V
    .locals 7

    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/uc/widget/tabbar/a;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/uc/widget/tabbar/a;->d:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/uc/widget/tabbar/a;->d:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/uc/widget/tabbar/a;->l:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/uc/widget/tabbar/a;->m:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    :cond_2
    iget v2, p0, Lcom/uc/widget/tabbar/a;->d:I

    if-eq v2, v6, :cond_3

    iput v5, p0, Lcom/uc/widget/tabbar/a;->g:F

    :cond_3
    iput v6, p0, Lcom/uc/widget/tabbar/a;->d:I

    iput-wide v0, p0, Lcom/uc/widget/tabbar/a;->l:J

    const/high16 v0, 0x43270000    # 167.0f

    iput v0, p0, Lcom/uc/widget/tabbar/a;->m:F

    iget v0, p0, Lcom/uc/widget/tabbar/a;->e:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/uc/widget/tabbar/a;->e:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v1, p1, v4

    if-lez v1, :cond_5

    iget v1, p0, Lcom/uc/widget/tabbar/a;->e:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_5

    neg-float v0, v0

    :cond_4
    :goto_1
    iget v1, p0, Lcom/uc/widget/tabbar/a;->f:F

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/uc/widget/tabbar/a;->h:F

    iput v1, p0, Lcom/uc/widget/tabbar/a;->f:F

    const/high16 v1, 0x3fc00000    # 1.5f

    iget v2, p0, Lcom/uc/widget/tabbar/a;->g:F

    const/high16 v3, 0x40e00000    # 7.0f

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/uc/widget/tabbar/a;->j:F

    iput v0, p0, Lcom/uc/widget/tabbar/a;->g:F

    iget v0, p0, Lcom/uc/widget/tabbar/a;->f:F

    iput v0, p0, Lcom/uc/widget/tabbar/a;->i:F

    iget v0, p0, Lcom/uc/widget/tabbar/a;->g:F

    iput v0, p0, Lcom/uc/widget/tabbar/a;->k:F

    goto :goto_0

    :cond_5
    cmpg-float v1, p1, v4

    if-gez v1, :cond_4

    iget v1, p0, Lcom/uc/widget/tabbar/a;->e:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4

    neg-float v0, v0

    goto :goto_1
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/uc/widget/tabbar/a;->c:I

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)Z
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/uc/widget/tabbar/a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/uc/widget/tabbar/a;->l:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    iget v2, p0, Lcom/uc/widget/tabbar/a;->m:F

    div-float/2addr v1, v2

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/uc/widget/tabbar/a;->n:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    iget v3, p0, Lcom/uc/widget/tabbar/a;->h:F

    iget v4, p0, Lcom/uc/widget/tabbar/a;->i:F

    iget v5, p0, Lcom/uc/widget/tabbar/a;->h:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/uc/widget/tabbar/a;->f:F

    iget v3, p0, Lcom/uc/widget/tabbar/a;->j:F

    iget v4, p0, Lcom/uc/widget/tabbar/a;->k:F

    iget v5, p0, Lcom/uc/widget/tabbar/a;->j:F

    sub-float/2addr v4, v5

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/uc/widget/tabbar/a;->g:F

    const v2, 0x3f7fbe77    # 0.999f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/uc/widget/tabbar/a;->d:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/uc/widget/tabbar/a;->a:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget v3, p0, Lcom/uc/widget/tabbar/a;->f:F

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget v1, p0, Lcom/uc/widget/tabbar/a;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/uc/widget/tabbar/a;->g:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/uc/widget/tabbar/a;->a:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/uc/widget/tabbar/a;->c:I

    invoke-virtual {v2, v0, v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/uc/widget/tabbar/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    iget v1, p0, Lcom/uc/widget/tabbar/a;->d:I

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :pswitch_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/uc/widget/tabbar/a;->d:I

    goto :goto_0

    :pswitch_2
    iput v0, p0, Lcom/uc/widget/tabbar/a;->d:I

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/uc/widget/tabbar/a;->d:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/uc/widget/tabbar/a;->d:I

    return-void
.end method

.method public final c()Z
    .locals 1

    iget v0, p0, Lcom/uc/widget/tabbar/a;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
