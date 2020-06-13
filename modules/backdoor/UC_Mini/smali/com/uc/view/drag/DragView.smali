.class public Lcom/uc/view/drag/DragView;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:I

.field private e:F

.field private f:Landroid/view/WindowManager$LayoutParams;

.field private g:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/uc/view/drag/DragView;->e:F

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/uc/view/drag/DragView;->g:Landroid/view/WindowManager;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, p5

    const/4 v2, 0x0

    add-float/2addr v2, v1

    div-float v1, v2, v1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-static {p2, p5, p6, v0}, Lcom/uc/util/a;->a(Landroid/graphics/Bitmap;IILandroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/view/drag/DragView;->a:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/uc/view/drag/DragView;->c:I

    iput p4, p0, Lcom/uc/view/drag/DragView;->d:I

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    iget-object v0, p0, Lcom/uc/view/drag/DragView;->g:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final a(II)V
    .locals 8

    const/4 v1, -0x2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/uc/view/drag/DragView;->c:I

    sub-int v3, p1, v2

    iget v2, p0, Lcom/uc/view/drag/DragView;->d:I

    sub-int v4, p2, v2

    const/16 v5, 0x3ea

    const/16 v6, 0x300

    const/4 v7, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const-string v1, "DragView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/uc/view/drag/DragView;->f:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/uc/view/drag/DragView;->g:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method final b(II)V
    .locals 2

    iget-object v0, p0, Lcom/uc/view/drag/DragView;->f:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/uc/view/drag/DragView;->c:I

    sub-int v1, p1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/uc/view/drag/DragView;->d:I

    sub-int v1, p2, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/uc/view/drag/DragView;->g:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/uc/view/drag/DragView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/view/drag/DragView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uc/view/drag/DragView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/view/drag/DragView;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/uc/view/drag/DragView;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/uc/view/drag/DragView;->e:F

    const v1, 0x3f7fbe77    # 0.999f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/uc/view/drag/DragView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v2, v1, v0

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_1
    iget-object v0, p0, Lcom/uc/view/drag/DragView;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/uc/view/drag/DragView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/uc/view/drag/DragView;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/uc/view/drag/DragView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v0, p0, Lcom/uc/view/drag/DragView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/uc/view/drag/DragView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/view/drag/DragView;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/uc/view/drag/DragView;->invalidate()V

    return-void
.end method
