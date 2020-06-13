.class public final Lcom/uc/view/drag/a;
.super Ljava/lang/Object;


# static fields
.field public static a:I


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/graphics/Rect;

.field private final d:[I

.field private e:Z

.field private f:F

.field private g:F

.field private h:Landroid/util/DisplayMetrics;

.field private i:Landroid/view/View;

.field private j:Ljava/lang/Object;

.field private k:Lcom/uc/view/drag/DragView;

.field private l:Ljava/util/ArrayList;

.field private m:Lcom/uc/view/drag/b;

.field private n:Lcom/uc/view/drag/d;

.field private o:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    sput v0, Lcom/uc/view/drag/a;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/uc/view/drag/a;->c:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/uc/view/drag/a;->d:[I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/uc/view/drag/a;->h:Landroid/util/DisplayMetrics;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uc/view/drag/a;->l:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/uc/view/drag/a;->b:Landroid/content/Context;

    return-void
.end method

.method private a(II[I)Lcom/uc/view/drag/d;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/uc/view/drag/a;->c:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/uc/view/drag/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/view/drag/d;

    invoke-interface {v0, v2}, Lcom/uc/view/drag/d;->getHitRect(Landroid/graphics/Rect;)V

    invoke-interface {v0, p3}, Lcom/uc/view/drag/d;->getLocationOnScreen([I)V

    aget v4, p3, v7

    invoke-interface {v0}, Lcom/uc/view/drag/d;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    aget v5, p3, v8

    invoke-interface {v0}, Lcom/uc/view/drag/d;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/uc/view/drag/a;->j:Ljava/lang/Object;

    if-eq v0, v4, :cond_0

    aget v1, p3, v7

    sub-int v1, p1, v1

    aput v1, p3, v7

    aget v1, p3, v8

    sub-int v1, p2, v1

    aput v1, p3, v8

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(FF)Z
    .locals 3

    iget-object v0, p0, Lcom/uc/view/drag/a;->d:[I

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2, v0}, Lcom/uc/view/drag/a;->a(II[I)Lcom/uc/view/drag/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uc/view/drag/d;->k()V

    iget-object v1, p0, Lcom/uc/view/drag/a;->k:Lcom/uc/view/drag/DragView;

    iget-object v2, p0, Lcom/uc/view/drag/a;->j:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/uc/view/drag/d;->a(Lcom/uc/view/drag/DragView;Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(II)I
    .locals 0

    if-gez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return p0

    :cond_1
    if-lt p0, p1, :cond_0

    add-int/lit8 p0, p1, -0x1

    goto :goto_0
.end method

.method private e()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/uc/view/drag/a;->e:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/uc/view/drag/a;->e:Z

    iget-object v0, p0, Lcom/uc/view/drag/a;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/view/drag/a;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/uc/view/drag/a;->m:Lcom/uc/view/drag/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uc/view/drag/a;->m:Lcom/uc/view/drag/b;

    invoke-interface {v0}, Lcom/uc/view/drag/b;->b()V

    :cond_1
    iget-object v0, p0, Lcom/uc/view/drag/a;->k:Lcom/uc/view/drag/DragView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uc/view/drag/a;->k:Lcom/uc/view/drag/DragView;

    invoke-virtual {v0}, Lcom/uc/view/drag/DragView;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/view/drag/a;->k:Lcom/uc/view/drag/DragView;

    :cond_2
    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/uc/view/drag/a;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/view/drag/a;->h:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    invoke-direct {p0}, Lcom/uc/view/drag/a;->f()V

    iget-object v0, p0, Lcom/uc/view/drag/a;->h:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1, v0}, Lcom/uc/view/drag/a;->b(II)I

    move-result v0

    iget-object v1, p0, Lcom/uc/view/drag/a;->h:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p2, v1}, Lcom/uc/view/drag/a;->b(II)I

    move-result v1

    int-to-float v0, v0

    iput v0, p0, Lcom/uc/view/drag/a;->f:F

    int-to-float v0, v1

    iput v0, p0, Lcom/uc/view/drag/a;->g:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/view/drag/a;->n:Lcom/uc/view/drag/d;

    return-void
.end method

.method public final a(Landroid/view/View;Lcom/uc/view/drag/c;Ljava/lang/Object;I)V
    .locals 10

    const/4 v1, 0x0

    const/4 v9, 0x1

    const v5, 0x3f8ccccd    # 1.1f

    const/4 v8, 0x0

    invoke-interface {p2}, Lcom/uc/view/drag/c;->S()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/uc/view/drag/a;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p1, v8}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v0

    invoke-virtual {p1, v8}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v3

    invoke-virtual {p1, v8}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v0, "DragController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed getViewBitmap("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/uc/view/drag/a;->d:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v0, v8

    aget v0, v0, v9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget-object v0, p0, Lcom/uc/view/drag/a;->o:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/uc/view/drag/a;->b:Landroid/content/Context;

    const-string v7, "input_method"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/uc/view/drag/a;->o:Landroid/view/inputmethod/InputMethodManager;

    :cond_3
    iget-object v0, p0, Lcom/uc/view/drag/a;->o:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget v0, p0, Lcom/uc/view/drag/a;->f:F

    float-to-int v0, v0

    sub-int v3, v0, v3

    iget v0, p0, Lcom/uc/view/drag/a;->g:F

    float-to-int v0, v0

    sub-int v4, v0, v4

    iput-boolean v9, p0, Lcom/uc/view/drag/a;->e:Z

    iput-object p3, p0, Lcom/uc/view/drag/a;->j:Ljava/lang/Object;

    new-instance v0, Lcom/uc/view/drag/DragView;

    iget-object v1, p0, Lcom/uc/view/drag/a;->b:Landroid/content/Context;

    invoke-direct/range {v0 .. v6}, Lcom/uc/view/drag/DragView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)V

    iput-object v0, p0, Lcom/uc/view/drag/a;->k:Lcom/uc/view/drag/DragView;

    iget v1, p0, Lcom/uc/view/drag/a;->f:F

    float-to-int v1, v1

    iget v2, p0, Lcom/uc/view/drag/a;->g:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/uc/view/drag/DragView;->a(II)V

    if-nez p4, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v2, v5, v6, v4}, Lcom/uc/util/a;->a(Landroid/graphics/Bitmap;IILandroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto/16 :goto_1
.end method

.method public final a(Lcom/uc/view/drag/b;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/view/drag/a;->m:Lcom/uc/view/drag/b;

    return-void
.end method

.method public final a(Lcom/uc/view/drag/d;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/view/drag/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uc/view/drag/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uc/view/drag/a;->e:Z

    return v0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uc/view/drag/a;->f()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/uc/view/drag/a;->h:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v2}, Lcom/uc/view/drag/a;->b(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/uc/view/drag/a;->h:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Lcom/uc/view/drag/a;->b(II)I

    move-result v2

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lcom/uc/view/drag/a;->e:Z

    return v0

    :pswitch_1
    int-to-float v0, v1

    iput v0, p0, Lcom/uc/view/drag/a;->f:F

    int-to-float v0, v2

    iput v0, p0, Lcom/uc/view/drag/a;->g:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/view/drag/a;->n:Lcom/uc/view/drag/d;

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/uc/view/drag/a;->e:Z

    if-eqz v0, :cond_1

    int-to-float v0, v1

    int-to-float v1, v2

    invoke-direct {p0, v0, v1}, Lcom/uc/view/drag/a;->a(FF)Z

    :cond_1
    invoke-direct {p0}, Lcom/uc/view/drag/a;->e()V

    iput v4, p0, Lcom/uc/view/drag/a;->f:F

    iput v4, p0, Lcom/uc/view/drag/a;->g:F

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final b()V
    .locals 0

    invoke-direct {p0}, Lcom/uc/view/drag/a;->e()V

    return-void
.end method

.method public final b(Lcom/uc/view/drag/d;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/view/drag/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/uc/view/drag/a;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/uc/view/drag/a;->h:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v2}, Lcom/uc/view/drag/a;->b(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/uc/view/drag/a;->h:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Lcom/uc/view/drag/a;->b(II)I

    move-result v2

    packed-switch v0, :pswitch_data_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    int-to-float v0, v1

    iput v0, p0, Lcom/uc/view/drag/a;->f:F

    int-to-float v0, v2

    iput v0, p0, Lcom/uc/view/drag/a;->g:F

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/uc/view/drag/a;->k:Lcom/uc/view/drag/DragView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Lcom/uc/view/drag/DragView;->b(II)V

    iget-object v0, p0, Lcom/uc/view/drag/a;->d:[I

    invoke-direct {p0, v1, v2, v0}, Lcom/uc/view/drag/a;->a(II[I)Lcom/uc/view/drag/d;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/uc/view/drag/a;->n:Lcom/uc/view/drag/d;

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/uc/view/drag/a;->k:Lcom/uc/view/drag/DragView;

    iget-object v2, p0, Lcom/uc/view/drag/a;->j:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/uc/view/drag/d;->b(Lcom/uc/view/drag/DragView;Ljava/lang/Object;)V

    :cond_1
    :goto_2
    iput-object v0, p0, Lcom/uc/view/drag/a;->n:Lcom/uc/view/drag/d;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/uc/view/drag/a;->n:Lcom/uc/view/drag/d;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/uc/view/drag/a;->n:Lcom/uc/view/drag/d;

    invoke-interface {v1}, Lcom/uc/view/drag/d;->k()V

    :cond_3
    iget-object v1, p0, Lcom/uc/view/drag/a;->j:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/uc/view/drag/d;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/uc/view/drag/a;->n:Lcom/uc/view/drag/d;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/uc/view/drag/a;->n:Lcom/uc/view/drag/d;

    invoke-interface {v1}, Lcom/uc/view/drag/d;->k()V

    goto :goto_2

    :pswitch_2
    iget-boolean v0, p0, Lcom/uc/view/drag/a;->e:Z

    if-eqz v0, :cond_5

    int-to-float v0, v1

    int-to-float v1, v2

    invoke-direct {p0, v0, v1}, Lcom/uc/view/drag/a;->a(FF)Z

    :cond_5
    invoke-direct {p0}, Lcom/uc/view/drag/a;->e()V

    iput v4, p0, Lcom/uc/view/drag/a;->f:F

    iput v4, p0, Lcom/uc/view/drag/a;->g:F

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/uc/view/drag/a;->e()V

    iput v4, p0, Lcom/uc/view/drag/a;->f:F

    iput v4, p0, Lcom/uc/view/drag/a;->g:F

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/uc/view/drag/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/uc/view/drag/a;->l:Ljava/util/ArrayList;

    return-object v0
.end method
