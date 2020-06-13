.class public Lcom/uc/widget/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Landroid/graphics/drawable/Drawable;

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:Z

.field protected k:I

.field protected l:I

.field protected m:I

.field protected n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Landroid/graphics/Paint;

.field private t:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(III)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/uc/widget/b;->c:I

    iput v1, p0, Lcom/uc/widget/b;->d:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/uc/widget/b;->e:I

    iput v2, p0, Lcom/uc/widget/b;->p:I

    iput v1, p0, Lcom/uc/widget/b;->q:I

    const v0, -0x643b1f

    iput v0, p0, Lcom/uc/widget/b;->r:I

    iput v1, p0, Lcom/uc/widget/b;->f:I

    iput v1, p0, Lcom/uc/widget/b;->g:I

    iput v2, p0, Lcom/uc/widget/b;->h:I

    iput v2, p0, Lcom/uc/widget/b;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/widget/b;->j:Z

    const/16 v0, 0xff

    iput v0, p0, Lcom/uc/widget/b;->k:I

    const/16 v0, 0x5a

    iput v0, p0, Lcom/uc/widget/b;->l:I

    iput v2, p0, Lcom/uc/widget/b;->m:I

    iput v2, p0, Lcom/uc/widget/b;->n:I

    iput p1, p0, Lcom/uc/widget/b;->o:I

    iput p2, p0, Lcom/uc/widget/b;->c:I

    iput p3, p0, Lcom/uc/widget/b;->d:I

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/uc/widget/b;->s:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/uc/widget/b;->s:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p0, Lcom/uc/widget/b;->s:Landroid/graphics/Paint;

    iget v1, p0, Lcom/uc/widget/b;->e:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/uc/widget/b;->s:Landroid/graphics/Paint;

    iget v1, p0, Lcom/uc/widget/b;->q:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/uc/widget/b;->s:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/uc/widget/b;->s:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/uc/widget/b;->o:I

    return v0
.end method

.method public final a(I)V
    .locals 1

    iput p1, p0, Lcom/uc/widget/b;->m:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/uc/widget/b;->n:I

    return-void
.end method

.method public a(Landroid/graphics/Canvas;II)V
    .locals 9

    const/4 v8, 0x0

    const/4 v1, 0x0

    iget v0, p0, Lcom/uc/widget/b;->h:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/uc/widget/b;->s:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/uc/widget/b;->d()V

    :cond_1
    iget-object v0, p0, Lcom/uc/widget/b;->s:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v2, v8, v8, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v6, p0, Lcom/uc/widget/b;->b:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/uc/widget/b;->j:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/uc/widget/b;->s:Landroid/graphics/Paint;

    iget v2, p0, Lcom/uc/widget/b;->k:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/uc/widget/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uc/widget/b;->b:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/uc/widget/b;->k:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    iget-object v0, p0, Lcom/uc/widget/b;->s:Landroid/graphics/Paint;

    iget v2, p0, Lcom/uc/widget/b;->q:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget-object v0, p0, Lcom/uc/widget/b;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/uc/widget/b;->b:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/uc/widget/b;->k:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-eqz v6, :cond_d

    iget v0, p0, Lcom/uc/widget/b;->g:I

    sub-int v0, p2, v0

    div-int/lit8 v2, v0, 0x2

    iget v0, p0, Lcom/uc/widget/b;->m:I

    iget-object v3, p0, Lcom/uc/widget/b;->a:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/uc/widget/b;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/uc/widget/b;->i:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    :cond_4
    iget v0, p0, Lcom/uc/widget/b;->f:I

    sub-int v0, p3, v0

    div-int/lit8 v0, v0, 0x2

    :cond_5
    int-to-float v3, v2

    int-to-float v4, v0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_2
    iget-object v3, p0, Lcom/uc/widget/b;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_c

    add-int/lit8 v4, v2, 0x4

    iget v3, p0, Lcom/uc/widget/b;->m:I

    add-int/lit8 v3, v3, 0x2

    int-to-float v5, v4

    int-to-float v7, v3

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Lcom/uc/widget/b;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_3
    iget-object v5, p0, Lcom/uc/widget/b;->a:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/uc/widget/b;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    iget v5, p0, Lcom/uc/widget/b;->i:I

    if-nez v5, :cond_8

    iget v5, p0, Lcom/uc/widget/b;->p:I

    sub-int v5, p2, v5

    div-int/lit8 v5, v5, 0x2

    if-gez v5, :cond_b

    :goto_4
    iget v5, p0, Lcom/uc/widget/b;->n:I

    sub-int v5, p3, v5

    if-nez v6, :cond_6

    int-to-float v5, p3

    iget-object v6, p0, Lcom/uc/widget/b;->s:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/uc/widget/b;->s:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    :cond_6
    iget-object v6, p0, Lcom/uc/widget/b;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_7

    sub-int/2addr v1, v4

    sub-int/2addr v5, v3

    :cond_7
    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-int v0, v5, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/uc/widget/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/uc/widget/b;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v8, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/uc/widget/b;->s:Landroid/graphics/Paint;

    iget v2, p0, Lcom/uc/widget/b;->l:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/uc/widget/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/uc/widget/b;->b:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/uc/widget/b;->l:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_a
    iget-object v0, p0, Lcom/uc/widget/b;->s:Landroid/graphics/Paint;

    iget v2, p0, Lcom/uc/widget/b;->r:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    :cond_b
    move v1, v5

    goto :goto_4

    :cond_c
    move v3, v1

    move v4, v1

    goto :goto_3

    :cond_d
    move v0, v1

    move v2, v1

    goto/16 :goto_2
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/uc/widget/b;->g:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/uc/widget/b;->g:I

    :cond_1
    iget v0, p0, Lcom/uc/widget/b;->f:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/uc/widget/b;->f:I

    :cond_2
    iput-object p1, p0, Lcom/uc/widget/b;->b:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/uc/widget/b;->b:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/uc/widget/b;->g:I

    iget v2, p0, Lcom/uc/widget/b;->f:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/widget/b;->s:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uc/widget/b;->d()V

    :cond_0
    iget-object v0, p0, Lcom/uc/widget/b;->s:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/uc/widget/b;->p:I

    iput-object p1, p0, Lcom/uc/widget/b;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uc/widget/b;->j:Z

    return-void
.end method

.method public final b()V
    .locals 4

    const/4 v3, 0x0

    iput v3, p0, Lcom/uc/widget/b;->g:I

    iput v3, p0, Lcom/uc/widget/b;->f:I

    iget-object v0, p0, Lcom/uc/widget/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/widget/b;->b:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/uc/widget/b;->g:I

    iget v2, p0, Lcom/uc/widget/b;->f:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 2

    iget v0, p0, Lcom/uc/widget/b;->e:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/uc/widget/b;->e:I

    iget-object v0, p0, Lcom/uc/widget/b;->s:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/uc/widget/b;->d()V

    :goto_0
    iget-object v0, p0, Lcom/uc/widget/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/widget/b;->s:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/uc/widget/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/uc/widget/b;->p:I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/uc/widget/b;->s:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/uc/widget/b;->t:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/uc/widget/b;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/uc/widget/b;->h:I

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uc/widget/b;->j:Z

    return v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/uc/widget/b;->q:I

    return-void
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/uc/widget/b;->r:I

    return-void
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lcom/uc/widget/b;->i:I

    return-void
.end method
