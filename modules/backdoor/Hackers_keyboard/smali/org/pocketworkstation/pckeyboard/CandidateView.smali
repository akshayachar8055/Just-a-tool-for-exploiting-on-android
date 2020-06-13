.class public Lorg/pocketworkstation/pckeyboard/CandidateView;
.super Landroid/view/View;
.source "CandidateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/pocketworkstation/pckeyboard/CandidateView$CandidateStripGestureListener;
    }
.end annotation


# static fields
.field private static final MAX_SUGGESTIONS:I = 0x20

.field private static final OUT_OF_BOUNDS_WORD_INDEX:I = -0x1

.field private static final OUT_OF_BOUNDS_X_COORD:I = -0x1

.field private static final SCROLL_PIXELS:I = 0x14

.field private static final X_GAP:I = 0xa


# instance fields
.field private mAddToDictionaryHint:Ljava/lang/CharSequence;

.field private mBgPadding:Landroid/graphics/Rect;

.field private final mColorNormal:I

.field private final mColorOther:I

.field private final mColorRecommended:I

.field private mCurrentWordIndex:I

.field private final mDescent:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mHaveMinimalSuggestion:Z

.field private final mMinTouchableWidth:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mPopupPreviewX:I

.field private mPopupPreviewY:I

.field private final mPreviewPopup:Landroid/widget/PopupWindow;

.field private final mPreviewText:Landroid/widget/TextView;

.field private mScrolled:Z

.field private mSelectedIndex:I

.field private mSelectedString:Ljava/lang/CharSequence;

.field private final mSelectionHighlight:Landroid/graphics/drawable/Drawable;

.field private mService:Lorg/pocketworkstation/pckeyboard/LatinIME;

.field private mShowingAddToDictionary:Z

.field private mShowingCompletions:Z

.field private final mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetScrollX:I

.field private mTotalWidth:I

.field private mTouchX:I

.field private mTypedWordValid:Z

.field private final mWordWidth:[I

.field private final mWordX:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    const/4 p2, -0x1

    .line 52
    iput p2, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mTouchX:I

    const/16 p2, 0x20

    .line 68
    new-array v0, p2, [I

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mWordWidth:[I

    .line 69
    new-array p2, p2, [I

    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mWordX:[I

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700a1

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    const-string p2, "layout_inflater"

    .line 104
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 106
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/4 p1, 0x0

    const v1, 0x7f0a001c

    .line 107
    invoke-virtual {p2, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    .line 108
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {p2, v1, v1}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 109
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 110
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const p2, 0x7f0d009e

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 113
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-lt p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 114
    :goto_0
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, p1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const p1, 0x7f050026

    .line 115
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mColorNormal:I

    const p1, 0x7f050028

    .line 116
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mColorRecommended:I

    const p1, 0x7f050027

    .line 117
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mColorOther:I

    const p1, 0x7f0700a0

    .line 118
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mDivider:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f0c0067

    .line 119
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mAddToDictionaryHint:Ljava/lang/CharSequence;

    .line 121
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    .line 122
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mColorNormal:I

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    sget-object v2, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget v2, v2, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->candidateScalePref:F

    mul-float p2, p2, v2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 125
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 126
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 127
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mDescent:I

    const p1, 0x7f06004c

    .line 128
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mMinTouchableWidth:I

    .line 130
    new-instance p1, Landroid/view/GestureDetector;

    new-instance p2, Lorg/pocketworkstation/pckeyboard/CandidateView$CandidateStripGestureListener;

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mMinTouchableWidth:I

    invoke-direct {p2, p0, v0}, Lorg/pocketworkstation/pckeyboard/CandidateView$CandidateStripGestureListener;-><init>(Lorg/pocketworkstation/pckeyboard/CandidateView;I)V

    invoke-direct {p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 132
    invoke-virtual {p0, v1}, Lorg/pocketworkstation/pckeyboard/CandidateView;->setWillNotDraw(Z)V

    .line 133
    invoke-virtual {p0, v1}, Lorg/pocketworkstation/pckeyboard/CandidateView;->setHorizontalScrollBarEnabled(Z)V

    .line 134
    invoke-virtual {p0, v1}, Lorg/pocketworkstation/pckeyboard/CandidateView;->setVerticalScrollBarEnabled(Z)V

    .line 135
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lorg/pocketworkstation/pckeyboard/CandidateView;->scrollTo(II)V

    return-void
.end method

.method static synthetic access$000(Lorg/pocketworkstation/pckeyboard/CandidateView;)Ljava/util/ArrayList;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lorg/pocketworkstation/pckeyboard/CandidateView;)[I
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mWordWidth:[I

    return-object p0
.end method

.method static synthetic access$200(Lorg/pocketworkstation/pckeyboard/CandidateView;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->longPressFirstWord()V

    return-void
.end method

.method static synthetic access$300(Lorg/pocketworkstation/pckeyboard/CandidateView;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mScrolled:Z

    return p0
.end method

.method static synthetic access$302(Lorg/pocketworkstation/pckeyboard/CandidateView;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mScrolled:Z

    return p1
.end method

.method static synthetic access$400(Lorg/pocketworkstation/pckeyboard/CandidateView;)I
    .locals 0

    .line 42
    iget p0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mTotalWidth:I

    return p0
.end method

.method static synthetic access$502(Lorg/pocketworkstation/pckeyboard/CandidateView;I)I
    .locals 0

    .line 42
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mTargetScrollX:I

    return p1
.end method

.method static synthetic access$600(Lorg/pocketworkstation/pckeyboard/CandidateView;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->hidePreview()V

    return-void
.end method

.method private hidePreview()V
    .locals 1

    const/4 v0, -0x1

    .line 438
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mTouchX:I

    .line 439
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mCurrentWordIndex:I

    .line 440
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private longPressFirstWord()V
    .locals 5

    .line 480
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 481
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    return-void

    .line 482
    :cond_0
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mService:Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/pocketworkstation/pckeyboard/LatinIME;->addWordToDictionary(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 483
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c001d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->showPreview(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private scrollToTarget()V
    .locals 2

    .line 298
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->getScrollX()I

    move-result v0

    .line 299
    iget v1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mTargetScrollX:I

    if-le v1, v0, :cond_1

    add-int/lit8 v0, v0, 0x14

    .line 301
    iget v1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mTargetScrollX:I

    if-lt v0, v1, :cond_0

    .line 302
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mTargetScrollX:I

    .line 303
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/CandidateView;->scrollTo(II)V

    .line 304
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->requestLayout()V

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/CandidateView;->scrollTo(II)V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x14

    .line 310
    iget v1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mTargetScrollX:I

    if-gt v0, v1, :cond_2

    .line 311
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mTargetScrollX:I

    .line 312
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/CandidateView;->scrollTo(II)V

    .line 313
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->requestLayout()V

    goto :goto_0

    .line 315
    :cond_2
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/CandidateView;->scrollTo(II)V

    .line 318
    :goto_0
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->invalidate()V

    return-void
.end method

.method private showPreview(ILjava/lang/String;)V
    .locals 6

    .line 444
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mCurrentWordIndex:I

    .line 445
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mCurrentWordIndex:I

    .line 447
    iget v1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mCurrentWordIndex:I

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_4

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 449
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->hidePreview()V

    goto/16 :goto_2

    :cond_1
    if-eqz p2, :cond_2

    goto :goto_0

    .line 451
    :cond_2
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    .line 452
    :goto_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 454
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 453
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 455
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p2

    const/high16 v0, 0x41a00000    # 20.0f

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 456
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    .line 457
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    .line 458
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    .line 460
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mWordX:[I

    aget v3, v3, p1

    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mWordWidth:[I

    aget p1, v4, p1

    sub-int/2addr p1, p2

    const/4 p2, 0x2

    div-int/2addr p1, p2

    add-int/2addr v3, p1

    iput v3, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPopupPreviewX:I

    neg-int p1, v2

    .line 462
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPopupPreviewY:I

    .line 463
    new-array p1, p2, [I

    .line 464
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/CandidateView;->getLocationInWindow([I)V

    .line 465
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    const/4 v3, 0x1

    if-eqz p2, :cond_3

    .line 466
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget v4, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPopupPreviewX:I

    iget v5, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPopupPreviewY:I

    aget p1, p1, v3

    add-int/2addr v5, p1

    invoke-virtual {p2, v4, v5, v0, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_1

    .line 469
    :cond_3
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 470
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 471
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPopupPreviewX:I

    iget v2, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPopupPreviewY:I

    aget p1, p1, v3

    add-int/2addr v2, p1

    invoke-virtual {p2, p0, v1, v0, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 474
    :goto_1
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 368
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    .line 369
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mTouchX:I

    const/4 v1, 0x0

    .line 370
    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 371
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mSelectedIndex:I

    const/4 v0, 0x0

    .line 372
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mShowingAddToDictionary:Z

    .line 373
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->invalidate()V

    .line 374
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mWordWidth:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 375
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mWordX:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .line 203
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mTotalWidth:I

    return v0
.end method

.method public dismissAddToDictionaryHint()Z
    .locals 1

    .line 356
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mShowingAddToDictionary:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 357
    :cond_0
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->clear()V

    const/4 v0, 0x1

    return v0
.end method

.method getSuggestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isShowingAddToDictionaryHint()Z
    .locals 1

    .line 344
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mShowingAddToDictionary:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 489
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 490
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->hidePreview()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    if-eqz v8, :cond_0

    .line 213
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    :cond_0
    const/4 v9, 0x0

    .line 215
    iput v9, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mTotalWidth:I

    .line 217
    invoke-virtual/range {p0 .. p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->getHeight()I

    move-result v10

    .line 218
    iget-object v1, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    if-nez v1, :cond_2

    .line 219
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v9, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    .line 220
    invoke-virtual/range {p0 .. p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 221
    invoke-virtual/range {p0 .. p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 223
    :cond_1
    iget-object v1, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mDivider:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 224
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 223
    invoke-virtual {v1, v9, v9, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 227
    :cond_2
    iget-object v1, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 228
    iget-object v12, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    .line 229
    iget-object v13, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    .line 230
    iget v14, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mTouchX:I

    .line 231
    invoke-virtual/range {p0 .. p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->getScrollX()I

    move-result v15

    .line 232
    iget-boolean v7, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mScrolled:Z

    .line 233
    iget-boolean v6, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mTypedWordValid:Z

    int-to-float v1, v10

    .line 234
    iget-object v2, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mDescent:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    div-int/lit8 v5, v1, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v11, :cond_f

    .line 240
    iget-object v2, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-nez v2, :cond_3

    move v9, v5

    move/from16 v16, v6

    move/from16 v18, v7

    move/from16 v22, v10

    move/from16 v19, v11

    move-object/from16 v20, v12

    move v11, v4

    goto/16 :goto_5

    .line 242
    :cond_3
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    move/from16 v17, v1

    .line 244
    iget v1, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mColorNormal:I

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    iget-boolean v1, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mHaveMinimalSuggestion:Z

    move/from16 v18, v5

    const/4 v5, 0x1

    if-eqz v1, :cond_6

    if-ne v4, v5, :cond_4

    if-eqz v6, :cond_5

    :cond_4
    if-nez v4, :cond_6

    if-eqz v6, :cond_6

    .line 247
    :cond_5
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 248
    iget v1, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mColorRecommended:I

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v17, 0x1

    goto :goto_1

    :cond_6
    if-nez v4, :cond_7

    if-ne v9, v5, :cond_8

    if-le v11, v5, :cond_8

    .line 253
    :cond_7
    iget v1, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mColorOther:I

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    :cond_8
    :goto_1
    iget-object v1, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mWordWidth:[I

    aget v1, v1, v4

    if-nez v1, :cond_9

    const/4 v5, 0x0

    .line 257
    invoke-virtual {v13, v2, v5, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    .line 258
    iget v5, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mMinTouchableWidth:I

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x14

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 259
    iget-object v5, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mWordWidth:[I

    aput v1, v5, v4

    :cond_9
    move v5, v1

    .line 262
    iget-object v1, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mWordX:[I

    aput v3, v1, v4

    const/4 v1, -0x1

    move/from16 v19, v11

    if-eq v14, v1, :cond_b

    if-nez v7, :cond_b

    add-int v1, v14, v15

    if-lt v1, v3, :cond_b

    add-int v11, v3, v5

    if-ge v1, v11, :cond_b

    if-eqz v8, :cond_a

    .line 266
    iget-boolean v1, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mShowingAddToDictionary:Z

    if-nez v1, :cond_a

    int-to-float v1, v3

    const/4 v11, 0x0

    .line 267
    invoke-virtual {v8, v1, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 268
    iget-object v1, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    iget v11, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v20, v12

    const/4 v12, 0x0

    invoke-virtual {v1, v12, v11, v5, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 269
    iget-object v1, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v1, v3

    int-to-float v1, v1

    const/4 v11, 0x0

    .line 270
    invoke-virtual {v8, v1, v11}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    :cond_a
    move-object/from16 v20, v12

    const/4 v12, 0x0

    .line 272
    :goto_2
    iput-object v2, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 273
    iput v4, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mSelectedIndex:I

    goto :goto_3

    :cond_b
    move-object/from16 v20, v12

    const/4 v12, 0x0

    :goto_3
    if-eqz v8, :cond_e

    const/4 v11, 0x0

    .line 277
    div-int/lit8 v1, v5, 0x2

    add-int/2addr v1, v3

    int-to-float v1, v1

    move/from16 v21, v3

    move/from16 v12, v18

    int-to-float v3, v12

    move/from16 v16, v1

    move-object/from16 v1, p1

    move/from16 v18, v3

    move/from16 v22, v10

    move/from16 v10, v21

    move v3, v11

    move v11, v4

    move v4, v9

    move v9, v12

    move v12, v5

    move/from16 v5, v16

    move/from16 v16, v6

    move/from16 v6, v18

    move/from16 v18, v7

    move-object v7, v13

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 278
    iget v1, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mColorOther:I

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-int v3, v10, v12

    int-to-float v1, v3

    const/4 v2, 0x0

    .line 279
    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 281
    iget-boolean v1, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mShowingAddToDictionary:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    if-eq v11, v1, :cond_d

    .line 282
    :cond_c
    iget-object v1, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_d
    neg-int v1, v10

    sub-int/2addr v1, v12

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 284
    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_4

    :cond_e
    move v11, v4

    move v12, v5

    move/from16 v16, v6

    move/from16 v22, v10

    move/from16 v9, v18

    move v10, v3

    move/from16 v18, v7

    .line 286
    :goto_4
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    add-int v3, v10, v12

    move/from16 v1, v17

    :goto_5
    add-int/lit8 v4, v11, 0x1

    move v5, v9

    move/from16 v6, v16

    move/from16 v7, v18

    move/from16 v11, v19

    move-object/from16 v12, v20

    move/from16 v10, v22

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_f
    move/from16 v17, v1

    move v10, v3

    .line 289
    invoke-virtual/range {p0 .. p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_10

    .line 290
    iget-object v1, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mService:Lorg/pocketworkstation/pckeyboard/LatinIME;

    move/from16 v9, v17

    invoke-virtual {v1, v9}, Lorg/pocketworkstation/pckeyboard/LatinIME;->onAutoCompletionStateChanged(Z)V

    .line 291
    :cond_10
    iput v10, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mTotalWidth:I

    .line 292
    iget v1, v0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mTargetScrollX:I

    if-eq v1, v15, :cond_11

    .line 293
    invoke-direct/range {p0 .. p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->scrollToTarget()V

    :cond_11
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 381
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 385
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 387
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 388
    iput v2, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mTouchX:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-gtz p1, :cond_3

    .line 397
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    if-eqz p1, :cond_3

    .line 400
    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mShowingCompletions:Z

    .line 406
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mService:Lorg/pocketworkstation/pckeyboard/LatinIME;

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mSelectedIndex:I

    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v4}, Lorg/pocketworkstation/pckeyboard/LatinIME;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    .line 407
    iput-object v3, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 408
    iput v2, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mSelectedIndex:I

    goto :goto_1

    .line 413
    :pswitch_1
    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mScrolled:Z

    if-nez p1, :cond_2

    .line 414
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    .line 415
    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mShowingAddToDictionary:Z

    if-eqz p1, :cond_1

    .line 416
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->longPressFirstWord()V

    .line 417
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->clear()V

    goto :goto_0

    .line 419
    :cond_1
    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mShowingCompletions:Z

    .line 423
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mService:Lorg/pocketworkstation/pckeyboard/LatinIME;

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mSelectedIndex:I

    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v4}, Lorg/pocketworkstation/pckeyboard/LatinIME;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    .line 427
    :cond_2
    :goto_0
    iput-object v3, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 428
    iput v2, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mSelectedIndex:I

    .line 429
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->requestLayout()V

    .line 430
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->hidePreview()V

    .line 431
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->invalidate()V

    goto :goto_1

    .line 392
    :pswitch_2
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->invalidate()V

    :cond_3
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setService(Lorg/pocketworkstation/pckeyboard/LatinIME;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mService:Lorg/pocketworkstation/pckeyboard/LatinIME;

    return-void
.end method

.method public setSuggestions(Ljava/util/List;ZZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;ZZZ)V"
        }
    .end annotation

    .line 323
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->clear()V

    if-eqz p1, :cond_1

    .line 325
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 326
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 327
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    .line 332
    :cond_1
    iput-boolean p2, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mShowingCompletions:Z

    .line 333
    iput-boolean p3, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mTypedWordValid:Z

    .line 334
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->getScrollY()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/pocketworkstation/pckeyboard/CandidateView;->scrollTo(II)V

    .line 335
    iput p2, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mTargetScrollX:I

    .line 336
    iput-boolean p4, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mHaveMinimalSuggestion:Z

    const/4 p1, 0x0

    .line 338
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/CandidateView;->onDraw(Landroid/graphics/Canvas;)V

    .line 339
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->invalidate()V

    .line 340
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->requestLayout()V

    return-void
.end method

.method public showAddToDictionaryHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 349
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mAddToDictionaryHint:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 351
    invoke-virtual {p0, v0, p1, p1, p1}, Lorg/pocketworkstation/pckeyboard/CandidateView;->setSuggestions(Ljava/util/List;ZZZ)V

    const/4 p1, 0x1

    .line 352
    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/CandidateView;->mShowingAddToDictionary:Z

    return-void
.end method
