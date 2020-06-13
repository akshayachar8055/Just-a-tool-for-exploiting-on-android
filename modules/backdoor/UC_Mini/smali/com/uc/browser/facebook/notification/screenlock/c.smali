.class final Lcom/uc/browser/facebook/notification/screenlock/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/facebook/notification/screenlock/FacebookScreenLockPushActivity;


# direct methods
.method constructor <init>(Lcom/uc/browser/facebook/notification/screenlock/FacebookScreenLockPushActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/facebook/notification/screenlock/c;->a:Lcom/uc/browser/facebook/notification/screenlock/FacebookScreenLockPushActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/uc/browser/facebook/notification/screenlock/c;->a:Lcom/uc/browser/facebook/notification/screenlock/FacebookScreenLockPushActivity;

    invoke-static {v0}, Lcom/uc/browser/facebook/notification/screenlock/FacebookScreenLockPushActivity;->a(Lcom/uc/browser/facebook/notification/screenlock/FacebookScreenLockPushActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/facebook/notification/screenlock/c;->a:Lcom/uc/browser/facebook/notification/screenlock/FacebookScreenLockPushActivity;

    invoke-static {v0}, Lcom/uc/browser/facebook/notification/screenlock/FacebookScreenLockPushActivity;->a(Lcom/uc/browser/facebook/notification/screenlock/FacebookScreenLockPushActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/uc/browser/facebook/notification/screenlock/c;->a:Lcom/uc/browser/facebook/notification/screenlock/FacebookScreenLockPushActivity;

    invoke-static {v1}, Lcom/uc/browser/facebook/notification/screenlock/FacebookScreenLockPushActivity;->a(Lcom/uc/browser/facebook/notification/screenlock/FacebookScreenLockPushActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/facebook/notification/screenlock/c;->a:Lcom/uc/browser/facebook/notification/screenlock/FacebookScreenLockPushActivity;

    invoke-static {v0}, Lcom/uc/browser/facebook/notification/screenlock/FacebookScreenLockPushActivity;->b(Lcom/uc/browser/facebook/notification/screenlock/FacebookScreenLockPushActivity;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {p1, p2}, Lcom/uc/browser/facebook/notification/screenlock/FacebookScreenLockPushActivity;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    move-result-wide v0

    invoke-static {}, Lcom/uc/browser/facebook/notification/screenlock/FacebookScreenLockPushActivity;->a()I

    move-result v2

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    cmpl-float v0, p3, v4

    if-gez v0, :cond_0

    cmpl-float v0, p4, v4

    if-ltz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/uc/browser/facebook/notification/screenlock/c;->a:Lcom/uc/browser/facebook/notification/screenlock/FacebookScreenLockPushActivity;

    invoke-virtual {v0}, Lcom/uc/browser/facebook/notification/screenlock/FacebookScreenLockPushActivity;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
