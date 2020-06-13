.class Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LatinKeyboardBaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;


# direct methods
.method constructor <init>(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$1;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8

    .line 589
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 590
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 591
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    .line 592
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    .line 593
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$1;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-static {p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->access$300(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;)Lorg/pocketworkstation/pckeyboard/SwipeTracker;

    move-result-object p1

    const/16 v3, 0x3e8

    invoke-virtual {p1, v3}, Lorg/pocketworkstation/pckeyboard/SwipeTracker;->computeCurrentVelocity(I)V

    .line 594
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$1;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-static {p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->access$300(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;)Lorg/pocketworkstation/pckeyboard/SwipeTracker;

    move-result-object p1

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/SwipeTracker;->getXVelocity()F

    move-result p1

    .line 595
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$1;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-static {v3}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->access$300(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;)Lorg/pocketworkstation/pckeyboard/SwipeTracker;

    move-result-object v3

    invoke-virtual {v3}, Lorg/pocketworkstation/pckeyboard/SwipeTracker;->getYVelocity()F

    move-result v3

    .line 598
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$1;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-virtual {v4}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    .line 599
    iget-object v5, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$1;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-virtual {v5}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    .line 600
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 603
    iget-object v5, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$1;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-static {v5}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->access$400(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x1

    const/high16 v7, 0x40800000    # 4.0f

    cmpl-float v5, p3, v5

    if-lez v5, :cond_0

    cmpg-float v5, v1, v0

    if-gez v5, :cond_0

    int-to-float v5, v4

    cmpl-float v5, v2, v5

    if-lez v5, :cond_0

    .line 604
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$1;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-static {p2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->access$500(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;)Z

    move-result p2

    if-eqz p2, :cond_3

    div-float/2addr p3, v7

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_3

    .line 605
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$1;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->swipeRight()Z

    move-result p1

    if-eqz p1, :cond_3

    return v6

    .line 607
    :cond_0
    iget-object v5, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$1;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-static {v5}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->access$400(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    cmpg-float v5, p3, v5

    if-gez v5, :cond_1

    cmpg-float v5, v1, v0

    if-gez v5, :cond_1

    neg-int v5, v4

    int-to-float v5, v5

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    .line 608
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$1;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-static {p2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->access$500(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;)Z

    move-result p2

    if-eqz p2, :cond_3

    div-float/2addr p3, v7

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_3

    .line 609
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$1;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->swipeLeft()Z

    move-result p1

    if-eqz p1, :cond_3

    return v6

    .line 611
    :cond_1
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$1;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-static {p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->access$400(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    cmpg-float p1, p4, p1

    if-gez p1, :cond_2

    cmpg-float p1, v0, v1

    if-gez p1, :cond_2

    neg-int p1, v4

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_2

    .line 612
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$1;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-static {p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->access$500(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;)Z

    move-result p1

    if-eqz p1, :cond_3

    div-float/2addr p4, v7

    cmpg-float p1, v3, p4

    if-gtz p1, :cond_3

    .line 613
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$1;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->swipeUp()Z

    move-result p1

    if-eqz p1, :cond_3

    return v6

    .line 615
    :cond_2
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$1;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-static {p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->access$400(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p4, p1

    if-lez p1, :cond_3

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    cmpg-float p1, v0, v1

    if-gez p1, :cond_3

    int-to-float p1, v4

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    .line 616
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$1;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-static {p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->access$500(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;)Z

    move-result p1

    if-eqz p1, :cond_3

    div-float/2addr p4, v7

    cmpl-float p1, v3, p4

    if-ltz p1, :cond_3

    .line 617
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$1;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->swipeDown()Z

    move-result p1

    if-eqz p1, :cond_3

    return v6

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
