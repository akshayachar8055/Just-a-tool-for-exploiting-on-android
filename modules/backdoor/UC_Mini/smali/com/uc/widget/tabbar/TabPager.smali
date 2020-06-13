.class public Lcom/uc/widget/tabbar/TabPager;
.super Landroid/view/ViewGroup;


# static fields
.field private static final F:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Ljava/util/List;

.field private B:Landroid/view/View;

.field private C:[I

.field private D:Z

.field private E:Z

.field private G:Lcom/uc/widget/tabbar/f;

.field private a:Landroid/widget/Scroller;

.field private b:Lcom/uc/widget/tabbar/a;

.field private c:Lcom/uc/widget/tabbar/a;

.field private d:Lcom/uc/widget/tabbar/g;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:J

.field private r:F

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/uc/widget/tabbar/d;

    invoke-direct {v0}, Lcom/uc/widget/tabbar/d;-><init>()V

    sput-object v0, Lcom/uc/widget/tabbar/TabPager;->F:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/uc/widget/tabbar/TabPager;->F:Landroid/view/animation/Interpolator;

    invoke-direct {p0, p1, v0}, Lcom/uc/widget/tabbar/TabPager;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/uc/widget/tabbar/TabPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/uc/widget/tabbar/TabPager;->e:I

    iput v0, p0, Lcom/uc/widget/tabbar/TabPager;->f:I

    iput v1, p0, Lcom/uc/widget/tabbar/TabPager;->g:I

    iput v2, p0, Lcom/uc/widget/tabbar/TabPager;->h:I

    iput v1, p0, Lcom/uc/widget/tabbar/TabPager;->j:I

    iput v2, p0, Lcom/uc/widget/tabbar/TabPager;->k:I

    const/16 v0, 0x1c2

    iput v0, p0, Lcom/uc/widget/tabbar/TabPager;->l:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/uc/widget/tabbar/TabPager;->r:F

    iput-boolean v1, p0, Lcom/uc/widget/tabbar/TabPager;->s:Z

    iput-boolean v2, p0, Lcom/uc/widget/tabbar/TabPager;->t:Z

    iput-boolean v2, p0, Lcom/uc/widget/tabbar/TabPager;->u:Z

    iput-boolean v1, p0, Lcom/uc/widget/tabbar/TabPager;->v:Z

    iput-boolean v1, p0, Lcom/uc/widget/tabbar/TabPager;->w:Z

    iput-boolean v1, p0, Lcom/uc/widget/tabbar/TabPager;->x:Z

    iput-boolean v1, p0, Lcom/uc/widget/tabbar/TabPager;->y:Z

    iput v1, p0, Lcom/uc/widget/tabbar/TabPager;->z:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/uc/widget/tabbar/TabPager;->C:[I

    iput-boolean v1, p0, Lcom/uc/widget/tabbar/TabPager;->D:Z

    iput-boolean v2, p0, Lcom/uc/widget/tabbar/TabPager;->E:Z

    sget-object v0, Lcom/uc/widget/tabbar/TabPager;->F:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v0}, Lcom/uc/widget/tabbar/TabPager;->a(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 3

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/uc/widget/tabbar/TabPager;->e:I

    iput v0, p0, Lcom/uc/widget/tabbar/TabPager;->f:I

    iput v1, p0, Lcom/uc/widget/tabbar/TabPager;->g:I

    iput v2, p0, Lcom/uc/widget/tabbar/TabPager;->h:I

    iput v1, p0, Lcom/uc/widget/tabbar/TabPager;->j:I

    iput v2, p0, Lcom/uc/widget/tabbar/TabPager;->k:I

    const/16 v0, 0x1c2

    iput v0, p0, Lcom/uc/widget/tabbar/TabPager;->l:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/uc/widget/tabbar/TabPager;->r:F

    iput-boolean v1, p0, Lcom/uc/widget/tabbar/TabPager;->s:Z

    iput-boolean v2, p0, Lcom/uc/widget/tabbar/TabPager;->t:Z

    iput-boolean v2, p0, Lcom/uc/widget/tabbar/TabPager;->u:Z

    iput-boolean v1, p0, Lcom/uc/widget/tabbar/TabPager;->v:Z

    iput-boolean v1, p0, Lcom/uc/widget/tabbar/TabPager;->w:Z

    iput-boolean v1, p0, Lcom/uc/widget/tabbar/TabPager;->x:Z

    iput-boolean v1, p0, Lcom/uc/widget/tabbar/TabPager;->y:Z

    iput v1, p0, Lcom/uc/widget/tabbar/TabPager;->z:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/uc/widget/tabbar/TabPager;->C:[I

    iput-boolean v1, p0, Lcom/uc/widget/tabbar/TabPager;->D:Z

    iput-boolean v2, p0, Lcom/uc/widget/tabbar/TabPager;->E:Z

    invoke-direct {p0, p2}, Lcom/uc/widget/tabbar/TabPager;->a(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private a(Landroid/view/animation/Interpolator;)V
    .locals 2

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/uc/widget/tabbar/TabPager;->i:I

    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/uc/widget/tabbar/TabPager;->a:Landroid/widget/Scroller;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uc/widget/tabbar/TabPager;->A:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/widget/tabbar/TabPager;->B:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/uc/widget/tabbar/TabPager;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/uc/widget/tabbar/TabPager;->setWillNotDraw(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/uc/widget/tabbar/TabPager;->j:I

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getScrollX()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    div-int v0, v1, v0

    invoke-virtual {p0, v0, p1}, Lcom/uc/widget/tabbar/TabPager;->a(IZ)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;[I)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "targetView is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "location must be an array of two integers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    aput v1, p2, v1

    aput v1, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    return v0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, p0, :cond_5

    aget v3, p2, v1

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    aput v3, p2, v1

    aget v3, p2, v2

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    aput v3, p2, v2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_4

    check-cast v0, Landroid/view/View;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    if-ne v0, p0, :cond_6

    aget v0, p2, v1

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getScrollX()I

    move-result v3

    add-int/2addr v0, v3

    aput v0, p2, v1

    aget v0, p2, v2

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    aput v0, p2, v2

    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method private d()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/widget/tabbar/TabPager;->x:Z

    iput-boolean v0, p0, Lcom/uc/widget/tabbar/TabPager;->y:Z

    iput v0, p0, Lcom/uc/widget/tabbar/TabPager;->z:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/uc/widget/tabbar/TabPager;->r:F

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabPager;->b:Lcom/uc/widget/tabbar/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabPager;->c:Lcom/uc/widget/tabbar/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabPager;->b:Lcom/uc/widget/tabbar/a;

    invoke-virtual {v0}, Lcom/uc/widget/tabbar/a;->a()V

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabPager;->c:Lcom/uc/widget/tabbar/a;

    invoke-virtual {v0}, Lcom/uc/widget/tabbar/a;->a()V

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabPager;->b:Lcom/uc/widget/tabbar/a;

    invoke-virtual {v0}, Lcom/uc/widget/tabbar/a;->c()Z

    move-result v0

    iget-object v1, p0, Lcom/uc/widget/tabbar/TabPager;->c:Lcom/uc/widget/tabbar/a;

    invoke-virtual {v1}, Lcom/uc/widget/tabbar/a;->c()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/widget/tabbar/TabPager;->w:Z

    iget v0, p0, Lcom/uc/widget/tabbar/TabPager;->g:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uc/widget/tabbar/TabPager;->a(Z)V

    invoke-direct {p0}, Lcom/uc/widget/tabbar/TabPager;->d()V

    :cond_0
    return-void
.end method

.method public final a(IZ)V
    .locals 6

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabPager;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getChildCount()I

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/uc/widget/tabbar/TabPager;->f:I

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/uc/widget/tabbar/TabPager;->j:I

    add-int/2addr v3, v4

    mul-int/2addr v0, v3

    sub-int v3, v0, v1

    if-eqz v3, :cond_0

    iget v0, p0, Lcom/uc/widget/tabbar/TabPager;->l:I

    int-to-float v0, v0

    iget-boolean v4, p0, Lcom/uc/widget/tabbar/TabPager;->u:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/uc/widget/tabbar/TabPager;->j:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v0, v4

    iget v4, p0, Lcom/uc/widget/tabbar/TabPager;->l:I

    int-to-float v4, v4

    mul-float/2addr v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    const/high16 v4, 0x44160000    # 600.0f

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_2
    float-to-int v5, v0

    const/4 v0, 0x2

    iput v0, p0, Lcom/uc/widget/tabbar/TabPager;->g:I

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabPager;->a:Landroid/widget/Scroller;

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabPager;->d:Lcom/uc/widget/tabbar/g;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabPager;->d:Lcom/uc/widget/tabbar/g;

    iget v1, p0, Lcom/uc/widget/tabbar/TabPager;->f:I

    invoke-interface {v0, v1}, Lcom/uc/widget/tabbar/g;->a(I)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->invalidate()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/uc/widget/tabbar/TabPager;->e:I

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/uc/widget/tabbar/TabPager;->e:I

    iget v1, p0, Lcom/uc/widget/tabbar/TabPager;->e:I

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/uc/widget/tabbar/TabPager;->j:I

    add-int/2addr v3, v4

    mul-int/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/uc/widget/tabbar/TabPager;->scrollTo(II)V

    iget-object v1, p0, Lcom/uc/widget/tabbar/TabPager;->d:Lcom/uc/widget/tabbar/g;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/uc/widget/tabbar/TabPager;->d:Lcom/uc/widget/tabbar/g;

    iget v2, p0, Lcom/uc/widget/tabbar/TabPager;->e:I

    invoke-interface {v1, v2, v0}, Lcom/uc/widget/tabbar/g;->a(II)V

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/widget/tabbar/TabPager;->w:Z

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/uc/widget/tabbar/TabPager;->j:I

    return v0
.end method

.method public computeScroll()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabPager;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabPager;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/uc/widget/tabbar/TabPager;->a:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/uc/widget/tabbar/TabPager;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->invalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/uc/widget/tabbar/TabPager;->f:I

    if-eq v0, v3, :cond_0

    iput v4, p0, Lcom/uc/widget/tabbar/TabPager;->g:I

    iget v0, p0, Lcom/uc/widget/tabbar/TabPager;->e:I

    iget v1, p0, Lcom/uc/widget/tabbar/TabPager;->f:I

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/uc/widget/tabbar/TabPager;->e:I

    iput v3, p0, Lcom/uc/widget/tabbar/TabPager;->f:I

    iget-object v1, p0, Lcom/uc/widget/tabbar/TabPager;->d:Lcom/uc/widget/tabbar/g;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/uc/widget/tabbar/TabPager;->d:Lcom/uc/widget/tabbar/g;

    iget v2, p0, Lcom/uc/widget/tabbar/TabPager;->e:I

    invoke-interface {v1, v2, v0}, Lcom/uc/widget/tabbar/g;->a(II)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getDrawingTime()J

    move-result-wide v4

    iget v1, p0, Lcom/uc/widget/tabbar/TabPager;->g:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/uc/widget/tabbar/TabPager;->x:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/uc/widget/tabbar/TabPager;->f:I

    const/4 v6, -0x1

    if-ne v1, v6, :cond_2

    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    iget v0, p0, Lcom/uc/widget/tabbar/TabPager;->e:I

    invoke-virtual {p0, v0}, Lcom/uc/widget/tabbar/TabPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v4, v5}, Lcom/uc/widget/tabbar/TabPager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/uc/widget/tabbar/TabPager;->f:I

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/uc/widget/tabbar/TabPager;->f:I

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_4

    iget v1, p0, Lcom/uc/widget/tabbar/TabPager;->e:I

    iget v6, p0, Lcom/uc/widget/tabbar/TabPager;->f:I

    sub-int/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ne v1, v2, :cond_4

    iget v0, p0, Lcom/uc/widget/tabbar/TabPager;->e:I

    invoke-virtual {p0, v0}, Lcom/uc/widget/tabbar/TabPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v4, v5}, Lcom/uc/widget/tabbar/TabPager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    iget v0, p0, Lcom/uc/widget/tabbar/TabPager;->f:I

    invoke-virtual {p0, v0}, Lcom/uc/widget/tabbar/TabPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v4, v5}, Lcom/uc/widget/tabbar/TabPager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0

    :cond_4
    :goto_2
    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/uc/widget/tabbar/TabPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v4, v5}, Lcom/uc/widget/tabbar/TabPager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabPager;->B:Landroid/view/View;

    if-eqz v0, :cond_0

    iput-object v12, p0, Lcom/uc/widget/tabbar/TabPager;->B:Landroid/view/View;

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v5, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v6, v0

    iget v7, p0, Lcom/uc/widget/tabbar/TabPager;->e:I

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabPager;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll;

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1

    invoke-interface {v0}, Ll;->b()I

    move-result v10

    if-ne v10, v7, :cond_1

    iget-object v10, p0, Lcom/uc/widget/tabbar/TabPager;->C:[I

    invoke-direct {p0, v1, v10}, Lcom/uc/widget/tabbar/TabPager;->a(Landroid/view/View;[I)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/uc/widget/tabbar/TabPager;->C:[I

    aget v10, v10, v3

    add-int/2addr v10, v5

    iget-object v11, p0, Lcom/uc/widget/tabbar/TabPager;->C:[I

    aget v11, v11, v2

    add-int/2addr v11, v6

    invoke-virtual {v1, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v0}, Ll;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/uc/widget/tabbar/TabPager;->B:Landroid/view/View;

    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/uc/widget/tabbar/TabPager;->w:Z

    :cond_2
    iget-object v0, p0, Lcom/uc/widget/tabbar/TabPager;->B:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/uc/widget/tabbar/TabPager;->E:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/uc/widget/tabbar/TabPager;->C:[I

    aget v1, v1, v3

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/uc/widget/tabbar/TabPager;->B:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v5, p0, Lcom/uc/widget/tabbar/TabPager;->C:[I

    aget v5, v5, v2

    int-to-float v5, v5

    add-float/2addr v1, v5

    iget-object v5, p0, Lcom/uc/widget/tabbar/TabPager;->B:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v1, v5

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabPager;->B:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    if-eq v4, v2, :cond_3

    const/4 v1, 0x3

    if-ne v4, v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/uc/widget/tabbar/TabPager;->B:Landroid/view/View;

    if-eqz v1, :cond_4

    iput-boolean v3, p0, Lcom/uc/widget/tabbar/TabPager;->w:Z

    iput-object v12, p0, Lcom/uc/widget/tabbar/TabPager;->B:Landroid/view/View;

    :cond_4
    return v0

    :cond_5
    move v0, v3

    goto :goto_0

    :cond_6
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    iget v1, p0, Lcom/uc/widget/tabbar/TabPager;->e:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/uc/widget/tabbar/TabPager;->e:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/uc/widget/tabbar/TabPager;->a(IZ)V

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    iget v1, p0, Lcom/uc/widget/tabbar/TabPager;->e:I

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/uc/widget/tabbar/TabPager;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/uc/widget/tabbar/TabPager;->a(IZ)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v4, 0x1

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getChildCount()I

    move-result v1

    iget v2, p0, Lcom/uc/widget/tabbar/TabPager;->h:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/uc/widget/tabbar/TabPager;->h:I

    if-ne v2, v4, :cond_4

    if-le v1, v4, :cond_4

    :cond_0
    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/uc/widget/tabbar/TabPager;->b:Lcom/uc/widget/tabbar/a;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/uc/widget/tabbar/TabPager;->b:Lcom/uc/widget/tabbar/a;

    invoke-virtual {v4}, Lcom/uc/widget/tabbar/a;->c()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabPager;->b:Lcom/uc/widget/tabbar/a;

    invoke-virtual {v0, v3}, Lcom/uc/widget/tabbar/a;->a(I)V

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabPager;->b:Lcom/uc/widget/tabbar/a;

    invoke-virtual {v0, p1}, Lcom/uc/widget/tabbar/a;->a(Landroid/graphics/Canvas;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    iget-object v4, p0, Lcom/uc/widget/tabbar/TabPager;->c:Lcom/uc/widget/tabbar/a;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/uc/widget/tabbar/TabPager;->c:Lcom/uc/widget/tabbar/a;

    invoke-virtual {v4}, Lcom/uc/widget/tabbar/a;->c()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    iget v5, p0, Lcom/uc/widget/tabbar/TabPager;->j:I

    add-int/2addr v2, v5

    neg-int v2, v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    neg-int v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/uc/widget/tabbar/TabPager;->c:Lcom/uc/widget/tabbar/a;

    invoke-virtual {v1, v3}, Lcom/uc/widget/tabbar/a;->a(I)V

    iget-object v1, p0, Lcom/uc/widget/tabbar/TabPager;->c:Lcom/uc/widget/tabbar/a;

    invoke-virtual {v1, p1}, Lcom/uc/widget/tabbar/a;->a(Landroid/graphics/Canvas;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->invalidate()V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/uc/widget/tabbar/TabPager;->b:Lcom/uc/widget/tabbar/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/uc/widget/tabbar/TabPager;->c:Lcom/uc/widget/tabbar/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/uc/widget/tabbar/TabPager;->b:Lcom/uc/widget/tabbar/a;

    invoke-virtual {v1}, Lcom/uc/widget/tabbar/a;->b()V

    iget-object v1, p0, Lcom/uc/widget/tabbar/TabPager;->c:Lcom/uc/widget/tabbar/a;

    invoke-virtual {v1}, Lcom/uc/widget/tabbar/a;->b()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    iget-boolean v3, p0, Lcom/uc/widget/tabbar/TabPager;->w:Z

    if-eqz v3, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v4, :cond_2

    if-ne v3, v2, :cond_3

    :cond_2
    iput-boolean v7, p0, Lcom/uc/widget/tabbar/TabPager;->x:Z

    iput-boolean v7, p0, Lcom/uc/widget/tabbar/TabPager;->y:Z

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_5

    iget-boolean v6, p0, Lcom/uc/widget/tabbar/TabPager;->x:Z

    if-eqz v6, :cond_4

    move v7, v2

    goto :goto_0

    :cond_4
    iget-boolean v6, p0, Lcom/uc/widget/tabbar/TabPager;->y:Z

    if-nez v6, :cond_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    packed-switch v3, :pswitch_data_0

    :cond_6
    :goto_1
    :pswitch_0
    iget-boolean v2, p0, Lcom/uc/widget/tabbar/TabPager;->x:Z

    if-eqz v2, :cond_9

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getChildCount()I

    move-result v1

    :goto_2
    if-ge v7, v1, :cond_9

    invoke-virtual {p0, v7}, Lcom/uc/widget/tabbar/TabPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :pswitch_1
    iput v6, p0, Lcom/uc/widget/tabbar/TabPager;->m:F

    iput v8, p0, Lcom/uc/widget/tabbar/TabPager;->n:F

    iput v6, p0, Lcom/uc/widget/tabbar/TabPager;->o:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/uc/widget/tabbar/TabPager;->q:J

    iget v3, p0, Lcom/uc/widget/tabbar/TabPager;->g:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_7

    iput-boolean v2, p0, Lcom/uc/widget/tabbar/TabPager;->x:Z

    iput v2, p0, Lcom/uc/widget/tabbar/TabPager;->g:I

    :goto_3
    iput-boolean v7, p0, Lcom/uc/widget/tabbar/TabPager;->y:Z

    goto :goto_1

    :cond_7
    iput-boolean v7, p0, Lcom/uc/widget/tabbar/TabPager;->x:Z

    goto :goto_3

    :pswitch_2
    iget-boolean v3, p0, Lcom/uc/widget/tabbar/TabPager;->E:Z

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/uc/widget/tabbar/TabPager;->m:F

    sub-float v3, v6, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v6, p0, Lcom/uc/widget/tabbar/TabPager;->n:F

    sub-float v6, v8, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v8, p0, Lcom/uc/widget/tabbar/TabPager;->i:I

    int-to-float v8, v8

    cmpl-float v8, v3, v8

    if-lez v8, :cond_8

    cmpl-float v3, v3, v6

    if-lez v3, :cond_8

    iput-boolean v2, p0, Lcom/uc/widget/tabbar/TabPager;->x:Z

    iput v2, p0, Lcom/uc/widget/tabbar/TabPager;->g:I

    goto :goto_1

    :cond_8
    iget v3, p0, Lcom/uc/widget/tabbar/TabPager;->i:I

    int-to-float v3, v3

    cmpl-float v3, v6, v3

    if-lez v3, :cond_6

    iput-boolean v2, p0, Lcom/uc/widget/tabbar/TabPager;->y:Z

    goto :goto_1

    :cond_9
    iget-boolean v0, p0, Lcom/uc/widget/tabbar/TabPager;->x:Z

    iget-boolean v1, p0, Lcom/uc/widget/tabbar/TabPager;->D:Z

    or-int v7, v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getChildCount()I

    move-result v2

    sub-int v3, p4, p2

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getPaddingTop()I

    move-result v4

    const/4 v0, 0x0

    move v8, v0

    move v0, v1

    move v1, v8

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/uc/widget/tabbar/TabPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v5, v0, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    iget v5, p0, Lcom/uc/widget/tabbar/TabPager;->j:I

    add-int/2addr v5, v3

    add-int/2addr v0, v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    const/16 v8, 0x8

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sparse-switch v4, :sswitch_data_0

    move v0, v1

    :sswitch_0
    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getChildCount()I

    move-result v5

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    invoke-virtual {p0, v2}, Lcom/uc/widget/tabbar/TabPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v8, :cond_0

    invoke-virtual {v6, v3, p2}, Landroid/view/View;->measure(II)V

    const/high16 v7, -0x80000000

    if-ne v4, v7, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    if-ge v0, v7, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/uc/widget/tabbar/TabPager;->setMeasuredDimension(II)V

    iget-boolean v0, p0, Lcom/uc/widget/tabbar/TabPager;->t:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/uc/widget/tabbar/TabPager;->e:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    new-instance v0, Lcom/uc/widget/tabbar/e;

    invoke-direct {v0, p0}, Lcom/uc/widget/tabbar/e;-><init>(Lcom/uc/widget/tabbar/TabPager;)V

    invoke-virtual {p0, v0}, Lcom/uc/widget/tabbar/TabPager;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-boolean v2, p0, Lcom/uc/widget/tabbar/TabPager;->v:Z

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getChildCount()I

    move-result v3

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_4

    invoke-virtual {p0, v0}, Lcom/uc/widget/tabbar/TabPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v8, :cond_3

    invoke-virtual {v4, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iput-boolean v1, p0, Lcom/uc/widget/tabbar/TabPager;->t:Z

    :cond_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabPager;->d:Lcom/uc/widget/tabbar/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabPager;->d:Lcom/uc/widget/tabbar/g;

    invoke-interface {v0, p1}, Lcom/uc/widget/tabbar/g;->b(I)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    iget v0, p0, Lcom/uc/widget/tabbar/TabPager;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/uc/widget/tabbar/TabPager;->f:I

    :goto_0
    iget v1, p0, Lcom/uc/widget/tabbar/TabPager;->j:I

    add-int/2addr v1, p1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getScrollX()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/uc/widget/tabbar/TabPager;->g:I

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/uc/widget/tabbar/TabPager;->a:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/uc/widget/tabbar/TabPager;->scrollTo(II)V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/uc/widget/tabbar/TabPager;->e:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/uc/widget/tabbar/TabPager;->w:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_1
    move v2, v1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/uc/widget/tabbar/TabPager;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabPager;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_4
    iput v4, p0, Lcom/uc/widget/tabbar/TabPager;->m:F

    iput v5, p0, Lcom/uc/widget/tabbar/TabPager;->n:F

    iput v4, p0, Lcom/uc/widget/tabbar/TabPager;->o:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/uc/widget/tabbar/TabPager;->q:J

    goto :goto_1

    :pswitch_1
    iget-boolean v0, p0, Lcom/uc/widget/tabbar/TabPager;->E:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/uc/widget/tabbar/TabPager;->x:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/uc/widget/tabbar/TabPager;->m:F

    sub-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v6, p0, Lcom/uc/widget/tabbar/TabPager;->n:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/uc/widget/tabbar/TabPager;->i:I

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_5

    iput v4, p0, Lcom/uc/widget/tabbar/TabPager;->o:F

    iput-boolean v1, p0, Lcom/uc/widget/tabbar/TabPager;->x:Z

    iput v1, p0, Lcom/uc/widget/tabbar/TabPager;->g:I

    :cond_5
    iget-boolean v0, p0, Lcom/uc/widget/tabbar/TabPager;->x:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/uc/widget/tabbar/TabPager;->o:F

    sub-float/2addr v0, v4

    iput v4, p0, Lcom/uc/widget/tabbar/TabPager;->o:F

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/uc/widget/tabbar/TabPager;->j:I

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/uc/widget/tabbar/TabPager;->z:I

    if-nez v6, :cond_6

    cmpg-float v6, v4, v3

    if-gez v6, :cond_8

    iput v1, p0, Lcom/uc/widget/tabbar/TabPager;->z:I

    :cond_6
    :goto_2
    iget v4, p0, Lcom/uc/widget/tabbar/TabPager;->z:I

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/uc/widget/tabbar/TabPager;->r:F

    add-float/2addr v4, v0

    iput v4, p0, Lcom/uc/widget/tabbar/TabPager;->r:F

    iget v4, p0, Lcom/uc/widget/tabbar/TabPager;->h:I

    packed-switch v4, :pswitch_data_1

    :cond_7
    :goto_3
    cmpl-float v3, v0, v3

    if-eqz v3, :cond_3

    float-to-int v0, v0

    invoke-virtual {p0, v0, v2}, Lcom/uc/widget/tabbar/TabPager;->scrollBy(II)V

    goto/16 :goto_1

    :cond_8
    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    iput v7, p0, Lcom/uc/widget/tabbar/TabPager;->z:I

    goto :goto_2

    :pswitch_2
    iput v2, p0, Lcom/uc/widget/tabbar/TabPager;->z:I

    move v0, v3

    goto :goto_3

    :pswitch_3
    iget v4, p0, Lcom/uc/widget/tabbar/TabPager;->z:I

    if-ne v4, v1, :cond_b

    iget-object v4, p0, Lcom/uc/widget/tabbar/TabPager;->b:Lcom/uc/widget/tabbar/a;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/uc/widget/tabbar/TabPager;->b:Lcom/uc/widget/tabbar/a;

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    invoke-virtual {v4, v0}, Lcom/uc/widget/tabbar/a;->a(F)V

    :cond_9
    iget v0, p0, Lcom/uc/widget/tabbar/TabPager;->r:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_a

    iput v2, p0, Lcom/uc/widget/tabbar/TabPager;->z:I

    :cond_a
    :goto_4
    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->invalidate()V

    move v0, v3

    goto :goto_3

    :cond_b
    iget v4, p0, Lcom/uc/widget/tabbar/TabPager;->z:I

    if-ne v4, v7, :cond_a

    iget-object v4, p0, Lcom/uc/widget/tabbar/TabPager;->c:Lcom/uc/widget/tabbar/a;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/uc/widget/tabbar/TabPager;->c:Lcom/uc/widget/tabbar/a;

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    invoke-virtual {v4, v0}, Lcom/uc/widget/tabbar/a;->a(F)V

    :cond_c
    iget v0, p0, Lcom/uc/widget/tabbar/TabPager;->r:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_a

    iput v2, p0, Lcom/uc/widget/tabbar/TabPager;->z:I

    goto :goto_4

    :pswitch_4
    iget v4, p0, Lcom/uc/widget/tabbar/TabPager;->k:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    goto :goto_3

    :pswitch_5
    iget-boolean v0, p0, Lcom/uc/widget/tabbar/TabPager;->x:Z

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/uc/widget/tabbar/TabPager;->q:J

    sub-long/2addr v5, v7

    long-to-float v0, v5

    iput v0, p0, Lcom/uc/widget/tabbar/TabPager;->p:F

    iget v0, p0, Lcom/uc/widget/tabbar/TabPager;->m:F

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v5, p0, Lcom/uc/widget/tabbar/TabPager;->p:F

    div-float/2addr v0, v5

    const v5, 0x3e99999a    # 0.3f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_e

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/uc/widget/tabbar/TabPager;->s:Z

    iget-boolean v0, p0, Lcom/uc/widget/tabbar/TabPager;->s:Z

    if-eqz v0, :cond_12

    cmpg-float v0, v4, v3

    if-gez v0, :cond_f

    move v0, v1

    :goto_6
    if-eqz v0, :cond_10

    iget v3, p0, Lcom/uc/widget/tabbar/TabPager;->e:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3, v1}, Lcom/uc/widget/tabbar/TabPager;->a(IZ)V

    :goto_7
    iget-object v3, p0, Lcom/uc/widget/tabbar/TabPager;->G:Lcom/uc/widget/tabbar/f;

    if-eqz v3, :cond_d

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/uc/widget/tabbar/TabPager;->e:I

    add-int/lit8 v0, v0, 0x1

    :goto_8
    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_d

    if-ltz v0, :cond_d

    iget-object v3, p0, Lcom/uc/widget/tabbar/TabPager;->G:Lcom/uc/widget/tabbar/f;

    invoke-interface {v3, v0}, Lcom/uc/widget/tabbar/f;->a(I)V

    :cond_d
    :goto_9
    iput-boolean v2, p0, Lcom/uc/widget/tabbar/TabPager;->s:Z

    invoke-direct {p0}, Lcom/uc/widget/tabbar/TabPager;->d()V

    goto/16 :goto_1

    :cond_e
    move v0, v2

    goto :goto_5

    :cond_f
    move v0, v2

    goto :goto_6

    :cond_10
    iget v3, p0, Lcom/uc/widget/tabbar/TabPager;->e:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/uc/widget/tabbar/TabPager;->a(IZ)V

    goto :goto_7

    :cond_11
    iget v0, p0, Lcom/uc/widget/tabbar/TabPager;->e:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_12
    invoke-direct {p0, v1}, Lcom/uc/widget/tabbar/TabPager;->a(Z)V

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabPager;->G:Lcom/uc/widget/tabbar/f;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabPager;->G:Lcom/uc/widget/tabbar/f;

    invoke-interface {v0}, Lcom/uc/widget/tabbar/f;->a()V

    goto :goto_9

    :pswitch_6
    iget-boolean v0, p0, Lcom/uc/widget/tabbar/TabPager;->x:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lcom/uc/widget/tabbar/TabPager;->a(Z)V

    invoke-direct {p0}, Lcom/uc/widget/tabbar/TabPager;->d()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public setDragSwitchEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uc/widget/tabbar/TabPager;->E:Z

    return-void
.end method

.method public setDrawingCacheEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uc/widget/tabbar/TabPager;->v:Z

    return-void
.end method

.method public setDynamicDurationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uc/widget/tabbar/TabPager;->u:Z

    return-void
.end method

.method public setEdgeBouceDragger(I)V
    .locals 0

    iput p1, p0, Lcom/uc/widget/tabbar/TabPager;->k:I

    return-void
.end method

.method public setEdgeEffect(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    new-instance v0, Lcom/uc/widget/tabbar/a;

    invoke-direct {v0, p1}, Lcom/uc/widget/tabbar/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/uc/widget/tabbar/a;

    invoke-direct {v1, p2}, Lcom/uc/widget/tabbar/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/uc/widget/tabbar/TabPager;->b:Lcom/uc/widget/tabbar/a;

    iput-object v1, p0, Lcom/uc/widget/tabbar/TabPager;->c:Lcom/uc/widget/tabbar/a;

    return-void
.end method

.method public setEdgeEffect(Lcom/uc/widget/tabbar/a;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/uc/widget/tabbar/TabPager;->b:Lcom/uc/widget/tabbar/a;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/uc/widget/tabbar/TabPager;->c:Lcom/uc/widget/tabbar/a;

    goto :goto_0
.end method

.method public setIgnoreChild(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uc/widget/tabbar/TabPager;->D:Z

    return-void
.end method

.method public setListener(Lcom/uc/widget/tabbar/g;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/widget/tabbar/TabPager;->d:Lcom/uc/widget/tabbar/g;

    return-void
.end method

.method public setOnTabSlideDestinationListener(Lcom/uc/widget/tabbar/f;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/widget/tabbar/TabPager;->G:Lcom/uc/widget/tabbar/f;

    return-void
.end method

.method public setOverScrollListener$dbb04d0(Ll;)V
    .locals 0

    return-void
.end method

.method public setOverScrolledStyle(I)V
    .locals 0

    iput p1, p0, Lcom/uc/widget/tabbar/TabPager;->h:I

    return-void
.end method

.method public setScrollDuration(I)V
    .locals 0

    iput p1, p0, Lcom/uc/widget/tabbar/TabPager;->l:I

    return-void
.end method

.method public setTabMargin(I)V
    .locals 0

    iput p1, p0, Lcom/uc/widget/tabbar/TabPager;->j:I

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabPager;->requestLayout()V

    return-void
.end method
