.class public Lcom/uc/widget/tabbar/TabCursor;
.super Landroid/view/View;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Z

.field private h:I

.field private i:Landroid/graphics/Paint;

.field private j:Lcom/uc/widget/tabbar/c;

.field private k:I

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/uc/widget/tabbar/TabCursor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/uc/widget/tabbar/TabCursor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/uc/widget/tabbar/TabCursor;->a:I

    iput v1, p0, Lcom/uc/widget/tabbar/TabCursor;->b:I

    iput v1, p0, Lcom/uc/widget/tabbar/TabCursor;->c:I

    iput v1, p0, Lcom/uc/widget/tabbar/TabCursor;->d:I

    const v0, -0x7a4619

    iput v0, p0, Lcom/uc/widget/tabbar/TabCursor;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/widget/tabbar/TabCursor;->f:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/widget/tabbar/TabCursor;->g:Z

    iput v1, p0, Lcom/uc/widget/tabbar/TabCursor;->h:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/uc/widget/tabbar/TabCursor;->i:Landroid/graphics/Paint;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/uc/widget/tabbar/TabCursor;->k:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/uc/widget/tabbar/TabCursor;->l:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/uc/widget/tabbar/TabCursor;->m:I

    iget v0, p0, Lcom/uc/widget/tabbar/TabCursor;->m:I

    iput v0, p0, Lcom/uc/widget/tabbar/TabCursor;->n:I

    return-void
.end method

.method static synthetic a(Lcom/uc/widget/tabbar/TabCursor;)I
    .locals 1

    iget v0, p0, Lcom/uc/widget/tabbar/TabCursor;->k:I

    return v0
.end method

.method static synthetic a(Lcom/uc/widget/tabbar/TabCursor;I)V
    .locals 0

    iput p1, p0, Lcom/uc/widget/tabbar/TabCursor;->n:I

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabCursor;->invalidate()V

    return-void
.end method

.method static synthetic b(Lcom/uc/widget/tabbar/TabCursor;)I
    .locals 1

    iget v0, p0, Lcom/uc/widget/tabbar/TabCursor;->l:I

    return v0
.end method

.method static synthetic c(Lcom/uc/widget/tabbar/TabCursor;)I
    .locals 1

    iget v0, p0, Lcom/uc/widget/tabbar/TabCursor;->m:I

    return v0
.end method

.method private c()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/uc/widget/tabbar/TabCursor;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/uc/widget/tabbar/TabCursor;->k:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabCursor;->j:Lcom/uc/widget/tabbar/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabCursor;->j:Lcom/uc/widget/tabbar/c;

    invoke-static {v0}, Lcom/uc/widget/tabbar/c;->a(Lcom/uc/widget/tabbar/c;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Lcom/uc/widget/tabbar/c;

    invoke-direct {v0, p0, v2}, Lcom/uc/widget/tabbar/c;-><init>(Lcom/uc/widget/tabbar/TabCursor;B)V

    iput-object v0, p0, Lcom/uc/widget/tabbar/TabCursor;->j:Lcom/uc/widget/tabbar/c;

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabCursor;->j:Lcom/uc/widget/tabbar/c;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/uc/widget/tabbar/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    const/16 v0, 0xff

    iput v0, p0, Lcom/uc/widget/tabbar/TabCursor;->n:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/uc/widget/tabbar/TabCursor;->j:Lcom/uc/widget/tabbar/c;

    invoke-virtual {v0}, Lcom/uc/widget/tabbar/c;->a()V

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/uc/widget/tabbar/TabCursor;->b:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/uc/widget/tabbar/TabCursor;->h:I

    invoke-direct {p0}, Lcom/uc/widget/tabbar/TabCursor;->c()V

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabCursor;->invalidate()V

    return-void
.end method

.method public final a(IIII)V
    .locals 1

    iput p1, p0, Lcom/uc/widget/tabbar/TabCursor;->b:I

    iput p2, p0, Lcom/uc/widget/tabbar/TabCursor;->c:I

    iput p3, p0, Lcom/uc/widget/tabbar/TabCursor;->d:I

    iput p4, p0, Lcom/uc/widget/tabbar/TabCursor;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/uc/widget/tabbar/TabCursor;->a:I

    return-void
.end method

.method public final a(IIILandroid/graphics/drawable/Drawable;)V
    .locals 1

    iput p1, p0, Lcom/uc/widget/tabbar/TabCursor;->b:I

    iput p2, p0, Lcom/uc/widget/tabbar/TabCursor;->c:I

    iput p3, p0, Lcom/uc/widget/tabbar/TabCursor;->d:I

    iput-object p4, p0, Lcom/uc/widget/tabbar/TabCursor;->f:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x2

    iput v0, p0, Lcom/uc/widget/tabbar/TabCursor;->a:I

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/uc/widget/tabbar/TabCursor;->d:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-boolean v0, p0, Lcom/uc/widget/tabbar/TabCursor;->g:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/uc/widget/tabbar/TabCursor;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabCursor;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/uc/widget/tabbar/TabCursor;->h:I

    iget v2, p0, Lcom/uc/widget/tabbar/TabCursor;->d:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabCursor;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/uc/widget/tabbar/TabCursor;->c:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/uc/widget/tabbar/TabCursor;->h:I

    iget v4, p0, Lcom/uc/widget/tabbar/TabCursor;->d:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/uc/widget/tabbar/TabCursor;->b:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabCursor;->getHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/uc/widget/tabbar/TabCursor;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/uc/widget/tabbar/TabCursor;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/uc/widget/tabbar/TabCursor;->n:I

    iget v1, p0, Lcom/uc/widget/tabbar/TabCursor;->e:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/uc/widget/tabbar/TabCursor;->e:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/uc/widget/tabbar/TabCursor;->e:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/uc/widget/tabbar/TabCursor;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/uc/widget/tabbar/TabCursor;->h:I

    iget v1, p0, Lcom/uc/widget/tabbar/TabCursor;->d:I

    add-int/2addr v0, v1

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabCursor;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/uc/widget/tabbar/TabCursor;->c:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lcom/uc/widget/tabbar/TabCursor;->h:I

    iget v3, p0, Lcom/uc/widget/tabbar/TabCursor;->d:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/uc/widget/tabbar/TabCursor;->b:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabCursor;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/uc/widget/tabbar/TabCursor;->i:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setCursorColor(I)V
    .locals 0

    iput p1, p0, Lcom/uc/widget/tabbar/TabCursor;->e:I

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabCursor;->invalidate()V

    return-void
.end method

.method public setCursorDrawEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uc/widget/tabbar/TabCursor;->g:Z

    return-void
.end method

.method public setCursorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/widget/tabbar/TabCursor;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabCursor;->invalidate()V

    return-void
.end method

.method public setCursorHeight(I)V
    .locals 0

    iput p1, p0, Lcom/uc/widget/tabbar/TabCursor;->c:I

    return-void
.end method

.method public setCursorPadding(I)V
    .locals 0

    iput p1, p0, Lcom/uc/widget/tabbar/TabCursor;->d:I

    return-void
.end method

.method public setCursorStyle(I)V
    .locals 1

    iput p1, p0, Lcom/uc/widget/tabbar/TabCursor;->a:I

    iget v0, p0, Lcom/uc/widget/tabbar/TabCursor;->m:I

    iput v0, p0, Lcom/uc/widget/tabbar/TabCursor;->n:I

    invoke-direct {p0}, Lcom/uc/widget/tabbar/TabCursor;->c()V

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabCursor;->invalidate()V

    return-void
.end method

.method public setCursorWidth(I)V
    .locals 0

    iput p1, p0, Lcom/uc/widget/tabbar/TabCursor;->b:I

    return-void
.end method

.method public setFadeOutDelay(I)V
    .locals 0

    iput p1, p0, Lcom/uc/widget/tabbar/TabCursor;->k:I

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabCursor;->invalidate()V

    return-void
.end method

.method public setFadeOutDuration(I)V
    .locals 0

    iput p1, p0, Lcom/uc/widget/tabbar/TabCursor;->l:I

    invoke-virtual {p0}, Lcom/uc/widget/tabbar/TabCursor;->invalidate()V

    return-void
.end method
