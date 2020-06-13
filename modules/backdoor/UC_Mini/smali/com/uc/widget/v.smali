.class public Lcom/uc/widget/v;
.super Lcom/uc/widget/y;


# instance fields
.field private B:Ljava/util/ArrayList;

.field private C:Ljava/util/ArrayList;

.field private D:Ljava/util/ArrayList;

.field private E:[Landroid/graphics/drawable/Drawable;

.field private F:[I

.field private G:Lcom/uc/widget/w;

.field protected d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/uc/widget/y;-><init>()V

    iput-object v0, p0, Lcom/uc/widget/v;->C:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/uc/widget/v;->D:Ljava/util/ArrayList;

    return-void
.end method

.method private a()I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/uc/widget/v;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/uc/widget/v;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/uc/widget/x;

    if-nez v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/uc/widget/v;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1
.end method

.method private k(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_1

    move v1, v2

    :cond_0
    iget-object v0, p0, Lcom/uc/widget/v;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_2

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/uc/widget/v;->a:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move v3, v2

    move v1, v2

    :goto_1
    if-ge v3, p1, :cond_0

    iget-object v0, p0, Lcom/uc/widget/v;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/uc/widget/v;->B:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uc/widget/v;->k()V

    invoke-virtual {p0}, Lcom/uc/widget/v;->g()I

    move-result v0

    iget v1, p0, Lcom/uc/widget/v;->x:I

    add-int/2addr v1, v0

    iget v3, p0, Lcom/uc/widget/v;->p:I

    if-ge v1, v3, :cond_3

    iget v1, p0, Lcom/uc/widget/v;->p:I

    if-ge v0, v1, :cond_4

    iget v0, p0, Lcom/uc/widget/v;->x:I

    neg-int v0, v0

    invoke-virtual {p0, v5, v0, v2}, Lcom/uc/widget/v;->a(FIZ)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget v1, p0, Lcom/uc/widget/v;->p:I

    sub-int v0, v1, v0

    iget v1, p0, Lcom/uc/widget/v;->x:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v5, v0, v2}, Lcom/uc/widget/v;->a(FIZ)V

    goto :goto_2
.end method

.method private l(I)Z
    .locals 1

    iget-object v0, p0, Lcom/uc/widget/v;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/uc/widget/x;

    return v0
.end method

.method private m(I)[I
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v4, v0, [I

    add-int/lit8 v0, p1, 0x1

    move v1, v2

    move v3, v0

    :goto_0
    iget-object v0, p0, Lcom/uc/widget/v;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/uc/widget/v;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v3, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/uc/widget/v;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    aput v1, v4, v2

    const/4 v0, 0x1

    add-int/lit8 v1, v3, -0x1

    aput v1, v4, v0

    :cond_1
    return-object v4
.end method


# virtual methods
.method public final a(Lcom/uc/widget/w;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/widget/v;->G:Lcom/uc/widget/w;

    return-void
.end method

.method public a(Lcom/uc/widget/x;)V
    .locals 11

    const/4 v10, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/uc/widget/v;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_7

    if-nez v6, :cond_1

    move v1, v2

    :cond_0
    invoke-virtual {p1}, Lcom/uc/widget/x;->b()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {p1}, Lcom/uc/widget/x;->d()I

    move v3, v2

    move v5, v2

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v0, p0, Lcom/uc/widget/v;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/q;

    invoke-virtual {v0}, Lcom/uc/widget/q;->d()I

    move-result v0

    add-int v4, v5, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v5, v4

    goto :goto_0

    :cond_1
    move v3, v2

    move v1, v2

    :goto_1
    if-ge v3, v6, :cond_0

    iget-object v0, p0, Lcom/uc/widget/v;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v0

    move v3, v0

    :goto_2
    iget-object v0, p0, Lcom/uc/widget/v;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v4, v3, 0x1

    if-eq v0, v4, :cond_4

    add-int/lit8 v0, v3, -0x1

    move v4, v0

    :goto_3
    if-ltz v4, :cond_4

    invoke-virtual {v7, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/q;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p0, v0, v8}, Lcom/uc/widget/v;->a(Lcom/uc/widget/q;I)V

    invoke-virtual {v7, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/q;

    invoke-virtual {v0}, Lcom/uc/widget/q;->d()I

    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_3

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/uc/widget/v;->B:Ljava/util/ArrayList;

    add-int/lit8 v1, v3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/4 v3, 0x0

    invoke-direct {v1, v9, v9, v3, v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    const-wide/16 v3, 0x14

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/uc/widget/v;->C:Ljava/util/ArrayList;

    invoke-virtual {v1, v6, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->start()V

    iget v0, p0, Lcom/uc/widget/v;->x:I

    add-int/2addr v0, v5

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lcom/uc/widget/v;->g()I

    move-result v0

    sub-int v1, v0, v5

    invoke-virtual {p0}, Lcom/uc/widget/v;->d()I

    move-result v2

    if-lt v1, v2, :cond_8

    iget v0, p0, Lcom/uc/widget/v;->x:I

    add-int/2addr v0, v5

    neg-int v2, v0

    :cond_5
    :goto_4
    if-eqz v2, :cond_6

    invoke-virtual {p0, v2}, Lcom/uc/widget/v;->i(I)V

    invoke-virtual {p0}, Lcom/uc/widget/v;->n()V

    :cond_6
    iput-boolean v10, p1, Lcom/uc/widget/x;->a:Z

    :cond_7
    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/uc/widget/v;->d()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/uc/widget/v;->x:I

    add-int/2addr v0, v1

    neg-int v2, v0

    goto :goto_4
.end method

.method public a(Ljava/util/Vector;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/uc/widget/y;->a(Ljava/util/Vector;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uc/widget/v;->d:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/uc/widget/v;->B:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/uc/widget/v;->C:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/uc/widget/v;->D:Ljava/util/ArrayList;

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/uc/widget/v;->B:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/uc/widget/v;->C:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/uc/widget/v;->D:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a([Landroid/graphics/drawable/Drawable;[I)V
    .locals 0

    iput-object p1, p0, Lcom/uc/widget/v;->E:[Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/uc/widget/v;->F:[I

    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v2, 0x3

    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v0, v1}, Lcom/uc/widget/v;->a([Landroid/graphics/drawable/Drawable;[I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public final b(Lcom/uc/widget/q;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    instance-of v0, p1, Lcom/uc/widget/x;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/uc/widget/v;->a()I

    move-result v1

    iget-object v0, p0, Lcom/uc/widget/v;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/uc/widget/v;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/uc/widget/v;->a:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/uc/widget/v;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_0

    :goto_1
    invoke-direct {p0}, Lcom/uc/widget/v;->a()I

    move-result v1

    invoke-super {p0, p1, v0}, Lcom/uc/widget/y;->a(Lcom/uc/widget/q;I)V

    iget-object v0, p0, Lcom/uc/widget/v;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/uc/widget/v;->B:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/uc/widget/v;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/uc/widget/v;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_2
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/uc/widget/v;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-super {p0, p1}, Lcom/uc/widget/y;->b(Lcom/uc/widget/q;)V

    iget-object v0, p0, Lcom/uc/widget/v;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uc/widget/v;->B:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uc/widget/v;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uc/widget/v;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public b(Lcom/uc/widget/x;)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/uc/widget/v;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/4 v3, 0x0

    invoke-direct {v2, v4, v4, v4, v3}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    const-wide/16 v3, 0x14

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/uc/widget/v;->C:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->start()V

    invoke-virtual {p0}, Lcom/uc/widget/v;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/uc/widget/x;->a:Z

    :cond_0
    return-void
.end method

.method public final c(Lcom/uc/widget/x;)V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/uc/widget/v;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_4

    if-nez v4, :cond_2

    move v1, v2

    :cond_0
    invoke-virtual {p1}, Lcom/uc/widget/x;->b()Ljava/util/Vector;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    :cond_1
    iget-object v0, p0, Lcom/uc/widget/v;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v3, v2, 0x1

    if-eq v0, v3, :cond_3

    add-int/lit8 v0, v2, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_3

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/q;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v0, v6}, Lcom/uc/widget/v;->a(Lcom/uc/widget/q;I)V

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    move v1, v2

    :goto_1
    if-ge v3, v4, :cond_0

    iget-object v0, p0, Lcom/uc/widget/v;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/uc/widget/v;->B:Ljava/util/ArrayList;

    add-int/lit8 v1, v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/uc/widget/x;->a:Z

    :cond_4
    return-void
.end method

.method public final c(I)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/uc/widget/v;->a:Ljava/util/Vector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/uc/widget/v;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/uc/widget/v;->a:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/uc/widget/x;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/uc/widget/v;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/x;

    iget-boolean v2, v0, Lcom/uc/widget/x;->a:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/uc/widget/v;->b(Lcom/uc/widget/x;)V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/uc/widget/v;->a(Lcom/uc/widget/x;)V

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/uc/widget/v;->h(I)V

    iget-object v2, p0, Lcom/uc/widget/v;->G:Lcom/uc/widget/w;

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/uc/widget/v;->m(I)[I

    iget-object v2, p0, Lcom/uc/widget/v;->G:Lcom/uc/widget/w;

    iget-object v0, p0, Lcom/uc/widget/v;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/q;

    invoke-interface {v2, v0}, Lcom/uc/widget/w;->a(Lcom/uc/widget/q;)V

    move v0, v1

    goto :goto_0
.end method

.method protected final d(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/uc/widget/v;->r:I

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/uc/widget/v;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/uc/widget/v;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v13

    move-object/from16 v0, p0

    iget v6, v0, Lcom/uc/widget/v;->x:I

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v8, v1

    move-object v9, v2

    move v10, v3

    move v11, v4

    move v12, v6

    move v4, v5

    :goto_0
    if-ge v8, v13, :cond_12

    move-object/from16 v0, p0

    iget v1, v0, Lcom/uc/widget/v;->p:I

    if-gt v12, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/uc/widget/v;->a:Ljava/util/Vector;

    invoke-virtual {v1, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uc/widget/q;

    invoke-virtual {v1}, Lcom/uc/widget/q;->d()I

    move-result v5

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uc/widget/v;->D:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_16

    if-lez v11, :cond_16

    const/16 v2, 0x9

    new-array v6, v2, [F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/widget/v;->D:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v2, 0x4

    aget v3, v6, v2

    int-to-float v2, v5

    const/4 v5, 0x4

    aget v5, v6, v5

    mul-float/2addr v2, v5

    float-to-int v5, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/widget/v;->D:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    move v6, v3

    move v7, v5

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/widget/v;->E:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_15

    if-ge v8, v13, :cond_15

    const/4 v2, 0x1

    if-ne v11, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/widget/v;->E:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    aget-object v9, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/widget/v;->F:[I

    const/4 v3, 0x1

    aget v10, v2, v3

    :goto_2
    if-lez v8, :cond_15

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/uc/widget/v;->l(I)Z

    move-result v2

    if-eqz v2, :cond_15

    add-int/lit8 v2, v8, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/uc/widget/v;->l(I)Z

    move-result v2

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/widget/v;->E:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    aget-object v9, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/widget/v;->F:[I

    const/4 v3, 0x2

    aget v10, v2, v3

    move-object v5, v9

    move v3, v10

    :goto_3
    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/uc/widget/v;->y:I

    add-int/2addr v2, v7

    move v9, v2

    :goto_4
    add-int v2, v12, v9

    if-gtz v2, :cond_7

    add-int v6, v12, v9

    add-int/lit8 v2, v11, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/uc/widget/v;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v2, v1, :cond_19

    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    move v2, v1

    move-object v1, v5

    move v5, v6

    :goto_5
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move-object v9, v1

    move v10, v3

    move v11, v2

    move v12, v5

    goto/16 :goto_0

    :cond_0
    if-nez v11, :cond_4

    if-lez v8, :cond_1

    add-int/lit8 v2, v8, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/uc/widget/v;->l(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/uc/widget/v;->l(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/widget/v;->E:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aget-object v9, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/widget/v;->F:[I

    const/4 v3, 0x0

    aget v10, v2, v3

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/widget/v;->E:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    aget-object v9, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/widget/v;->F:[I

    const/4 v3, 0x2

    aget v10, v2, v3

    goto/16 :goto_2

    :cond_4
    const/4 v2, 0x1

    if-le v11, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/widget/v;->B:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v11, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/widget/v;->E:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    aget-object v9, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/widget/v;->F:[I

    const/4 v3, 0x2

    aget v10, v2, v3

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/widget/v;->E:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aget-object v9, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/widget/v;->F:[I

    const/4 v3, 0x0

    aget v10, v2, v3

    goto/16 :goto_2

    :cond_6
    move v9, v7

    goto/16 :goto_4

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/4 v2, 0x0

    int-to-float v10, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/4 v2, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/uc/widget/v;->o:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10, v14, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    const/4 v2, 0x0

    if-gtz v11, :cond_8

    instance-of v10, v1, Lcom/uc/widget/x;

    if-nez v10, :cond_9

    :cond_8
    const/4 v2, 0x1

    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/uc/widget/v;->w:[Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/uc/widget/v;->w:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, v2

    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/uc/widget/v;->w:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, v2

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uc/widget/v;->o:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v10, v14, v15, v0, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/uc/widget/v;->w:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, v2

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_a
    move-object/from16 v0, p0

    iget v10, v0, Lcom/uc/widget/v;->z:I

    if-ne v8, v10, :cond_11

    const/4 v2, 0x3

    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/uc/widget/v;->w:[Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_c

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/uc/widget/v;->w:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, v2

    if-eqz v10, :cond_c

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/uc/widget/v;->w:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, v2

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uc/widget/v;->o:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v10, v14, v15, v0, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/uc/widget/v;->w:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v10, v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_c
    float-to-double v14, v6

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v14, v16

    if-lez v2, :cond_d

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/uc/widget/q;->a(Landroid/graphics/Canvas;)V

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v1, 0x0

    if-eqz v5, :cond_f

    if-eqz v8, :cond_e

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/uc/widget/v;->y:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v10, v0, Lcom/uc/widget/v;->o:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/uc/widget/v;->y:I

    sub-int v14, v3, v14

    invoke-virtual {v5, v2, v6, v10, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_e
    add-int/lit8 v2, v13, -0x1

    if-ne v8, v2, :cond_f

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/uc/widget/v;->l(I)Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/uc/widget/v;->y:I

    sub-int v2, v7, v2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/uc/widget/v;->o:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/uc/widget/v;->y:I

    sub-int v10, v7, v10

    invoke-virtual {v5, v1, v2, v6, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v1, 0x1

    :cond_f
    if-nez v1, :cond_18

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/uc/widget/v;->l(I)Z

    move-result v1

    if-eqz v1, :cond_18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/uc/widget/v;->E:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    aget-object v2, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/uc/widget/v;->F:[I

    const/4 v3, 0x2

    aget v1, v1, v3

    if-eqz v2, :cond_10

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/uc/widget/v;->y:I

    sub-int v5, v7, v5

    sub-int/2addr v5, v1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/uc/widget/v;->o:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/uc/widget/v;->y:I

    sub-int/2addr v7, v10

    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_10
    move v2, v1

    :goto_7
    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v3, v11, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/uc/widget/v;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v3, v1, :cond_17

    add-int/lit8 v3, v4, 0x1

    const/4 v1, 0x0

    :goto_8
    add-int v4, v12, v9

    move-object/from16 v18, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move-object/from16 v1, v18

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget v10, v0, Lcom/uc/widget/v;->b:I

    add-int/lit8 v10, v10, -0x1

    if-ne v8, v10, :cond_b

    const/4 v2, 0x2

    goto/16 :goto_6

    :cond_12
    invoke-virtual/range {p0 .. p1}, Lcom/uc/widget/v;->e(Landroid/graphics/Canvas;)V

    :cond_13
    :goto_9
    return-void

    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/uc/widget/v;->A:Lcom/uc/widget/q;

    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/uc/widget/v;->A:Lcom/uc/widget/q;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/uc/widget/q;->a(Landroid/graphics/Canvas;)V

    goto :goto_9

    :cond_15
    move-object v5, v9

    move v3, v10

    goto/16 :goto_3

    :cond_16
    move v6, v2

    move v7, v5

    goto/16 :goto_1

    :cond_17
    move v1, v3

    move v3, v4

    goto :goto_8

    :cond_18
    move v2, v3

    goto :goto_7

    :cond_19
    move-object v1, v5

    move v5, v6

    goto/16 :goto_5
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/uc/widget/v;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/uc/widget/v;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/uc/widget/v;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/uc/widget/v;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Lcom/uc/widget/y;->f()V

    return-void
.end method

.method public final f(I)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/uc/widget/v;->G:Lcom/uc/widget/w;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/uc/widget/v;->m(I)[I

    move-result-object v2

    iget-object v3, p0, Lcom/uc/widget/v;->G:Lcom/uc/widget/w;

    iget-object v0, p0, Lcom/uc/widget/v;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/q;

    aget v1, v2, v1

    invoke-interface {v3, v0, v1}, Lcom/uc/widget/w;->a(Lcom/uc/widget/q;I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected final l()Z
    .locals 10

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/uc/widget/v;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/uc/widget/v;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v0

    :goto_0
    move v6, v3

    move v5, v3

    :goto_1
    if-ge v6, v2, :cond_4

    iget-object v0, p0, Lcom/uc/widget/v;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/uc/widget/v;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uc/widget/v;->D:Ljava/util/ArrayList;

    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    invoke-virtual {v0, v6, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/uc/widget/v;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v1, p0, Lcom/uc/widget/v;->D:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Transformation;

    invoke-virtual {v0, v7, v8, v1}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    :goto_2
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v5, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/uc/widget/v;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/x;

    iget-boolean v0, v0, Lcom/uc/widget/x;->a:Z

    if-nez v0, :cond_2

    invoke-direct {p0, v6}, Lcom/uc/widget/v;->k(I)V

    :cond_2
    iget-object v0, p0, Lcom/uc/widget/v;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v6, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/uc/widget/v;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v6, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move v0, v5

    goto :goto_2

    :cond_4
    invoke-super {p0}, Lcom/uc/widget/y;->l()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    move v3, v4

    :cond_6
    return v3

    :cond_7
    move v2, v3

    goto :goto_0
.end method
