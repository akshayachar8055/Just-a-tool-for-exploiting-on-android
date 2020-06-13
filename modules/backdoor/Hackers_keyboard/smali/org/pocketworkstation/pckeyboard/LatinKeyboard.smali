.class public Lorg/pocketworkstation/pckeyboard/LatinKeyboard;
.super Lorg/pocketworkstation/pckeyboard/Keyboard;
.source "LatinKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;,
        Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;
    }
.end annotation


# static fields
.field private static final DEBUG_PREFERRED_LETTER:Z = true

.field private static final MINIMUM_SCALE_OF_LANGUAGE_NAME:F = 0.8f

.field private static final OPACITY_FULLY_OPAQUE:I = 0xff

.field private static final OVERLAP_PERCENTAGE_HIGH_PROB:F = 0.85f

.field private static final OVERLAP_PERCENTAGE_LOW_PROB:F = 0.7f

.field private static final SPACEBAR_DRAG_THRESHOLD:F = 0.51f

.field private static final SPACEBAR_LANGUAGE_BASELINE:F = 0.6f

.field private static final SPACEBAR_POPUP_MAX_RATIO:F = 0.4f

.field private static final SPACEBAR_POPUP_MIN_RATIO:F = 0.4f

.field private static final SPACE_LED_LENGTH_PERCENT:I = 0x50

.field private static final TAG:Ljava/lang/String; = "PCKeyboardLK"

.field private static sSpacebarVerticalCorrection:I


# instance fields
.field private m123Key:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

.field private m123Label:Ljava/lang/CharSequence;

.field private m123MicIcon:Landroid/graphics/drawable/Drawable;

.field private m123MicPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private final mButtonArrowLeftIcon:Landroid/graphics/drawable/Drawable;

.field private final mButtonArrowRightIcon:Landroid/graphics/drawable/Drawable;

.field private final mContext:Landroid/content/Context;

.field private mCurrentlyInSpace:Z

.field private mEnterKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

.field private mExtensionKeyboard:Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

.field private mExtensionResId:I

.field private mF1Key:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

.field private mHasVoiceButton:Z

.field private final mHintIcon:Landroid/graphics/drawable/Drawable;

.field private final mIsAlphaFullKeyboard:Z

.field private final mIsAlphaKeyboard:Z

.field private final mIsFnFullKeyboard:Z

.field private mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

.field private mLocale:Ljava/util/Locale;

.field private mMicIcon:Landroid/graphics/drawable/Drawable;

.field private mMicPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mMode:I

.field private mOldShiftIcon:Landroid/graphics/drawable/Drawable;

.field private mPrefDistance:I

.field private mPrefLetter:I

.field private mPrefLetterFrequencies:[I

.field private mPrefLetterX:I

.field private mPrefLetterY:I

.field private final mRes:Landroid/content/res/Resources;

.field private mSettingsIcon:Landroid/graphics/drawable/Drawable;

.field private mSettingsPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

.field private mShiftLockIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mSlidingLocaleIcon:Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;

.field private mSpaceAutoCompletionIndicator:Landroid/graphics/drawable/Drawable;

.field private mSpaceDragLastDiff:I

.field private mSpaceDragStartX:I

.field private mSpaceIcon:Landroid/graphics/drawable/Drawable;

.field private mSpaceKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

.field private final mSpaceKeyIndexArray:[I

.field private mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

.field private final mVerticalGap:I

.field private mVoiceEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;-><init>(Landroid/content/Context;IIF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIF)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 120
    invoke-direct/range {v0 .. v5}, Lorg/pocketworkstation/pckeyboard/Keyboard;-><init>(Landroid/content/Context;IIIF)V

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    .line 124
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mContext:Landroid/content/Context;

    .line 125
    iput p3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mMode:I

    .line 126
    iput-object p4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const p1, 0x7f0700dd

    .line 127
    invoke-virtual {p4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f0700c5

    .line 128
    invoke-virtual {p4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 129
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f0700de

    .line 130
    invoke-virtual {p4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f0700df

    .line 131
    invoke-virtual {p4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceAutoCompletionIndicator:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f0700c6

    .line 132
    invoke-virtual {p4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f0700ca

    .line 133
    invoke-virtual {p4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mMicIcon:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f0700bf

    .line 134
    invoke-virtual {p4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mMicPreviewIcon:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f0700da

    .line 135
    invoke-virtual {p4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSettingsIcon:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f0700c3

    .line 136
    invoke-virtual {p4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSettingsPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 137
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mMicPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f0700c8

    .line 138
    invoke-virtual {p4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mButtonArrowLeftIcon:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f0700c9

    .line 139
    invoke-virtual {p4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mButtonArrowRightIcon:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f0700b7

    .line 140
    invoke-virtual {p4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->m123MicIcon:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f0700ba

    .line 141
    invoke-virtual {p4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->m123MicPreviewIcon:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f07008e

    .line 142
    invoke-virtual {p4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mHintIcon:Landroid/graphics/drawable/Drawable;

    .line 143
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->m123MicPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f06007d

    .line 144
    invoke-virtual {p4, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    sput p1, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->sSpacebarVerticalCorrection:I

    const/4 p1, 0x0

    const/4 p3, 0x1

    const p4, 0x7f0f000b

    if-ne p2, p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 146
    :goto_0
    iput-boolean p4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mIsAlphaKeyboard:Z

    const p4, 0x7f0f0005

    if-ne p2, p4, :cond_1

    const/4 p4, 0x1

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    .line 147
    :goto_1
    iput-boolean p4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mIsAlphaFullKeyboard:Z

    const p4, 0x7f0f0006

    if-eq p2, p4, :cond_3

    const p4, 0x7f0f0002

    if-ne p2, p4, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p2, 0x1

    .line 148
    :goto_3
    iput-boolean p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mIsFnFullKeyboard:Z

    .line 150
    new-array p2, p3, [I

    const/16 p3, 0x20

    invoke-direct {p0, p3}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->indexOf(I)I

    move-result p3

    aput p3, p2, p1

    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceKeyIndexArray:[I

    .line 152
    invoke-super {p0}, Lorg/pocketworkstation/pckeyboard/Keyboard;->getVerticalGap()I

    move-result p1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mVerticalGap:I

    return-void
.end method

.method static synthetic access$100(Lorg/pocketworkstation/pckeyboard/LatinKeyboard;)I
    .locals 0

    .line 41
    iget p0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mVerticalGap:I

    return p0
.end method

.method static synthetic access$200(Lorg/pocketworkstation/pckeyboard/LatinKeyboard;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$300(Lorg/pocketworkstation/pckeyboard/LatinKeyboard;II)I
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->getTextSizeFromTheme(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lorg/pocketworkstation/pckeyboard/LatinKeyboard;)Landroid/content/res/Resources;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$500(Lorg/pocketworkstation/pckeyboard/LatinKeyboard;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lorg/pocketworkstation/pckeyboard/LatinKeyboard;)Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    return-object p0
.end method

.method private distanceFrom(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;II)I
    .locals 2

    .line 748
    iget v0, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    if-le p3, v0, :cond_0

    iget v0, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    iget v1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->height:I

    add-int/2addr v0, v1

    if-ge p3, v0, :cond_0

    .line 749
    iget p3, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    iget p1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p3, p1

    sub-int/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    return p1

    :cond_0
    const p1, 0x7fffffff

    return p1
.end method

.method private drawSpaceBar(IZ)Landroid/graphics/Bitmap;
    .locals 13

    .line 496
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iget v0, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    .line 497
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 498
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 499
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 500
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f050042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 503
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mLocale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    .line 504
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 505
    invoke-virtual {v12, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 p1, 0x1

    .line 506
    invoke-virtual {v12, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 507
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 510
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v2

    .line 512
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mButtonArrowLeftIcon:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mButtonArrowRightIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x1030046

    const/16 v5, 0xe

    .line 514
    invoke-direct {p0, v1, v5}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->getTextSizeFromTheme(II)I

    move-result v1

    int-to-float v7, v1

    const/4 v8, 0x1

    move-object v1, v12

    move v5, v0

    move v6, v9

    .line 512
    invoke-static/range {v1 .. v8}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->layoutSpaceBar(Landroid/graphics/Paint;Ljava/util/Locale;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIFZ)Ljava/lang/String;

    move-result-object v1

    .line 518
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f05003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    int-to-float v3, v9

    const v4, 0x3f19999a    # 0.6f

    mul-float v3, v3, v4

    .line 520
    invoke-virtual {v12}, Landroid/graphics/Paint;->descent()F

    move-result v4

    .line 521
    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 522
    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v3, v4

    invoke-virtual {v11, v1, v2, v4, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 523
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f05003d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 525
    invoke-virtual {v11, v1, v2, v3, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 528
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->getLocaleCount()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 529
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mButtonArrowLeftIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 530
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mButtonArrowRightIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    if-eqz p2, :cond_1

    mul-int/lit8 p1, v0, 0x50

    .line 536
    div-int/lit8 p1, p1, 0x64

    .line 537
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceAutoCompletionIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    sub-int/2addr v0, p1

    .line 538
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v9, p2

    .line 540
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceAutoCompletionIndicator:Landroid/graphics/drawable/Drawable;

    add-int/2addr p1, v0

    add-int/2addr p2, v9

    invoke-virtual {v1, v0, v9, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 541
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceAutoCompletionIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 543
    :cond_1
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 544
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    sub-int/2addr v0, p1

    .line 545
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v9, p2

    .line 547
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    add-int/2addr p1, v0

    add-int/2addr p2, v9

    invoke-virtual {v1, v0, v9, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 548
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-object v10
.end method

.method private drawSynthesizedSettingsHintImage(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 429
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 430
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 431
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 432
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 433
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f050042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 437
    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, p1

    iget v5, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    .line 438
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 439
    iget v5, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v0

    .line 440
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    .line 441
    invoke-direct {p0, p3}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    int-to-float v0, v4

    int-to-float v6, v5

    .line 442
    invoke-virtual {v3, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 443
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int p3, v4

    int-to-float p3, p3

    neg-int v0, v5

    int-to-float v0, v0

    .line 444
    invoke-virtual {v3, p3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 447
    invoke-virtual {p4, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 448
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSpacePreviewWidth()I
    .locals 3

    .line 554
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iget v0, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    .line 555
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->getMinWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 556
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->getScreenHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 554
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getTextSizeFromTheme(II)I
    .locals 4

    .line 776
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x1010095

    aput v3, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 778
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 779
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const-string v1, "PCKeyboardLK"

    .line 780
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTextSizeFromTheme error: resId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " > "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 783
    :cond_0
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    return p1
.end method

.method private static getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I
    .locals 1

    .line 419
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 420
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 421
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public static hasPuncOrSmileysPopup(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Z
    .locals 2

    .line 385
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupResId:I

    const v1, 0x7f0f0014

    if-eq v0, v1, :cond_1

    iget p0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupResId:I

    const v0, 0x7f0f0016

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private inPrefList(I[I)Z
    .locals 2

    .line 743
    array-length v0, p2

    const/4 v1, 0x0

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_1

    aget p1, p2, p1

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private indexOf(I)I
    .locals 5

    .line 767
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 768
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 770
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iget-object v4, v4, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    aget v4, v4, v2

    if-ne v4, p1, :cond_0

    return v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private static layoutSpaceBar(Landroid/graphics/Paint;Ljava/util/Locale;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIFZ)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p6

    .line 456
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    .line 457
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v1

    add-float v6, v3, v3

    sub-float/2addr v5, v6

    .line 459
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v7, p1

    .line 462
    invoke-virtual {v7, v7}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 463
    invoke-static {v0, v8, v2, v6}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I

    move-result v9

    int-to-float v10, v9

    div-float v11, v5, v10

    const/high16 v12, 0x3f800000    # 1.0f

    .line 465
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    mul-float v11, v11, v2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz p7, :cond_1

    .line 469
    invoke-static {v0, v8, v11, v6}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I

    move-result v9

    div-float v10, v11, v2

    const v15, 0x3f4ccccd    # 0.8f

    cmpg-float v10, v10, v15

    if-ltz v10, :cond_0

    int-to-float v10, v9

    cmpl-float v10, v10, v5

    if-lez v10, :cond_3

    :cond_0
    const/4 v13, 0x1

    goto :goto_0

    :cond_1
    cmpl-float v10, v10, v5

    if-lez v10, :cond_2

    const/4 v13, 0x1

    :cond_2
    move v11, v2

    :cond_3
    :goto_0
    if-eqz v13, :cond_4

    .line 478
    invoke-virtual/range {p1 .. p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 479
    invoke-static {v0, v8, v2, v6}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I

    move-result v9

    int-to-float v6, v9

    div-float/2addr v5, v6

    .line 480
    invoke-static {v5, v12}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float v11, v2, v5

    .line 482
    :cond_4
    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    move/from16 v0, p5

    int-to-float v0, v0

    const v2, 0x3f19999a    # 0.6f

    mul-float v0, v0, v2

    sub-float v2, v0, v4

    float-to-int v2, v2

    sub-int/2addr v1, v9

    .line 487
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v4, v1, v3

    float-to-int v4, v4

    float-to-int v5, v1

    float-to-int v0, v0

    move-object/from16 v6, p2

    .line 488
    invoke-virtual {v6, v4, v2, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v4, v9

    add-float/2addr v1, v4

    float-to-int v4, v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    move-object/from16 v3, p3

    .line 489
    invoke-virtual {v3, v4, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object v8
.end method

.method private setDefaultBounds(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 269
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private setMicF1Key(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)V
    .locals 6

    .line 334
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    iget v2, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    iget v3, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->height:I

    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mMicIcon:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mHintIcon:Landroid/graphics/drawable/Drawable;

    .line 335
    invoke-direct {p0, v2, v3, v4, v5}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->drawSynthesizedSettingsHintImage(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 337
    iget v1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupResId:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const v1, 0x7f0f0013

    .line 338
    iput v1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupResId:I

    goto :goto_1

    .line 340
    :cond_0
    iput-boolean v2, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->modifier:Z

    .line 341
    iget-object v1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 342
    iget-object v1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->shiftLabel:Ljava/lang/CharSequence;

    .line 343
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->shiftLabel:Ljava/lang/CharSequence;

    .line 344
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 347
    iput-object v1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 348
    iput-object v1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->shiftLabel:Ljava/lang/CharSequence;

    .line 349
    new-array v1, v2, [I

    const/4 v2, 0x0

    const/16 v3, -0x66

    aput v3, v1, v2

    iput-object v1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    .line 350
    iput-object v0, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 351
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mMicPreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private setNonMicF1Key(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;Ljava/lang/String;I)V
    .locals 3

    .line 369
    iget-object v0, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->shiftLabel:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 370
    new-array p2, v1, [I

    iget-object p3, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    aput p3, p2, v2

    iput-object p2, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    return-void

    .line 373
    :cond_0
    iput-object p2, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 374
    new-array v0, v1, [I

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    aput p2, v0, v2

    iput-object v0, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    .line 375
    iput p3, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupResId:I

    .line 376
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mHintIcon:Landroid/graphics/drawable/Drawable;

    iput-object p2, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    .line 377
    iput-object p2, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private setSettingsF1Key(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)V
    .locals 8

    .line 355
    iget-object v0, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->shiftLabel:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 356
    new-array v0, v1, [I

    iget-object v1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    aput v1, v0, v2

    iput-object v0, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    return-void

    .line 359
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    iget v4, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    iget v5, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->height:I

    iget-object v6, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSettingsIcon:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mHintIcon:Landroid/graphics/drawable/Drawable;

    .line 360
    invoke-direct {p0, v4, v5, v6, v7}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->drawSynthesizedSettingsHintImage(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    .line 361
    iput-object v3, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 362
    iput-object v0, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 363
    new-array v0, v1, [I

    const/16 v1, -0x64

    aput v1, v0, v2

    iput-object v0, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    const v0, 0x7f0f0013

    .line 364
    iput v0, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupResId:I

    .line 365
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSettingsPreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private update123Key()V
    .locals 3

    .line 285
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->m123Key:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mIsAlphaKeyboard:Z

    if-eqz v0, :cond_1

    .line 286
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mVoiceEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mHasVoiceButton:Z

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->m123Key:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->m123MicIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 288
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->m123Key:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->m123MicPreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 289
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->m123Key:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iput-object v1, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 291
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->m123Key:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iput-object v1, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 292
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->m123Key:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iput-object v1, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 293
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->m123Key:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->m123Label:Ljava/lang/CharSequence;

    iput-object v1, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    :cond_1
    :goto_0
    return-void
.end method

.method private updateDynamicKeys()V
    .locals 0

    .line 279
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->update123Key()V

    .line 280
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->updateF1Key()V

    return-void
.end method

.method private updateF1Key()V
    .locals 3

    .line 300
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mF1Key:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    if-nez v0, :cond_0

    return-void

    .line 303
    :cond_0
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mIsAlphaKeyboard:Z

    const v1, 0x7f0f0011

    if-eqz v0, :cond_4

    .line 304
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mMode:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 305
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mF1Key:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    const-string v1, "/"

    const v2, 0x7f0f0015

    invoke-direct {p0, v0, v1, v2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->setNonMicF1Key(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;Ljava/lang/String;I)V

    goto :goto_0

    .line 306
    :cond_1
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mMode:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 307
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mF1Key:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    const-string v1, "@"

    const v2, 0x7f0f0010

    invoke-direct {p0, v0, v1, v2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->setNonMicF1Key(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;Ljava/lang/String;I)V

    goto :goto_0

    .line 309
    :cond_2
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mVoiceEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mHasVoiceButton:Z

    if-eqz v0, :cond_3

    .line 310
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mF1Key:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->setMicF1Key(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)V

    goto :goto_0

    .line 312
    :cond_3
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mF1Key:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    const-string v2, ","

    invoke-direct {p0, v0, v2, v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->setNonMicF1Key(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;Ljava/lang/String;I)V

    goto :goto_0

    .line 315
    :cond_4
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mIsAlphaFullKeyboard:Z

    if-eqz v0, :cond_6

    .line 316
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mVoiceEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mHasVoiceButton:Z

    if-eqz v0, :cond_5

    .line 317
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mF1Key:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->setMicF1Key(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)V

    goto :goto_0

    .line 319
    :cond_5
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mF1Key:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->setSettingsF1Key(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)V

    goto :goto_0

    .line 321
    :cond_6
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mIsFnFullKeyboard:Z

    if-eqz v0, :cond_7

    .line 322
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mF1Key:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->setMicF1Key(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)V

    goto :goto_0

    .line 324
    :cond_7
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mVoiceEnabled:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mHasVoiceButton:Z

    if-eqz v0, :cond_8

    .line 325
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mF1Key:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->setMicF1Key(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)V

    goto :goto_0

    .line 327
    :cond_8
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mF1Key:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    const-string v2, ","

    invoke-direct {p0, v0, v2, v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->setNonMicF1Key(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private updateLocaleDrag(I)V
    .locals 4

    .line 561
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSlidingLocaleIcon:Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;

    if-nez v0, :cond_0

    .line 562
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->getSpacePreviewWidth()I

    move-result v0

    .line 563
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 564
    new-instance v2, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;

    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, p0, v3, v0, v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;-><init>(Lorg/pocketworkstation/pckeyboard/LatinKeyboard;Landroid/graphics/drawable/Drawable;II)V

    iput-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSlidingLocaleIcon:Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;

    .line 565
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSlidingLocaleIcon:Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->setBounds(IIII)V

    .line 566
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSlidingLocaleIcon:Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;

    iput-object v1, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 568
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSlidingLocaleIcon:Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;

    invoke-static {v0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->access$000(Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;I)V

    .line 569
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_1

    .line 570
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 572
    :cond_1
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSlidingLocaleIcon:Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;

    iput-object v0, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 574
    :goto_0
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iget-object p1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private updateSpaceBarForLocale(Z)V
    .locals 4

    .line 401
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    if-nez v0, :cond_0

    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mLocale:Ljava/util/Locale;

    const/16 v1, 0xff

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    .line 405
    invoke-direct {p0, v1, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->drawSpaceBar(IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 409
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    .line 410
    invoke-direct {p0, v1, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->drawSpaceBar(IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 412
    :cond_2
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0700de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Lorg/pocketworkstation/pckeyboard/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Lorg/pocketworkstation/pckeyboard/Keyboard$Key;
    .locals 8

    .line 158
    new-instance v7, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;-><init>(Lorg/pocketworkstation/pckeyboard/LatinKeyboard;Landroid/content/res/Resources;Lorg/pocketworkstation/pckeyboard/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    .line 159
    iget-object p1, v7, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    if-nez p1, :cond_0

    return-object v7

    .line 160
    :cond_0
    iget-object p1, v7, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    const/4 p2, 0x0

    aget p1, p1, p2

    const/16 p2, -0x67

    if-eq p1, p2, :cond_4

    const/4 p2, -0x2

    if-eq p1, p2, :cond_3

    const/16 p2, 0xa

    if-eq p1, p2, :cond_2

    const/16 p2, 0x20

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 168
    :cond_1
    iput-object v7, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    goto :goto_0

    .line 162
    :cond_2
    iput-object v7, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mEnterKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    goto :goto_0

    .line 171
    :cond_3
    iput-object v7, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->m123Key:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    .line 172
    iget-object p1, v7, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->m123Label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 165
    :cond_4
    iput-object v7, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mF1Key:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    :goto_0
    return-object v7
.end method

.method enableShiftLock()V
    .locals 2

    .line 230
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->getShiftKeyIndex()I

    move-result v0

    if-ltz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mShiftKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    .line 233
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mShiftKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iget-object v0, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mOldShiftIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public getExtension()Lorg/pocketworkstation/pckeyboard/LatinKeyboard;
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mExtensionKeyboard:Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    return-object v0
.end method

.method public getLanguageChangeDirection()I
    .locals 3

    .line 578
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceDragLastDiff:I

    .line 579
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->getSpacePreviewWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f028f5c    # 0.51f

    mul-float v1, v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_1

    .line 582
    :cond_0
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceDragLastDiff:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public getNearestKeys(II)[I
    .locals 2

    .line 757
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mCurrentlyInSpace:Z

    if-eqz v0, :cond_0

    .line 758
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceKeyIndexArray:[I

    return-object p1

    .line 761
    :cond_0
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->getMinWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 762
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 761
    invoke-super {p0, p1, p2}, Lorg/pocketworkstation/pckeyboard/Keyboard;->getNearestKeys(II)[I

    move-result-object p1

    return-object p1
.end method

.method isAlphaKeyboard()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mIsAlphaKeyboard:Z

    return v0
.end method

.method isCurrentlyInSpace()Z
    .locals 1

    .line 602
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mCurrentlyInSpace:Z

    return v0
.end method

.method public isF1Key(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Z
    .locals 1

    .line 381
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mF1Key:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isInside(Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;II)Z
    .locals 11

    .line 627
    iget-object v0, p1, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, -0x5

    const/4 v3, -0x1

    if-eq v0, v3, :cond_12

    if-ne v0, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v2, 0x20

    const/4 v3, 0x1

    if-ne v0, v2, :cond_4

    .line 641
    sget v0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->sSpacebarVerticalCorrection:I

    add-int/2addr p3, v0

    .line 642
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    if-le v0, v3, :cond_15

    .line 643
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mCurrentlyInSpace:Z

    if-eqz v0, :cond_2

    .line 644
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceDragStartX:I

    sub-int/2addr p2, p1

    .line 645
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceDragLastDiff:I

    sub-int p1, p2, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lez p1, :cond_1

    .line 646
    invoke-direct {p0, p2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->updateLocaleDrag(I)V

    .line 648
    :cond_1
    iput p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceDragLastDiff:I

    return v3

    .line 651
    :cond_2
    invoke-virtual {p1, p2, p3}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;->isInsideSuper(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 653
    iput-boolean v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mCurrentlyInSpace:Z

    .line 654
    iput p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceDragStartX:I

    .line 655
    invoke-direct {p0, v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->updateLocaleDrag(I)V

    :cond_3
    return p1

    .line 660
    :cond_4
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefLetterFrequencies:[I

    if-eqz v2, :cond_15

    .line 662
    iget v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefLetterX:I

    if-ne v2, p2, :cond_5

    iget v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefLetterY:I

    if-eq v2, p3, :cond_6

    .line 663
    :cond_5
    iput v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefLetter:I

    const v2, 0x7fffffff

    .line 664
    iput v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefDistance:I

    .line 667
    :cond_6
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefLetterFrequencies:[I

    .line 668
    iget v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefLetter:I

    if-lez v4, :cond_9

    .line 670
    iget v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefLetter:I

    if-ne v2, v0, :cond_7

    invoke-virtual {p1, p2, p3}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;->isInsideSuper(II)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "PCKeyboardLK"

    const-string p2, "CORRECTED !!!!!!"

    .line 671
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_7
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefLetter:I

    if-ne p1, v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1

    .line 676
    :cond_9
    invoke-virtual {p1, p2, p3}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;->isInsideSuper(II)Z

    move-result v4

    .line 677
    invoke-virtual {p0, p2, p3}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->getNearestKeys(II)[I

    move-result-object v5

    .line 678
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->getKeys()Ljava/util/List;

    move-result-object v6

    if-eqz v4, :cond_d

    .line 681
    invoke-direct {p0, v0, v2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->inPrefList(I[I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 683
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefLetter:I

    .line 684
    iput p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefLetterX:I

    .line 685
    iput p3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefLetterY:I

    const/4 v4, 0x0

    .line 686
    :goto_0
    array-length v7, v5

    if-ge v4, v7, :cond_b

    .line 687
    aget v7, v5, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    if-eq v7, p1, :cond_a

    .line 688
    iget-object v8, v7, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    aget v8, v8, v1

    invoke-direct {p0, v8, v2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->inPrefList(I[I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 689
    invoke-direct {p0, v7, p2, p3}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->distanceFrom(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;II)I

    move-result v8

    .line 690
    iget v9, v7, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    int-to-float v9, v9

    const v10, 0x3f333333    # 0.7f

    mul-float v9, v9, v10

    float-to-int v9, v9

    if-ge v8, v9, :cond_a

    iget-object v9, v7, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    aget v9, v9, v1

    aget v9, v2, v9

    iget v10, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefLetter:I

    aget v10, v2, v10

    mul-int/lit8 v10, v10, 0x3

    if-le v9, v10, :cond_a

    .line 692
    iget-object p1, v7, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    aget p1, p1, v1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefLetter:I

    .line 693
    iput v8, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefDistance:I

    const-string p1, "PCKeyboardLK"

    const-string p2, "CORRECTED ALTHOUGH PREFERRED !!!!!!"

    .line 695
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 702
    :cond_b
    :goto_1
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefLetter:I

    if-ne p1, v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1

    :cond_d
    const/4 p1, 0x0

    .line 714
    :goto_2
    array-length v7, v5

    if-ge p1, v7, :cond_f

    .line 715
    aget v7, v5, p1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    .line 716
    iget-object v8, v7, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    aget v8, v8, v1

    invoke-direct {p0, v8, v2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->inPrefList(I[I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 717
    invoke-direct {p0, v7, p2, p3}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->distanceFrom(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;II)I

    move-result v8

    .line 718
    iget v9, v7, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    int-to-float v9, v9

    const v10, 0x3f59999a    # 0.85f

    mul-float v9, v9, v10

    float-to-int v9, v9

    if-ge v8, v9, :cond_e

    iget v9, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefDistance:I

    if-ge v8, v9, :cond_e

    .line 720
    iget-object v7, v7, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    aget v7, v7, v1

    iput v7, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefLetter:I

    .line 721
    iput p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefLetterX:I

    .line 722
    iput p3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefLetterY:I

    .line 723
    iput v8, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefDistance:I

    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 728
    :cond_f
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefLetter:I

    if-nez p1, :cond_10

    return v4

    .line 731
    :cond_10
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefLetter:I

    if-ne p1, v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1

    .line 631
    :cond_12
    :goto_3
    iget v4, p1, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;->height:I

    div-int/lit8 v4, v4, 0xa

    sub-int/2addr p3, v4

    if-ne v0, v3, :cond_14

    .line 633
    iget v3, p1, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;->x:I

    if-nez v3, :cond_13

    .line 634
    iget v3, p1, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;->width:I

    div-int/lit8 v3, v3, 0x6

    add-int/2addr p2, v3

    goto :goto_4

    .line 636
    :cond_13
    iget v3, p1, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;->width:I

    div-int/lit8 v3, v3, 0x6

    sub-int/2addr p2, v3

    :cond_14
    :goto_4
    if-ne v0, v2, :cond_15

    .line 639
    iget v0, p1, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;->width:I

    div-int/lit8 v0, v0, 0x6

    sub-int/2addr p2, v0

    .line 737
    :cond_15
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mCurrentlyInSpace:Z

    if-eqz v0, :cond_16

    return v1

    .line 739
    :cond_16
    invoke-virtual {p1, p2, p3}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;->isInsideSuper(II)Z

    move-result p1

    return p1
.end method

.method public isLanguageSwitchEnabled()Z
    .locals 1

    .line 397
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method keyReleased()V
    .locals 2

    const/4 v0, 0x0

    .line 611
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mCurrentlyInSpace:Z

    .line 612
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceDragLastDiff:I

    .line 613
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefLetter:I

    .line 614
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefLetterX:I

    .line 615
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefLetterY:I

    const v0, 0x7fffffff

    .line 616
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefDistance:I

    .line 617
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    if-eqz v1, :cond_0

    .line 618
    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->updateLocaleDrag(I)V

    :cond_0
    return-void
.end method

.method public onAutoCompletionStateChanged(Z)Lorg/pocketworkstation/pckeyboard/Keyboard$Key;
    .locals 0

    .line 392
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->updateSpaceBarForLocale(Z)V

    .line 393
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mSpaceKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    return-object p1
.end method

.method public setExtension(Lorg/pocketworkstation/pckeyboard/LatinKeyboard;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mExtensionKeyboard:Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    return-void
.end method

.method setImeOptions(Landroid/content/res/Resources;II)V
    .locals 2

    .line 180
    iput p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mMode:I

    .line 182
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mEnterKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    if-eqz p2, :cond_0

    .line 184
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mEnterKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    const/4 v0, 0x0

    iput-object v0, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 185
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mEnterKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    const/4 v1, 0x0

    iput v1, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupResId:I

    .line 186
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mEnterKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iput-object v0, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->text:Ljava/lang/CharSequence;

    const p2, 0x400000ff    # 2.0000608f

    and-int/2addr p2, p3

    packed-switch p2, :pswitch_data_0

    .line 216
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mEnterKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    const p3, 0x7f0700c1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 218
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mEnterKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    const p3, 0x7f0700d8

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 219
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mEnterKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iput-object v0, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 199
    :pswitch_0
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mEnterKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iput-object v0, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 200
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mEnterKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iput-object v0, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 201
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mEnterKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    const p3, 0x7f0c0101

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 194
    :pswitch_1
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mEnterKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iput-object v0, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 195
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mEnterKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iput-object v0, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 196
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mEnterKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    const p3, 0x7f0c0103

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 210
    :pswitch_2
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mEnterKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iput-object v0, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 211
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mEnterKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iput-object v0, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 212
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mEnterKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    const p3, 0x7f0c0105

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 204
    :pswitch_3
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mEnterKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    const p3, 0x7f0700c2

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 206
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mEnterKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    const p3, 0x7f0700d9

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 207
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mEnterKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iput-object v0, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 189
    :pswitch_4
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mEnterKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iput-object v0, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 190
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mEnterKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iput-object v0, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 191
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mEnterKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    const p3, 0x7f0c0102

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 223
    :goto_0
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mEnterKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iget-object p1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mEnterKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iget-object p1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLanguageSwitcher(Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;Z)V
    .locals 3

    .line 586
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    .line 587
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->getLocaleCount()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    .line 588
    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 591
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    .line 592
    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->getLocaleCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    .line 593
    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->getSystemLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 594
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    .line 597
    :cond_1
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mLocale:Ljava/util/Locale;

    .line 598
    invoke-virtual {p0, p2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->updateSymbolIcons(Z)V

    return-void
.end method

.method setPreferredLetters([I)V
    .locals 0

    .line 606
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefLetterFrequencies:[I

    const/4 p1, 0x0

    .line 607
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mPrefLetter:I

    return-void
.end method

.method public setShiftState(I)Z
    .locals 5

    .line 239
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mShiftKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 241
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mShiftKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->on:Z

    .line 242
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mShiftKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    if-eq p1, v3, :cond_3

    const/4 v4, 0x4

    if-ne p1, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x1

    :goto_3
    iput-boolean v4, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->locked:Z

    .line 243
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mShiftKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_5

    if-ne p1, v3, :cond_4

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :cond_5
    :goto_4
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mOldShiftIcon:Landroid/graphics/drawable/Drawable;

    :goto_5
    iput-object v1, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 245
    invoke-super {p0, p1, v2}, Lorg/pocketworkstation/pckeyboard/Keyboard;->setShiftState(IZ)Z

    move-result p1

    return p1

    .line 247
    :cond_6
    invoke-super {p0, p1, v1}, Lorg/pocketworkstation/pckeyboard/Keyboard;->setShiftState(IZ)Z

    move-result p1

    return p1
.end method

.method public setVoiceMode(ZZ)V
    .locals 0

    .line 273
    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mHasVoiceButton:Z

    .line 274
    iput-boolean p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->mVoiceEnabled:Z

    .line 275
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->updateDynamicKeys()V

    return-void
.end method

.method public updateSymbolIcons(Z)V
    .locals 0

    .line 264
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->updateDynamicKeys()V

    .line 265
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->updateSpaceBarForLocale(Z)V

    return-void
.end method
