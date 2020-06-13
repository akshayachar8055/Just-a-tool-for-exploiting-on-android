.class public final Lcom/uc/widget/a;
.super Lcom/uc/widget/q;


# static fields
.field private static F:I

.field private static G:I


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Landroid/graphics/drawable/Drawable;

.field private E:I

.field private H:[Landroid/graphics/drawable/Drawable;

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private a:Ljava/util/Vector;

.field private b:Ljava/util/Vector;

.field private c:B

.field private d:Ljava/util/Vector;

.field private w:Lcom/uc/widget/s;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/uc/widget/a;->F:I

    const/4 v0, 0x2

    sput v0, Lcom/uc/widget/a;->G:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/uc/widget/q;-><init>()V

    iput-byte v1, p0, Lcom/uc/widget/a;->c:B

    iput v2, p0, Lcom/uc/widget/a;->x:I

    iput v2, p0, Lcom/uc/widget/a;->y:I

    iput v1, p0, Lcom/uc/widget/a;->B:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/uc/widget/a;->C:I

    iput v2, p0, Lcom/uc/widget/a;->E:I

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/uc/widget/a;->H:[Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/uc/widget/a;->I:I

    iput v1, p0, Lcom/uc/widget/a;->J:I

    iput v1, p0, Lcom/uc/widget/a;->M:I

    return-void
.end method

.method private f(I)I
    .locals 4

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/uc/widget/a;->b:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/widget/a;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    iget v1, p0, Lcom/uc/widget/a;->A:I

    iget v3, p0, Lcom/uc/widget/a;->M:I

    add-int/2addr v1, v3

    if-lez v1, :cond_3

    iget v0, p0, Lcom/uc/widget/a;->A:I

    iget v1, p0, Lcom/uc/widget/a;->M:I

    add-int/2addr v0, v1

    rem-int v1, p1, v0

    iget v0, p0, Lcom/uc/widget/a;->A:I

    iget v3, p0, Lcom/uc/widget/a;->M:I

    add-int/2addr v0, v3

    div-int v0, p1, v0

    move p1, v1

    :cond_3
    iget-byte v1, p0, Lcom/uc/widget/a;->c:B

    if-nez v1, :cond_4

    if-lez p1, :cond_4

    iget v1, p0, Lcom/uc/widget/a;->A:I

    if-lt p1, v1, :cond_1

    :cond_4
    iget-byte v1, p0, Lcom/uc/widget/a;->c:B

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    iget v1, p0, Lcom/uc/widget/a;->M:I

    if-le p1, v1, :cond_5

    iget v1, p0, Lcom/uc/widget/a;->M:I

    iget v3, p0, Lcom/uc/widget/a;->A:I

    add-int/2addr v1, v3

    if-ge p1, v1, :cond_5

    iget-object v1, p0, Lcom/uc/widget/a;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/uc/widget/a;->d:Ljava/util/Vector;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/uc/widget/a;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0
.end method

.method private i()V
    .locals 4

    const/4 v2, 0x1

    iget v0, p0, Lcom/uc/widget/a;->M:I

    iget-object v1, p0, Lcom/uc/widget/a;->b:Ljava/util/Vector;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    iput v1, p0, Lcom/uc/widget/a;->M:I

    :cond_0
    :goto_0
    iget v1, p0, Lcom/uc/widget/a;->M:I

    if-eq v1, v0, :cond_1

    invoke-direct {p0}, Lcom/uc/widget/a;->h()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/uc/widget/a;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v1, v2, :cond_3

    iget v2, p0, Lcom/uc/widget/a;->K:I

    iget v3, p0, Lcom/uc/widget/a;->A:I

    mul-int/2addr v3, v1

    sub-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    div-int v1, v2, v1

    iput v1, p0, Lcom/uc/widget/a;->M:I

    goto :goto_0

    :cond_3
    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/uc/widget/a;->K:I

    iget v2, p0, Lcom/uc/widget/a;->A:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/uc/widget/a;->M:I

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Landroid/graphics/Point;
    .locals 6

    const/4 v0, -0x1

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/uc/widget/a;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    iget-object v0, p0, Lcom/uc/widget/a;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/b;

    invoke-virtual {v0}, Lcom/uc/widget/b;->a()I

    move-result v5

    if-ne v5, p1, :cond_1

    :goto_1
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/uc/widget/a;->A:I

    iget v4, p0, Lcom/uc/widget/a;->M:I

    add-int/2addr v1, v4

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/uc/widget/a;->z:I

    iget v4, v0, Lcom/uc/widget/b;->m:I

    add-int/2addr v2, v4

    iget v0, v0, Lcom/uc/widget/b;->n:I

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Point;->set(II)V

    :cond_0
    return-object v3

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final a()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/uc/widget/a;->a:Ljava/util/Vector;

    return-object v0
.end method

.method public final a(IIII)V
    .locals 0

    iput p1, p0, Lcom/uc/widget/a;->r:I

    iput p2, p0, Lcom/uc/widget/a;->t:I

    iput p3, p0, Lcom/uc/widget/a;->s:I

    iput p4, p0, Lcom/uc/widget/a;->u:I

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iget v0, p0, Lcom/uc/widget/a;->E:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/uc/widget/a;->E:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/uc/widget/a;->K:I

    int-to-float v3, v0

    iget v0, p0, Lcom/uc/widget/a;->L:I

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/uc/widget/a;->D:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/uc/widget/a;->C:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/uc/widget/a;->b:Ljava/util/Vector;

    if-nez v0, :cond_3

    :cond_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/uc/widget/a;->D:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/uc/widget/a;->K:I

    iget v3, p0, Lcom/uc/widget/a;->L:I

    invoke-virtual {v0, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/uc/widget/a;->D:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/uc/widget/a;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    iget v0, p0, Lcom/uc/widget/a;->r:I

    iget-byte v2, p0, Lcom/uc/widget/a;->c:B

    if-ne v2, v8, :cond_4

    iget v0, p0, Lcom/uc/widget/a;->K:I

    iget v2, p0, Lcom/uc/widget/a;->s:I

    sub-int/2addr v0, v2

    :cond_4
    iget v2, p0, Lcom/uc/widget/a;->t:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move v3, v6

    move v2, v0

    :goto_1
    if-ge v3, v4, :cond_2

    iget-object v0, p0, Lcom/uc/widget/a;->b:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/b;

    iget-byte v5, p0, Lcom/uc/widget/a;->c:B

    if-ne v5, v8, :cond_5

    iget v5, p0, Lcom/uc/widget/a;->A:I

    sub-int/2addr v2, v5

    :cond_5
    int-to-float v5, v2

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v5, p0, Lcom/uc/widget/a;->x:I

    if-ne v3, v5, :cond_7

    iget-object v5, p0, Lcom/uc/widget/a;->H:[Landroid/graphics/drawable/Drawable;

    sget v7, Lcom/uc/widget/a;->G:I

    aget-object v5, v5, v7

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/uc/widget/a;->H:[Landroid/graphics/drawable/Drawable;

    sget v7, Lcom/uc/widget/a;->G:I

    aget-object v5, v5, v7

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v5, p0, Lcom/uc/widget/a;->A:I

    iget v7, p0, Lcom/uc/widget/a;->z:I

    invoke-virtual {v0, p1, v5, v7}, Lcom/uc/widget/b;->a(Landroid/graphics/Canvas;II)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    neg-int v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-byte v0, p0, Lcom/uc/widget/a;->c:B

    if-ne v0, v8, :cond_9

    iget v0, p0, Lcom/uc/widget/a;->M:I

    sub-int v0, v2, v0

    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_1

    :cond_7
    iget v5, p0, Lcom/uc/widget/a;->y:I

    if-ne v3, v5, :cond_8

    iget-object v5, p0, Lcom/uc/widget/a;->H:[Landroid/graphics/drawable/Drawable;

    sget v7, Lcom/uc/widget/a;->F:I

    aget-object v5, v5, v7

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/uc/widget/a;->H:[Landroid/graphics/drawable/Drawable;

    sget v7, Lcom/uc/widget/a;->F:I

    aget-object v5, v5, v7

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_8
    iget-object v5, p0, Lcom/uc/widget/a;->H:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v6

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/uc/widget/a;->H:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v6

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_9
    iget v0, p0, Lcom/uc/widget/a;->M:I

    iget v5, p0, Lcom/uc/widget/a;->A:I

    add-int/2addr v0, v5

    add-int/2addr v0, v2

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/graphics/Point;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/uc/widget/a;->I:I

    iget v1, p0, Lcom/uc/widget/a;->J:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/widget/a;->D:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final a(Lcom/uc/browser/media/myvideo/view/o;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/widget/a;->d:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/uc/widget/a;->d:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lcom/uc/widget/a;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/uc/widget/s;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/widget/a;->w:Lcom/uc/widget/s;

    return-void
.end method

.method public final a(Lcom/uc/widget/t;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/widget/a;->m:Lcom/uc/widget/t;

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v4, -0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lcom/uc/widget/a;->I:I

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/uc/widget/a;->J:I

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/uc/widget/a;->f(I)I

    move-result v0

    iput v0, p0, Lcom/uc/widget/a;->x:I

    iget v0, p0, Lcom/uc/widget/a;->x:I

    iget-object v2, p0, Lcom/uc/widget/a;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-gt v0, v2, :cond_0

    iget v0, p0, Lcom/uc/widget/a;->x:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/uc/widget/a;->x:I

    iget-object v2, p0, Lcom/uc/widget/a;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/uc/widget/a;->b:Ljava/util/Vector;

    iget v2, p0, Lcom/uc/widget/a;->x:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/b;

    invoke-virtual {v0}, Lcom/uc/widget/b;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput v4, p0, Lcom/uc/widget/a;->x:I

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/uc/widget/a;->n()V

    goto :goto_1

    :pswitch_1
    iget v2, p0, Lcom/uc/widget/a;->x:I

    if-eq v2, v4, :cond_2

    iget v2, p0, Lcom/uc/widget/a;->x:I

    invoke-direct {p0, v0}, Lcom/uc/widget/a;->f(I)I

    move-result v0

    if-eq v2, v0, :cond_2

    invoke-virtual {p0}, Lcom/uc/widget/a;->n()V

    iput v4, p0, Lcom/uc/widget/a;->x:I

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/uc/widget/a;->x:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/uc/widget/a;->x:I

    iget-object v3, p0, Lcom/uc/widget/a;->b:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/uc/widget/a;->n()V

    if-ltz v2, :cond_3

    iget v0, p0, Lcom/uc/widget/a;->L:I

    if-ge v2, v0, :cond_3

    iget v0, p0, Lcom/uc/widget/a;->x:I

    invoke-virtual {p0, v0}, Lcom/uc/widget/a;->b(I)Z

    :cond_3
    iput v4, p0, Lcom/uc/widget/a;->x:I

    move v0, v1

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/uc/widget/a;->x:I

    if-eq v0, v4, :cond_4

    invoke-virtual {p0}, Lcom/uc/widget/a;->n()V

    iput v4, p0, Lcom/uc/widget/a;->x:I

    :cond_4
    move v0, v1

    goto :goto_0

    :pswitch_4
    iget v0, p0, Lcom/uc/widget/a;->x:I

    if-eq v0, v4, :cond_5

    invoke-virtual {p0}, Lcom/uc/widget/a;->n()V

    iput v4, p0, Lcom/uc/widget/a;->x:I

    :cond_5
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/uc/widget/b;)Z
    .locals 1

    iget-object v0, p0, Lcom/uc/widget/a;->a:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/uc/widget/a;->a:Ljava/util/Vector;

    :cond_0
    iget v0, p0, Lcom/uc/widget/a;->B:I

    invoke-virtual {p1, v0}, Lcom/uc/widget/b;->f(I)V

    iget-object v0, p0, Lcom/uc/widget/a;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/uc/widget/a;->a:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/widget/a;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/uc/widget/a;->b:Ljava/util/Vector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uc/widget/a;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    :cond_1
    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/uc/widget/a;->H:[Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/uc/widget/a;->G:I

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/uc/widget/a;->H:[Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/uc/widget/a;->G:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/uc/widget/a;->A:I

    iget v2, p0, Lcom/uc/widget/a;->z:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public final b(I)Z
    .locals 2

    iget-object v0, p0, Lcom/uc/widget/a;->w:Lcom/uc/widget/s;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/uc/widget/a;->w:Lcom/uc/widget/s;

    iget-object v0, p0, Lcom/uc/widget/a;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/b;

    invoke-virtual {v0}, Lcom/uc/widget/b;->a()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/uc/widget/s;->a(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lcom/uc/widget/a;->a:Ljava/util/Vector;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/uc/widget/a;->b:Ljava/util/Vector;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/uc/widget/a;->b:Ljava/util/Vector;

    :goto_1
    iget-object v0, p0, Lcom/uc/widget/a;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/b;

    iget v2, v0, Lcom/uc/widget/b;->h:I

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    :cond_2
    iget-object v2, p0, Lcom/uc/widget/a;->b:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/uc/widget/a;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/uc/widget/a;->i()V

    goto :goto_0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/uc/widget/a;->B:I

    return-void
.end method

.method public final c(II)V
    .locals 0

    iput p1, p0, Lcom/uc/widget/a;->K:I

    iput p2, p0, Lcom/uc/widget/a;->L:I

    invoke-direct {p0}, Lcom/uc/widget/a;->i()V

    return-void
.end method

.method public final d(II)V
    .locals 6

    const/4 v5, 0x0

    iget v1, p0, Lcom/uc/widget/a;->A:I

    iget v2, p0, Lcom/uc/widget/a;->z:I

    iput p1, p0, Lcom/uc/widget/a;->A:I

    iget v0, p0, Lcom/uc/widget/a;->t:I

    sub-int v0, p2, v0

    iget v3, p0, Lcom/uc/widget/a;->u:I

    sub-int/2addr v0, v3

    if-le p2, v0, :cond_0

    move p2, v0

    :cond_0
    iput p2, p0, Lcom/uc/widget/a;->z:I

    iget-object v0, p0, Lcom/uc/widget/a;->H:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v5

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uc/widget/a;->H:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v5

    iget v3, p0, Lcom/uc/widget/a;->A:I

    iget v4, p0, Lcom/uc/widget/a;->z:I

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    iget-object v0, p0, Lcom/uc/widget/a;->H:[Landroid/graphics/drawable/Drawable;

    sget v3, Lcom/uc/widget/a;->F:I

    aget-object v0, v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uc/widget/a;->H:[Landroid/graphics/drawable/Drawable;

    sget v3, Lcom/uc/widget/a;->F:I

    aget-object v0, v0, v3

    iget v3, p0, Lcom/uc/widget/a;->A:I

    iget v4, p0, Lcom/uc/widget/a;->z:I

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    iget-object v0, p0, Lcom/uc/widget/a;->H:[Landroid/graphics/drawable/Drawable;

    sget v3, Lcom/uc/widget/a;->G:I

    aget-object v0, v0, v3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/uc/widget/a;->H:[Landroid/graphics/drawable/Drawable;

    sget v3, Lcom/uc/widget/a;->G:I

    aget-object v0, v0, v3

    iget v3, p0, Lcom/uc/widget/a;->A:I

    iget v4, p0, Lcom/uc/widget/a;->z:I

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    iget v0, p0, Lcom/uc/widget/a;->A:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/uc/widget/a;->z:I

    if-eq v0, v2, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/uc/widget/a;->h()V

    :cond_5
    return-void
.end method

.method public final e()Landroid/graphics/Point;
    .locals 7

    const/4 v0, -0x1

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/uc/widget/a;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    iget-object v0, p0, Lcom/uc/widget/a;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/b;

    invoke-virtual {v0}, Lcom/uc/widget/b;->a()I

    move-result v5

    const/16 v6, 0x275f

    if-ne v5, v6, :cond_1

    :goto_1
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/uc/widget/a;->A:I

    iget v4, p0, Lcom/uc/widget/a;->M:I

    add-int/2addr v1, v4

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/uc/widget/a;->A:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/uc/widget/a;->z:I

    iget v4, v0, Lcom/uc/widget/b;->m:I

    add-int/2addr v2, v4

    iget v0, v0, Lcom/uc/widget/b;->n:I

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Point;->set(II)V

    :cond_0
    return-object v3

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final e(II)V
    .locals 0

    iput p1, p0, Lcom/uc/widget/a;->I:I

    iput p2, p0, Lcom/uc/widget/a;->J:I

    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/uc/widget/a;->c:B

    return-void
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/uc/widget/a;->L:I

    return v0
.end method
