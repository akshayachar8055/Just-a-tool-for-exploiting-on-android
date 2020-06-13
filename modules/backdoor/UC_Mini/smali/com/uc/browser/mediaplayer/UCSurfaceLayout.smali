.class public Lcom/uc/browser/mediaplayer/UCSurfaceLayout;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:I

.field private b:Lcom/uc/browser/mediaplayer/a;

.field private c:F

.field private d:F

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->a:I

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->e:I

    iput v1, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->c:F

    iput v1, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->d:F

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->b:Lcom/uc/browser/mediaplayer/a;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1
    return v2

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->c:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->d:F

    iput v7, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->e:I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->c:F

    sub-float v3, v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v4, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->d:F

    sub-float v4, v0, v4

    iget v0, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->e:I

    if-eq v0, v8, :cond_5

    iget v0, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->a:I

    int-to-float v0, v0

    mul-float v5, v3, v3

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    mul-float/2addr v0, v0

    cmpl-float v0, v5, v0

    if-ltz v0, :cond_1

    move v0, v2

    :goto_2
    if-eqz v0, :cond_0

    iput v8, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->e:I

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float/2addr v0, v5

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    move v0, v1

    :goto_3
    iput v0, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->f:I

    iget v0, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->f:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->b:Lcom/uc/browser/mediaplayer/a;

    invoke-virtual {v0, v1, v3}, Lcom/uc/browser/mediaplayer/a;->a(IF)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->c:F

    invoke-virtual {p0}, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->b:Lcom/uc/browser/mediaplayer/a;

    invoke-virtual {v0, v7, v4}, Lcom/uc/browser/mediaplayer/a;->a(IF)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->b:Lcom/uc/browser/mediaplayer/a;

    invoke-virtual {v0, v2, v4}, Lcom/uc/browser/mediaplayer/a;->a(IF)V

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->f:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->b:Lcom/uc/browser/mediaplayer/a;

    invoke-virtual {v0, v1, v3}, Lcom/uc/browser/mediaplayer/a;->b(IF)V

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->c:F

    invoke-virtual {p0}, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->b:Lcom/uc/browser/mediaplayer/a;

    invoke-virtual {v0, v7, v4}, Lcom/uc/browser/mediaplayer/a;->b(IF)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->b:Lcom/uc/browser/mediaplayer/a;

    invoke-virtual {v0, v2, v4}, Lcom/uc/browser/mediaplayer/a;->b(IF)V

    goto/16 :goto_1

    :pswitch_2
    iget v0, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->e:I

    if-ne v0, v8, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->c:F

    sub-float/2addr v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->d:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->f:I

    if-nez v4, :cond_8

    iget-object v3, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->b:Lcom/uc/browser/mediaplayer/a;

    invoke-virtual {v3, v1, v0}, Lcom/uc/browser/mediaplayer/a;->c(IF)V

    :goto_4
    invoke-direct {p0}, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->a()V

    goto/16 :goto_1

    :cond_8
    iget v0, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->c:F

    invoke-virtual {p0}, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->b:Lcom/uc/browser/mediaplayer/a;

    invoke-virtual {v0, v7, v3}, Lcom/uc/browser/mediaplayer/a;->c(IF)V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->b:Lcom/uc/browser/mediaplayer/a;

    invoke-virtual {v0, v2, v3}, Lcom/uc/browser/mediaplayer/a;->c(IF)V

    goto :goto_4

    :cond_a
    invoke-direct {p0}, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->a()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOnSurfaceViewScrollListener(Lcom/uc/browser/mediaplayer/a;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/mediaplayer/UCSurfaceLayout;->b:Lcom/uc/browser/mediaplayer/a;

    return-void
.end method
