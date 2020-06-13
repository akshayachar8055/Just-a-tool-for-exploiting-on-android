.class public Lcom/uc/browser/homepage/view/BoxLayout;
.super Landroid/view/ViewGroup;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/uc/browser/homepage/view/g;

.field private k:Z

.field private l:Lcom/uc/browser/homepage/q;

.field private m:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->c:I

    iput-boolean v2, p0, Lcom/uc/browser/homepage/view/BoxLayout;->d:Z

    iput-boolean v2, p0, Lcom/uc/browser/homepage/view/BoxLayout;->e:Z

    iput-boolean v2, p0, Lcom/uc/browser/homepage/view/BoxLayout;->f:Z

    iput v1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->g:I

    iput v1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->h:I

    iput v1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->i:I

    iput-boolean v2, p0, Lcom/uc/browser/homepage/view/BoxLayout;->k:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->l:Lcom/uc/browser/homepage/q;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/uc/browser/homepage/view/BoxLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v2, v0, v2, v0}, Lcom/uc/browser/homepage/view/BoxLayout;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/uc/browser/homepage/view/BoxLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->g:I

    new-instance v0, Lcom/uc/browser/homepage/view/g;

    invoke-direct {v0, p0, p1}, Lcom/uc/browser/homepage/view/g;-><init>(Lcom/uc/browser/homepage/view/BoxLayout;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->j:Lcom/uc/browser/homepage/view/g;

    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->j:Lcom/uc/browser/homepage/view/g;

    invoke-virtual {v0}, Lcom/uc/browser/homepage/view/g;->a()V

    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->j:Lcom/uc/browser/homepage/view/g;

    new-instance v1, Lcom/uc/browser/homepage/view/f;

    invoke-direct {v1, p0}, Lcom/uc/browser/homepage/view/f;-><init>(Lcom/uc/browser/homepage/view/BoxLayout;)V

    invoke-virtual {v0, v1}, Lcom/uc/browser/homepage/view/g;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/uc/browser/homepage/view/BoxLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->d:Z

    return v0
.end method

.method private b()Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->e:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->f:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/uc/browser/homepage/view/BoxLayout;->c:I

    invoke-direct {p0}, Lcom/uc/browser/homepage/view/BoxLayout;->c()I

    move-result v3

    mul-int/2addr v2, v3

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private c()I
    .locals 2

    iget v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->c:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->d:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->d:Z

    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->j:Lcom/uc/browser/homepage/view/g;

    invoke-virtual {v0}, Lcom/uc/browser/homepage/view/g;->a()V

    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->l:Lcom/uc/browser/homepage/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->l:Lcom/uc/browser/homepage/q;

    iget-boolean v1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->d:Z

    invoke-interface {v0, v1}, Lcom/uc/browser/homepage/q;->a(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/uc/browser/homepage/view/BoxLayout;->requestLayout()V

    invoke-virtual {p0}, Lcom/uc/browser/homepage/view/BoxLayout;->invalidate()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;I)V
    .locals 1

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p2, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/uc/browser/homepage/view/BoxLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcom/uc/browser/homepage/view/BoxLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/uc/browser/homepage/view/BoxLayout;->b(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uc/browser/homepage/view/BoxLayout;->requestLayout()V

    invoke-virtual {p0}, Lcom/uc/browser/homepage/view/BoxLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final b(Landroid/view/View;Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-le v0, v1, :cond_1

    iget-object v2, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uc/browser/homepage/view/BoxLayout;->requestLayout()V

    invoke-virtual {p0}, Lcom/uc/browser/homepage/view/BoxLayout;->invalidate()V

    :cond_2
    return-void
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    const/4 v3, 0x0

    iget v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->a:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->c:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->j:Lcom/uc/browser/homepage/view/g;

    invoke-virtual {p0, v0}, Lcom/uc/browser/homepage/view/BoxLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->h:I

    div-int/lit8 v5, v0, 0x2

    invoke-virtual {p0}, Lcom/uc/browser/homepage/view/BoxLayout;->getPaddingTop()I

    move-result v6

    move v2, v3

    :goto_2
    if-ge v2, v4, :cond_0

    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->c:I

    div-int v1, v2, v1

    iget-boolean v7, p0, Lcom/uc/browser/homepage/view/BoxLayout;->d:Z

    if-nez v7, :cond_4

    invoke-direct {p0}, Lcom/uc/browser/homepage/view/BoxLayout;->c()I

    move-result v7

    iget v8, p0, Lcom/uc/browser/homepage/view/BoxLayout;->c:I

    mul-int/2addr v7, v8

    add-int/lit8 v8, v7, -0x1

    if-ne v2, v8, :cond_3

    invoke-direct {p0}, Lcom/uc/browser/homepage/view/BoxLayout;->b()Z

    move-result v8

    if-eqz v8, :cond_3

    if-le v4, v7, :cond_3

    iget v1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->c:I

    rem-int v1, v2, v1

    iget v4, p0, Lcom/uc/browser/homepage/view/BoxLayout;->a:I

    iget v7, p0, Lcom/uc/browser/homepage/view/BoxLayout;->h:I

    add-int/2addr v4, v7

    mul-int/2addr v1, v4

    add-int/2addr v1, v5

    iget v4, p0, Lcom/uc/browser/homepage/view/BoxLayout;->c:I

    div-int v4, v2, v4

    iget v5, p0, Lcom/uc/browser/homepage/view/BoxLayout;->b:I

    iget v7, p0, Lcom/uc/browser/homepage/view/BoxLayout;->g:I

    add-int/2addr v5, v7

    mul-int/2addr v4, v5

    add-int/2addr v4, v6

    iget-object v5, p0, Lcom/uc/browser/homepage/view/BoxLayout;->j:Lcom/uc/browser/homepage/view/g;

    invoke-virtual {p0, v5}, Lcom/uc/browser/homepage/view/BoxLayout;->removeView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/uc/browser/homepage/view/BoxLayout;->j:Lcom/uc/browser/homepage/view/g;

    invoke-virtual {p0}, Lcom/uc/browser/homepage/view/BoxLayout;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {p0, v5, v2, v6}, Lcom/uc/browser/homepage/view/BoxLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    iget-object v2, p0, Lcom/uc/browser/homepage/view/BoxLayout;->j:Lcom/uc/browser/homepage/view/g;

    iget v5, p0, Lcom/uc/browser/homepage/view/BoxLayout;->a:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/uc/browser/homepage/view/BoxLayout;->b:I

    add-int/2addr v6, v4

    invoke-virtual {v2, v1, v4, v5, v6}, Lcom/uc/browser/homepage/view/g;->layout(IIII)V

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/uc/browser/homepage/view/BoxLayout;->c()I

    move-result v7

    if-gt v1, v7, :cond_0

    :cond_4
    iget v1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->c:I

    rem-int v1, v2, v1

    iget v7, p0, Lcom/uc/browser/homepage/view/BoxLayout;->a:I

    iget v8, p0, Lcom/uc/browser/homepage/view/BoxLayout;->h:I

    add-int/2addr v7, v8

    mul-int/2addr v1, v7

    add-int/2addr v1, v5

    iget v7, p0, Lcom/uc/browser/homepage/view/BoxLayout;->c:I

    div-int v7, v2, v7

    iget v8, p0, Lcom/uc/browser/homepage/view/BoxLayout;->b:I

    iget v9, p0, Lcom/uc/browser/homepage/view/BoxLayout;->g:I

    add-int/2addr v8, v9

    mul-int/2addr v7, v8

    add-int/2addr v7, v6

    iget v8, p0, Lcom/uc/browser/homepage/view/BoxLayout;->a:I

    add-int/2addr v8, v1

    iget v9, p0, Lcom/uc/browser/homepage/view/BoxLayout;->b:I

    add-int/2addr v9, v7

    invoke-virtual {v0, v1, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v0, v4, -0x1

    if-ne v2, v0, :cond_5

    invoke-direct {p0}, Lcom/uc/browser/homepage/view/BoxLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->c:I

    rem-int v0, v4, v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->c:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->a:I

    iget v7, p0, Lcom/uc/browser/homepage/view/BoxLayout;->h:I

    add-int/2addr v1, v7

    mul-int/2addr v0, v1

    add-int/2addr v0, v5

    iget v1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->c:I

    div-int v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    iget v7, p0, Lcom/uc/browser/homepage/view/BoxLayout;->b:I

    iget v8, p0, Lcom/uc/browser/homepage/view/BoxLayout;->g:I

    add-int/2addr v7, v8

    mul-int/2addr v1, v7

    add-int/2addr v1, v6

    :goto_3
    iget-object v7, p0, Lcom/uc/browser/homepage/view/BoxLayout;->j:Lcom/uc/browser/homepage/view/g;

    invoke-virtual {p0, v7}, Lcom/uc/browser/homepage/view/BoxLayout;->removeView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/uc/browser/homepage/view/BoxLayout;->j:Lcom/uc/browser/homepage/view/g;

    invoke-virtual {p0}, Lcom/uc/browser/homepage/view/BoxLayout;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {p0, v7, v2, v8}, Lcom/uc/browser/homepage/view/BoxLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    iget-object v7, p0, Lcom/uc/browser/homepage/view/BoxLayout;->j:Lcom/uc/browser/homepage/view/g;

    iget v8, p0, Lcom/uc/browser/homepage/view/BoxLayout;->a:I

    add-int/2addr v8, v0

    iget v9, p0, Lcom/uc/browser/homepage/view/BoxLayout;->b:I

    add-int/2addr v9, v1

    invoke-virtual {v7, v0, v1, v8, v9}, Lcom/uc/browser/homepage/view/g;->layout(IIII)V

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    :cond_6
    iget v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->c:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->a:I

    iget v7, p0, Lcom/uc/browser/homepage/view/BoxLayout;->h:I

    add-int/2addr v1, v7

    mul-int/2addr v0, v1

    add-int/2addr v0, v5

    iget v1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->c:I

    div-int v1, v2, v1

    iget v7, p0, Lcom/uc/browser/homepage/view/BoxLayout;->b:I

    iget v8, p0, Lcom/uc/browser/homepage/view/BoxLayout;->g:I

    add-int/2addr v7, v8

    mul-int/2addr v1, v7

    add-int/2addr v1, v6

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 8

    const/4 v1, 0x0

    iget v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->a:I

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    iget v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->a:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->b:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v1

    :goto_1
    if-ge v2, v6, :cond_2

    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v7, p0, Lcom/uc/browser/homepage/view/BoxLayout;->b:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->b:I

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->j:Lcom/uc/browser/homepage/view/g;

    invoke-virtual {v0, v4, v5}, Lcom/uc/browser/homepage/view/g;->measure(II)V

    const/4 v0, 0x6

    iget v2, p0, Lcom/uc/browser/homepage/view/BoxLayout;->a:I

    iget v4, p0, Lcom/uc/browser/homepage/view/BoxLayout;->i:I

    add-int/2addr v2, v4

    div-int v2, v3, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->c:I

    iget v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->c:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    iget v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->c:I

    iget v2, p0, Lcom/uc/browser/homepage/view/BoxLayout;->a:I

    mul-int/2addr v0, v2

    sub-int v0, v3, v0

    iget v2, p0, Lcom/uc/browser/homepage/view/BoxLayout;->c:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->h:I

    :cond_3
    if-lez v6, :cond_6

    iget v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->c:I

    if-lez v0, :cond_6

    add-int/lit8 v0, v6, -0x1

    iget v1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->c:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->d:Z

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/uc/browser/homepage/view/BoxLayout;->c()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_4
    :goto_2
    iget v1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->b:I

    mul-int/2addr v1, v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/uc/browser/homepage/view/BoxLayout;->g:I

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/uc/browser/homepage/view/BoxLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/uc/browser/homepage/view/BoxLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    :goto_3
    invoke-virtual {p0, v3, v0}, Lcom/uc/browser/homepage/view/BoxLayout;->setMeasuredDimension(II)V

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/uc/browser/homepage/view/BoxLayout;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->c:I

    rem-int v1, v6, v1

    if-nez v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method public removeAllViews()V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setBoxSize(II)V
    .locals 0

    iput p1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->a:I

    iput p2, p0, Lcom/uc/browser/homepage/view/BoxLayout;->b:I

    return-void
.end method

.method public setBoxWidth(I)V
    .locals 0

    iput p1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->a:I

    return-void
.end method

.method public setEditMode(Z)V
    .locals 3

    const/4 v2, 0x0

    iput-boolean p1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->e:Z

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->k:Z

    iput-boolean v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->d:Z

    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->j:Lcom/uc/browser/homepage/view/g;

    invoke-virtual {v0, v2}, Lcom/uc/browser/homepage/view/g;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/uc/browser/homepage/view/BoxLayout;->requestLayout()V

    invoke-virtual {p0}, Lcom/uc/browser/homepage/view/BoxLayout;->invalidate()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->d:Z

    iput-boolean v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->d:Z

    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->j:Lcom/uc/browser/homepage/view/g;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/uc/browser/homepage/view/g;->setVisibility(I)V

    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->j:Lcom/uc/browser/homepage/view/g;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/uc/browser/homepage/view/g;->layout(IIII)V

    goto :goto_0
.end method

.method public setHMinSpace(I)V
    .locals 0

    iput p1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->i:I

    return-void
.end method

.method public setIsInFolder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->f:Z

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setSpeedDialExpand(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->d:Z

    iget-object v0, p0, Lcom/uc/browser/homepage/view/BoxLayout;->j:Lcom/uc/browser/homepage/view/g;

    invoke-virtual {v0}, Lcom/uc/browser/homepage/view/g;->a()V

    invoke-virtual {p0}, Lcom/uc/browser/homepage/view/BoxLayout;->requestLayout()V

    invoke-virtual {p0}, Lcom/uc/browser/homepage/view/BoxLayout;->invalidate()V

    return-void
.end method

.method public setVSpace(I)V
    .locals 0

    iput p1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->g:I

    return-void
.end method

.method public setWidgetCenterCallBack(Lcom/uc/browser/homepage/q;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/homepage/view/BoxLayout;->l:Lcom/uc/browser/homepage/q;

    return-void
.end method
