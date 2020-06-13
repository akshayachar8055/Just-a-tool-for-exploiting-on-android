.class public Lorg/pocketworkstation/pckeyboard/PointerTracker;
.super Ljava/lang/Object;
.source "PointerTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;,
        Lorg/pocketworkstation/pckeyboard/PointerTracker$UIProxy;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_MOVE:Z = false

.field private static final KEY_DELETE:[I

.field private static final NOT_A_KEY:I = -0x1

.field private static final TAG:Ljava/lang/String; = "PointerTracker"

.field private static sSlideKeyHack:Z

.field private static sSlideKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/pocketworkstation/pckeyboard/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDelayBeforeKeyRepeatStart:I

.field private final mHandler:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;

.field private final mHasDistinctMultitouch:Z

.field private mInMultiTap:Z

.field private mIsInSlidingKeyInput:Z

.field private mIsRepeatableKey:Z

.field private mKeyAlreadyProcessed:Z

.field private final mKeyDetector:Lorg/pocketworkstation/pckeyboard/KeyDetector;

.field private mKeyHysteresisDistanceSquared:I

.field private final mKeyState:Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;

.field private mKeyboardLayoutHasBeenChanged:Z

.field private final mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

.field private mKeys:[Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

.field private mLastSentIndex:I

.field private mLastTapTime:J

.field private mListener:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

.field private final mMultiTapKeyTimeout:I

.field public final mPointerId:I

.field private final mPreviewLabel:Ljava/lang/StringBuilder;

.field private mPreviousKey:I

.field private final mProxy:Lorg/pocketworkstation/pckeyboard/PointerTracker$UIProxy;

.field private mTapCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 49
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x5

    aput v2, v0, v1

    sput-object v0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->KEY_DELETE:[I

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->sSlideKeys:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;Lorg/pocketworkstation/pckeyboard/KeyDetector;Lorg/pocketworkstation/pckeyboard/PointerTracker$UIProxy;Landroid/content/res/Resources;Z)V
    .locals 3

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyHysteresisDistanceSquared:I

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 83
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mPreviousKey:I

    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 177
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mPointerId:I

    .line 178
    iput-object p4, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mProxy:Lorg/pocketworkstation/pckeyboard/PointerTracker$UIProxy;

    .line 179
    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mHandler:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;

    .line 180
    iput-object p3, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyDetector:Lorg/pocketworkstation/pckeyboard/KeyDetector;

    .line 181
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInstance()Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    .line 182
    new-instance p1, Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;

    invoke-direct {p1, p3}, Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;-><init>(Lorg/pocketworkstation/pckeyboard/KeyDetector;)V

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyState:Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;

    .line 183
    invoke-interface {p4}, Lorg/pocketworkstation/pckeyboard/PointerTracker$UIProxy;->hasDistinctMultitouch()Z

    move-result p1

    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mHasDistinctMultitouch:Z

    const p1, 0x7f090004

    .line 184
    invoke-virtual {p5, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mDelayBeforeKeyRepeatStart:I

    const p1, 0x7f09000a

    .line 185
    invoke-virtual {p5, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mMultiTapKeyTimeout:I

    .line 186
    sput-boolean p6, Lorg/pocketworkstation/pckeyboard/PointerTracker;->sSlideKeyHack:Z

    .line 187
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->resetMultiTap()V

    return-void

    .line 176
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private static addSlideKey(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)V
    .locals 1

    .line 321
    sget-boolean v0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->sSlideKeyHack:Z

    if-eqz v0, :cond_3

    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget v0, v0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->sendSlideKeys:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 323
    :cond_1
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->modifier:Z

    if-eqz v0, :cond_2

    .line 324
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->clearSlideKeys()V

    goto :goto_0

    .line 326
    :cond_2
    sget-object v0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->sSlideKeys:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private checkMultiTap(JI)V
    .locals 5

    .line 611
    invoke-virtual {p0, p3}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->getKey(I)Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 612
    iget-object v1, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    if-nez v1, :cond_0

    goto :goto_1

    .line 615
    :cond_0
    iget-wide v1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mLastTapTime:J

    iget v3, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mMultiTapKeyTimeout:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    const/4 v3, 0x1

    cmp-long v4, p1, v1

    if-gez v4, :cond_1

    iget p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mLastSentIndex:I

    if-ne p3, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 617
    :goto_0
    iget-object p2, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    array-length p2, p2

    if-le p2, v3, :cond_3

    .line 618
    iput-boolean v3, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mInMultiTap:Z

    if-eqz p1, :cond_2

    .line 620
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mTapCount:I

    add-int/2addr p1, v3

    iget-object p2, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    array-length p2, p2

    rem-int/2addr p1, p2

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mTapCount:I

    return-void

    :cond_2
    const/4 p1, -0x1

    .line 623
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mTapCount:I

    return-void

    :cond_3
    if-nez p1, :cond_4

    .line 628
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->resetMultiTap()V

    :cond_4
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method static clearSlideKeys()V
    .locals 1

    .line 331
    sget-object v0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->sSlideKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private debugLog(Ljava/lang/String;II)V
    .locals 7

    .line 633
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyDetector:Lorg/pocketworkstation/pckeyboard/KeyDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lorg/pocketworkstation/pckeyboard/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    move-result v0

    .line 634
    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->getKey(I)Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 636
    iget-object v4, v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    if-nez v4, :cond_0

    goto :goto_1

    .line 639
    :cond_0
    iget-object v1, v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    if-gez v1, :cond_1

    const-string v4, "%4d"

    goto :goto_0

    :cond_1
    const-string v4, "0x%02x"

    .line 640
    :goto_0
    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    :goto_1
    const-string v1, "----"

    :goto_2
    const-string v4, "PointerTracker"

    const-string v5, "%s%s[%d] %3d,%3d %3d(%s) %s"

    const/16 v6, 0x8

    .line 642
    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    if-eqz p1, :cond_3

    const-string p1, "-"

    goto :goto_3

    :cond_3
    const-string p1, " "

    :goto_3
    aput-object p1, v6, v2

    const/4 p1, 0x2

    iget v2, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mPointerId:I

    .line 643
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, p1

    const/4 p1, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v6, p1

    const/4 p1, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v6, p1

    const/4 p1, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v6, p1

    const/4 p1, 0x6

    aput-object v1, v6, p1

    const/4 p1, 0x7

    .line 644
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->isModifier()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "modifier"

    goto :goto_4

    :cond_4
    const-string p2, ""

    :goto_4
    aput-object p2, v6, p1

    .line 642
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private detectAndSendKey(IIIJ)V
    .locals 6

    .line 537
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->getKey(I)Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->detectAndSendKey(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;IIJ)V

    .line 538
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mLastSentIndex:I

    return-void
.end method

.method private detectAndSendKey(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;IIJ)V
    .locals 6

    .line 542
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mListener:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    if-nez p1, :cond_0

    if-eqz v0, :cond_7

    .line 546
    invoke-interface {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onCancel()V

    goto :goto_2

    .line 548
    :cond_0
    iget-object v1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->text:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_6

    .line 550
    iget-object p1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 551
    invoke-interface {v0, v2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onRelease(I)V

    goto :goto_1

    .line 554
    :cond_1
    iget-object v1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    if-nez v1, :cond_2

    return-void

    .line 555
    :cond_2
    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->getPrimaryCode()I

    move-result v1

    .line 556
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyDetector:Lorg/pocketworkstation/pckeyboard/KeyDetector;

    invoke-virtual {v3}, Lorg/pocketworkstation/pckeyboard/KeyDetector;->newCodeArray()[I

    move-result-object v3

    .line 557
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyDetector:Lorg/pocketworkstation/pckeyboard/KeyDetector;

    invoke-virtual {v4, p2, p3, v3}, Lorg/pocketworkstation/pckeyboard/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    .line 559
    iget-boolean v4, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mInMultiTap:Z

    if-eqz v4, :cond_4

    .line 560
    iget v1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mTapCount:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    .line 561
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mListener:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    const/4 v4, -0x5

    sget-object v5, Lorg/pocketworkstation/pckeyboard/PointerTracker;->KEY_DELETE:[I

    invoke-interface {v1, v4, v5, p2, p3}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onKey(I[III)V

    goto :goto_0

    .line 563
    :cond_3
    iput v2, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mTapCount:I

    .line 565
    :goto_0
    iget-object p1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mTapCount:I

    aget v1, p1, v1

    .line 572
    :cond_4
    array-length p1, v3

    const/4 v4, 0x2

    if-lt p1, v4, :cond_5

    aget p1, v3, v2

    if-eq p1, v1, :cond_5

    const/4 p1, 0x1

    aget v4, v3, p1

    if-ne v4, v1, :cond_5

    .line 573
    aget v4, v3, v2

    aput v4, v3, p1

    .line 574
    aput v1, v3, v2

    :cond_5
    if-eqz v0, :cond_6

    .line 577
    invoke-interface {v0, v1, v3, p2, p3}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onKey(I[III)V

    .line 578
    invoke-interface {v0, v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onRelease(I)V

    .line 581
    :cond_6
    :goto_1
    iput-wide p4, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mLastTapTime:J

    :cond_7
    :goto_2
    return-void
.end method

.method private static getSquareDistanceToKeyEdge(IILorg/pocketworkstation/pckeyboard/Keyboard$Key;)I
    .locals 4

    .line 504
    iget v0, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    .line 505
    iget v1, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    iget v2, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    add-int/2addr v1, v2

    .line 506
    iget v2, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    .line 507
    iget v3, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    iget p2, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->height:I

    add-int/2addr p2, v3

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    if-le p0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    if-ge p1, v2, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    if-le p1, p2, :cond_3

    goto :goto_1

    :cond_3
    move p2, p1

    :goto_1
    sub-int/2addr p0, v0

    sub-int/2addr p1, p2

    mul-int p0, p0, p0

    mul-int p1, p1, p1

    add-int/2addr p0, p1

    return p0
.end method

.method private isMinorMoveBounce(III)Z
    .locals 3

    .line 490
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeys:[Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyHysteresisDistanceSquared:I

    if-ltz v0, :cond_3

    .line 492
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyState:Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;->getKeyIndex()I

    move-result v0

    const/4 v1, 0x1

    if-ne p3, v0, :cond_0

    return v1

    .line 495
    :cond_0
    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result p3

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    .line 497
    iget-object p3, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeys:[Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->getSquareDistanceToKeyEdge(IILorg/pocketworkstation/pckeyboard/Keyboard$Key;)I

    move-result p1

    iget p2, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyHysteresisDistanceSquared:I

    if-ge p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    return v2

    .line 491
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "keyboard and/or hysteresis not set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isModifierInternal(I)Z
    .locals 2

    .line 220
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->getKey(I)Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 221
    iget-object v1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    if-nez v1, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    iget-object p1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    aget p1, p1, v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    const/4 v1, -0x2

    if-eq p1, v1, :cond_1

    const/16 v1, -0x71

    if-eq p1, v1, :cond_1

    const/16 v1, -0x39

    if-eq p1, v1, :cond_1

    const/16 v1, -0x75

    if-eq p1, v1, :cond_1

    const/16 v1, -0x77

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method private isValidKeyIndex(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 212
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeys:[Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private resetMultiTap()V
    .locals 3

    const/4 v0, -0x1

    .line 604
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mLastSentIndex:I

    const/4 v0, 0x0

    .line 605
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mTapCount:I

    const-wide/16 v1, -0x1

    .line 606
    iput-wide v1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mLastTapTime:J

    .line 607
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mInMultiTap:Z

    return-void
.end method

.method private showKeyPreviewAndUpdateKey(I)V
    .locals 1

    .line 516
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->updateKey(I)V

    .line 520
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mHasDistinctMultitouch:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->isModifier()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mProxy:Lorg/pocketworkstation/pckeyboard/PointerTracker$UIProxy;

    const/4 v0, -0x1

    invoke-interface {p1, v0, p0}, Lorg/pocketworkstation/pckeyboard/PointerTracker$UIProxy;->showPreview(ILorg/pocketworkstation/pckeyboard/PointerTracker;)V

    goto :goto_0

    .line 523
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mProxy:Lorg/pocketworkstation/pckeyboard/PointerTracker$UIProxy;

    invoke-interface {v0, p1, p0}, Lorg/pocketworkstation/pckeyboard/PointerTracker$UIProxy;->showPreview(ILorg/pocketworkstation/pckeyboard/PointerTracker;)V

    :goto_0
    return-void
.end method

.method private startLongPressTimer(I)V
    .locals 3

    .line 528
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->isInMomentaryAutoModeSwitchState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mHandler:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;

    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget v1, v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->longpressTimeout:I

    mul-int/lit8 v1, v1, 0x3

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, p1, p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;->startLongPressTimer(JILorg/pocketworkstation/pckeyboard/PointerTracker;)V

    goto :goto_0

    .line 532
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mHandler:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;

    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget v1, v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->longpressTimeout:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, p1, p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;->startLongPressTimer(JILorg/pocketworkstation/pckeyboard/PointerTracker;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getDownTime()J
    .locals 2

    .line 477
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyState:Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;->getDownTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getKey(I)Lorg/pocketworkstation/pckeyboard/Keyboard$Key;
    .locals 1

    .line 216
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeys:[Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getLastX()I
    .locals 1

    .line 469
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyState:Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;->getLastX()I

    move-result v0

    return v0
.end method

.method public getLastY()I
    .locals 1

    .line 473
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyState:Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;->getLastY()I

    move-result v0

    return v0
.end method

.method public getPreviewText(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Ljava/lang/CharSequence;
    .locals 3

    .line 589
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mInMultiTap:Z

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mPreviewLabel:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 592
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mPreviewLabel:Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    iget v2, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mTapCount:I

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mTapCount:I

    :goto_0
    aget p1, p1, v1

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 593
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mPreviewLabel:Ljava/lang/StringBuilder;

    return-object p1

    .line 595
    :cond_1
    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->isDeadKey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/pocketworkstation/pckeyboard/DeadAccentSequence;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 598
    :cond_2
    iget-object p1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    return-object p1
.end method

.method getStartX()I
    .locals 1

    .line 482
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyState:Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;->getStartX()I

    move-result v0

    return v0
.end method

.method getStartY()I
    .locals 1

    .line 486
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyState:Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;->getStartY()I

    move-result v0

    return v0
.end method

.method public isInSlidingKeyInput()Z
    .locals 1

    .line 204
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    return v0
.end method

.method public isModifier()Z
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyState:Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;->getKeyIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->isModifierInternal(I)Z

    move-result v0

    return v0
.end method

.method public isOnModifierKey(II)Z
    .locals 2

    .line 237
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyDetector:Lorg/pocketworkstation/pckeyboard/KeyDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/pocketworkstation/pckeyboard/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->isModifierInternal(I)Z

    move-result p1

    return p1
.end method

.method public isSpaceKey(I)Z
    .locals 2

    .line 241
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->getKey(I)Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 242
    iget-object v1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    if-eqz v1, :cond_0

    iget-object p1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    aget p1, p1, v0

    const/16 v1, 0x20

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onCancelEvent(IIJ)V
    .locals 0

    .line 450
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mHandler:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;->cancelKeyTimers()V

    .line 451
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mHandler:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;->cancelPopupPreview()V

    const/4 p1, -0x1

    .line 452
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->showKeyPreviewAndUpdateKey(I)V

    const/4 p1, 0x0

    .line 453
    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 454
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyState:Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;->getKeyIndex()I

    move-result p1

    .line 455
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 456
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mProxy:Lorg/pocketworkstation/pckeyboard/PointerTracker$UIProxy;

    iget-object p3, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeys:[Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    aget-object p1, p3, p1

    invoke-interface {p2, p1}, Lorg/pocketworkstation/pckeyboard/PointerTracker$UIProxy;->invalidateKey(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)V

    :cond_0
    return-void
.end method

.method public onDownEvent(IIJ)V
    .locals 4

    .line 290
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyState:Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;->onDownKey(IIJ)I

    move-result v0

    const/4 v1, 0x0

    .line 291
    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    .line 292
    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 293
    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mIsRepeatableKey:Z

    .line 294
    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 295
    invoke-direct {p0, p3, p4, v0}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->checkMultiTap(JI)V

    .line 296
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mListener:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    if-eqz v2, :cond_1

    .line 297
    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeys:[Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    aget-object v2, v2, v0

    .line 299
    iget-object v3, v2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mListener:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-virtual {v2}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->getPrimaryCode()I

    move-result v2

    invoke-interface {v3, v2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onPress(I)V

    .line 303
    :cond_0
    iget-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    if-eqz v2, :cond_1

    .line 304
    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    .line 305
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyState:Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;->onDownKey(IIJ)I

    move-result v0

    .line 309
    :cond_1
    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 310
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeys:[Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    aget-object p1, p1, v0

    iget-boolean p1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->repeatable:Z

    if-eqz p1, :cond_2

    .line 311
    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->repeatKey(I)V

    .line 312
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mHandler:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;

    iget p2, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mDelayBeforeKeyRepeatStart:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3, v0, p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;->startKeyRepeatTimer(JILorg/pocketworkstation/pckeyboard/PointerTracker;)V

    const/4 p1, 0x1

    .line 313
    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mIsRepeatableKey:Z

    .line 315
    :cond_2
    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->startLongPressTimer(I)V

    .line 317
    :cond_3
    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->showKeyPreviewAndUpdateKey(I)V

    return-void
.end method

.method public onMoveEvent(IIJ)V
    .locals 4

    .line 360
    iget-boolean p3, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    if-eqz p3, :cond_0

    return-void

    .line 362
    :cond_0
    iget-object p3, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyState:Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;

    .line 363
    invoke-virtual {p3, p1, p2}, Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;->onMoveKey(II)I

    move-result p4

    .line 364
    invoke-virtual {p3}, Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;->getKeyIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->getKey(I)Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    move-result-object v0

    .line 365
    invoke-direct {p0, p4}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    .line 366
    invoke-direct {p0, p1, p2, p4}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->isMinorMoveBounce(III)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 371
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mListener:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    if-eqz v0, :cond_2

    .line 372
    invoke-virtual {p0, p4}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->getKey(I)Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    move-result-object v0

    .line 373
    iget-object v1, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mListener:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->getPrimaryCode()I

    move-result v0

    invoke-interface {v1, v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onPress(I)V

    .line 377
    :cond_1
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    if-eqz v0, :cond_2

    .line 378
    iput-boolean v3, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    .line 379
    invoke-virtual {p3, p1, p2}, Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;->onMoveKey(II)I

    move-result p4

    .line 382
    :cond_2
    invoke-virtual {p3, p4, p1, p2}, Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;->onMoveToNewKey(III)I

    .line 383
    invoke-direct {p0, p4}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->startLongPressTimer(I)V

    goto :goto_0

    :cond_3
    if-nez v1, :cond_a

    .line 388
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 389
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mListener:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    if-eqz v1, :cond_4

    .line 390
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mListener:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->getPrimaryCode()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onRelease(I)V

    .line 391
    :cond_4
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->resetMultiTap()V

    .line 392
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mListener:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    if-eqz v1, :cond_7

    .line 393
    invoke-virtual {p0, p4}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->getKey(I)Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    move-result-object v1

    .line 394
    iget-object v2, v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mListener:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->getPrimaryCode()I

    move-result v1

    invoke-interface {v2, v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onPress(I)V

    .line 398
    :cond_5
    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    if-eqz v1, :cond_6

    .line 399
    iput-boolean v3, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    .line 400
    invoke-virtual {p3, p1, p2}, Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;->onMoveKey(II)I

    move-result p4

    .line 402
    :cond_6
    invoke-static {v0}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->addSlideKey(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)V

    .line 404
    :cond_7
    invoke-virtual {p3, p4, p1, p2}, Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;->onMoveToNewKey(III)I

    .line 405
    invoke-direct {p0, p4}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->startLongPressTimer(I)V

    goto :goto_0

    :cond_8
    if-eqz v0, :cond_a

    .line 408
    invoke-direct {p0, p1, p2, p4}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->isMinorMoveBounce(III)Z

    move-result v1

    if-nez v1, :cond_a

    .line 411
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 412
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mListener:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    if-eqz v1, :cond_9

    .line 413
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mListener:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->getPrimaryCode()I

    move-result v0

    invoke-interface {v1, v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onRelease(I)V

    .line 414
    :cond_9
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->resetMultiTap()V

    .line 415
    invoke-virtual {p3, p4, p1, p2}, Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;->onMoveToNewKey(III)I

    .line 416
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mHandler:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;->cancelLongPressTimer()V

    .line 419
    :cond_a
    :goto_0
    invoke-virtual {p3}, Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;->getKeyIndex()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->showKeyPreviewAndUpdateKey(I)V

    return-void
.end method

.method public onTouchEvent(IIIJ)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 282
    :pswitch_1
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->onCancelEvent(IIJ)V

    goto :goto_0

    .line 271
    :pswitch_2
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->onMoveEvent(IIJ)V

    goto :goto_0

    .line 279
    :pswitch_3
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->onUpEvent(IIJ)V

    goto :goto_0

    .line 275
    :pswitch_4
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->onDownEvent(IIJ)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onUpEvent(IIJ)V
    .locals 7

    .line 425
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mHandler:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;->cancelKeyTimers()V

    .line 426
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mHandler:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;->cancelPopupPreview()V

    const/4 v0, -0x1

    .line 427
    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->showKeyPreviewAndUpdateKey(I)V

    const/4 v0, 0x0

    .line 428
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 429
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->sendSlideKeys()V

    .line 430
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    if-eqz v0, :cond_0

    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyState:Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;

    invoke-virtual {v0, p1, p2}, Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;->onUpKey(II)I

    move-result v0

    .line 433
    invoke-direct {p0, p1, p2, v0}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->isMinorMoveBounce(III)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyState:Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;->getKeyIndex()I

    move-result v0

    .line 436
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyState:Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;->getKeyX()I

    move-result p1

    .line 437
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyState:Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;

    invoke-virtual {p2}, Lorg/pocketworkstation/pckeyboard/PointerTracker$KeyState;->getKeyY()I

    move-result p2

    :cond_1
    move v3, p1

    move v4, p2

    .line 439
    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mIsRepeatableKey:Z

    if-nez p1, :cond_2

    move-object v1, p0

    move v2, v0

    move-wide v5, p3

    .line 440
    invoke-direct/range {v1 .. v6}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->detectAndSendKey(IIIJ)V

    .line 443
    :cond_2
    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 444
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mProxy:Lorg/pocketworkstation/pckeyboard/PointerTracker$UIProxy;

    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeys:[Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    aget-object p2, p2, v0

    invoke-interface {p1, p2}, Lorg/pocketworkstation/pckeyboard/PointerTracker$UIProxy;->invalidateKey(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)V

    :cond_3
    return-void
.end method

.method public repeatKey(I)V
    .locals 7

    .line 460
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->getKey(I)Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 464
    iget v3, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    iget v4, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    const-wide/16 v5, -0x1

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->detectAndSendKey(IIIJ)V

    :cond_0
    return-void
.end method

.method sendSlideKeys()V
    .locals 9

    .line 335
    sget-boolean v0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->sSlideKeyHack:Z

    if-nez v0, :cond_0

    return-void

    .line 336
    :cond_0
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget v0, v0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->sendSlideKeys:I

    and-int/lit8 v1, v0, 0x4

    if-lez v1, :cond_1

    .line 339
    sget-object v0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->sSlideKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    .line 340
    iget v4, v3, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    iget v5, v3, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    const-wide/16 v6, -0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->detectAndSendKey(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;IIJ)V

    goto :goto_0

    .line 344
    :cond_1
    sget-object v1, Lorg/pocketworkstation/pckeyboard/PointerTracker;->sSlideKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    and-int/lit8 v2, v0, 0x1

    if-lez v2, :cond_2

    .line 346
    sget-object v2, Lorg/pocketworkstation/pckeyboard/PointerTracker;->sSlideKeys:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    .line 347
    iget v5, v4, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    iget v6, v4, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    const-wide/16 v7, -0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->detectAndSendKey(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;IIJ)V

    :cond_2
    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_3

    .line 350
    sget-object v0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->sSlideKeys:Ljava/util/List;

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    .line 351
    iget v3, v2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    iget v4, v2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    const-wide/16 v5, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->detectAndSendKey(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;IIJ)V

    .line 354
    :cond_3
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->clearSlideKeys()V

    return-void
.end method

.method public setAlreadyProcessed()V
    .locals 1

    const/4 v0, 0x1

    .line 265
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    return-void
.end method

.method public setKeyboard([Lorg/pocketworkstation/pckeyboard/Keyboard$Key;F)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    .line 197
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeys:[Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    mul-float p2, p2, p2

    float-to-int p1, p2

    .line 198
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyHysteresisDistanceSquared:I

    const/4 p1, 0x1

    .line 200
    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    return-void

    .line 196
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setOnKeyboardActionListener(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mListener:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    return-void
.end method

.method public setSlidingKeyInputState(Z)V
    .locals 0

    .line 208
    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    return-void
.end method

.method public updateKey(I)V
    .locals 3

    .line 246
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    if-eqz v0, :cond_0

    return-void

    .line 248
    :cond_0
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mPreviousKey:I

    .line 249
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mPreviousKey:I

    if-eq p1, v0, :cond_3

    .line 251
    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 254
    :goto_0
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeys:[Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->onReleased(Z)V

    .line 255
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mProxy:Lorg/pocketworkstation/pckeyboard/PointerTracker$UIProxy;

    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeys:[Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    aget-object v0, v2, v0

    invoke-interface {v1, v0}, Lorg/pocketworkstation/pckeyboard/PointerTracker$UIProxy;->invalidateKey(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)V

    .line 257
    :cond_2
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 258
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeys:[Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->onPressed()V

    .line 259
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mProxy:Lorg/pocketworkstation/pckeyboard/PointerTracker$UIProxy;

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mKeys:[Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    aget-object p1, v1, p1

    invoke-interface {v0, p1}, Lorg/pocketworkstation/pckeyboard/PointerTracker$UIProxy;->invalidateKey(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)V

    :cond_3
    return-void
.end method
