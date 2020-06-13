.class Lorg/pocketworkstation/pckeyboard/SwipeTracker;
.super Ljava/lang/Object;
.source "SwipeTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;
    }
.end annotation


# static fields
.field private static final LONGEST_PAST_TIME:I = 0xc8

.field private static final NUM_PAST:I = 0x4


# instance fields
.field final mBuffer:Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;

.field private mXVelocity:F

.field private mYVelocity:F


# direct methods
.method constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker;->mBuffer:Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;

    return-void
.end method

.method private addPoint(FFJ)V
    .locals 6

    .line 44
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker;->mBuffer:Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;

    .line 45
    :goto_0
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->getTime(I)J

    move-result-wide v1

    const-wide/16 v3, 0xc8

    sub-long v3, p3, v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->dropOldest()V

    goto :goto_0

    .line 51
    :cond_1
    :goto_1
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->add(FFJ)V

    return-void
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 8

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker;->mBuffer:Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->clear()V

    return-void

    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 38
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v6

    invoke-direct {p0, v4, v5, v6, v7}, Lorg/pocketworkstation/pckeyboard/SwipeTracker;->addPoint(FFJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v2, p1, v0, v1}, Lorg/pocketworkstation/pckeyboard/SwipeTracker;->addPoint(FFJ)V

    return-void
.end method

.method public computeCurrentVelocity(I)V
    .locals 1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 55
    invoke-virtual {p0, p1, v0}, Lorg/pocketworkstation/pckeyboard/SwipeTracker;->computeCurrentVelocity(IF)V

    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 59
    iget-object v2, v0, Lorg/pocketworkstation/pckeyboard/SwipeTracker;->mBuffer:Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;

    const/4 v3, 0x0

    .line 60
    invoke-virtual {v2, v3}, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->getX(I)F

    move-result v4

    .line 61
    invoke-virtual {v2, v3}, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->getY(I)F

    move-result v5

    .line 62
    invoke-virtual {v2, v3}, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->getTime(I)J

    move-result-wide v6

    .line 66
    invoke-virtual {v2}, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->size()I

    move-result v3

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v8, v3, :cond_3

    .line 68
    invoke-virtual {v2, v8}, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->getTime(I)J

    move-result-wide v12

    sub-long/2addr v12, v6

    long-to-int v12, v12

    if-nez v12, :cond_0

    move/from16 v14, p1

    goto :goto_3

    .line 70
    :cond_0
    invoke-virtual {v2, v8}, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->getX(I)F

    move-result v13

    sub-float/2addr v13, v4

    int-to-float v12, v12

    div-float/2addr v13, v12

    move/from16 v14, p1

    int-to-float v15, v14

    mul-float v13, v13, v15

    const/high16 v16, 0x3f000000    # 0.5f

    cmpl-float v17, v10, v9

    if-nez v17, :cond_1

    goto :goto_1

    :cond_1
    add-float/2addr v10, v13

    mul-float v13, v10, v16

    .line 75
    :goto_1
    invoke-virtual {v2, v8}, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->getY(I)F

    move-result v10

    sub-float/2addr v10, v5

    div-float/2addr v10, v12

    mul-float v10, v10, v15

    cmpl-float v12, v11, v9

    if-nez v12, :cond_2

    move v11, v10

    :goto_2
    move v10, v13

    goto :goto_3

    :cond_2
    add-float/2addr v11, v10

    mul-float v11, v11, v16

    goto :goto_2

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    cmpg-float v2, v10, v9

    if-gez v2, :cond_4

    neg-float v2, v1

    .line 80
    invoke-static {v10, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_4

    .line 81
    :cond_4
    invoke-static {v10, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :goto_4
    iput v2, v0, Lorg/pocketworkstation/pckeyboard/SwipeTracker;->mXVelocity:F

    cmpg-float v2, v11, v9

    if-gez v2, :cond_5

    neg-float v1, v1

    .line 82
    invoke-static {v11, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_5

    .line 83
    :cond_5
    invoke-static {v11, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_5
    iput v1, v0, Lorg/pocketworkstation/pckeyboard/SwipeTracker;->mYVelocity:F

    return-void
.end method

.method public getXVelocity()F
    .locals 1

    .line 87
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker;->mXVelocity:F

    return v0
.end method

.method public getYVelocity()F
    .locals 1

    .line 91
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker;->mYVelocity:F

    return v0
.end method
