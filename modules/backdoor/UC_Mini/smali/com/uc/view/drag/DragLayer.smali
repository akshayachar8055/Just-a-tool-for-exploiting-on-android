.class public Lcom/uc/view/drag/DragLayer;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/uc/view/drag/c;
.implements Lcom/uc/view/drag/d;


# instance fields
.field private a:Lcom/uc/view/drag/a;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/view/drag/DragLayer;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/view/drag/DragLayer;->b:Z

    return-void
.end method


# virtual methods
.method public final S()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uc/view/drag/DragLayer;->b:Z

    return v0
.end method

.method public a(Lcom/uc/view/drag/DragView;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v2}, Lcom/uc/view/drag/DragLayer;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/uc/view/drag/DragView;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/uc/view/drag/DragLayer;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uc/view/drag/DragLayer;->a:Lcom/uc/view/drag/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uc/view/drag/DragLayer;->a:Lcom/uc/view/drag/a;

    invoke-virtual {v0}, Lcom/uc/view/drag/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/uc/view/drag/DragLayer;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/view/drag/DragLayer;->a:Lcom/uc/view/drag/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/uc/view/drag/DragLayer;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uc/view/drag/DragLayer;->a:Lcom/uc/view/drag/a;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uc/view/drag/DragLayer;->a:Lcom/uc/view/drag/a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/uc/view/drag/a;->a(II)V

    :cond_0
    iget-boolean v0, p0, Lcom/uc/view/drag/DragLayer;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uc/view/drag/DragLayer;->a:Lcom/uc/view/drag/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uc/view/drag/DragLayer;->a:Lcom/uc/view/drag/a;

    invoke-virtual {v0, p1}, Lcom/uc/view/drag/a;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/uc/view/drag/DragLayer;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/view/drag/DragLayer;->a:Lcom/uc/view/drag/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/view/drag/DragLayer;->a:Lcom/uc/view/drag/a;

    invoke-virtual {v0, p1}, Lcom/uc/view/drag/a;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAllowDrag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uc/view/drag/DragLayer;->b:Z

    return-void
.end method

.method public setDragController(Lcom/uc/view/drag/a;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/view/drag/DragLayer;->a:Lcom/uc/view/drag/a;

    return-void
.end method
