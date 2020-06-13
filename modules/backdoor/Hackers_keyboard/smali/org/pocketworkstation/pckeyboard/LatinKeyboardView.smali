.class public Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;
.super Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;
.source "LatinKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/pocketworkstation/pckeyboard/LatinKeyboardView$ExtensionKeyboardListener;
    }
.end annotation


# static fields
.field static final DEBUG_AUTO_PLAY:Z = false

.field static final DEBUG_LINE:Z = false

.field static final KEYCODE_ALT_LEFT:I = -0x39

.field static final KEYCODE_BREAK:I = -0x79

.field static final KEYCODE_CAPS_LOCK:I = -0x73

.field static final KEYCODE_COMPOSE:I = -0x2728

.field static final KEYCODE_CTRL_LEFT:I = -0x71

.field static final KEYCODE_DPAD_CENTER:I = -0x17

.field static final KEYCODE_DPAD_DOWN:I = -0x14

.field static final KEYCODE_DPAD_LEFT:I = -0x15

.field static final KEYCODE_DPAD_RIGHT:I = -0x16

.field static final KEYCODE_DPAD_UP:I = -0x13

.field static final KEYCODE_END:I = -0x7b

.field static final KEYCODE_ESCAPE:I = -0x6f

.field static final KEYCODE_F1:I = -0x67

.field static final KEYCODE_FKEY_F1:I = -0x83

.field static final KEYCODE_FKEY_F10:I = -0x8c

.field static final KEYCODE_FKEY_F11:I = -0x8d

.field static final KEYCODE_FKEY_F12:I = -0x8e

.field static final KEYCODE_FKEY_F2:I = -0x84

.field static final KEYCODE_FKEY_F3:I = -0x85

.field static final KEYCODE_FKEY_F4:I = -0x86

.field static final KEYCODE_FKEY_F5:I = -0x87

.field static final KEYCODE_FKEY_F6:I = -0x88

.field static final KEYCODE_FKEY_F7:I = -0x89

.field static final KEYCODE_FKEY_F8:I = -0x8a

.field static final KEYCODE_FKEY_F9:I = -0x8b

.field static final KEYCODE_FN:I = -0x77

.field static final KEYCODE_FORWARD_DEL:I = -0x70

.field static final KEYCODE_HOME:I = -0x7a

.field static final KEYCODE_INSERT:I = -0x7c

.field static final KEYCODE_META_LEFT:I = -0x75

.field static final KEYCODE_NEXT_LANGUAGE:I = -0x68

.field static final KEYCODE_NUM_LOCK:I = -0x8f

.field static final KEYCODE_OPTIONS:I = -0x64

.field static final KEYCODE_OPTIONS_LONGPRESS:I = -0x65

.field static final KEYCODE_PAGE_DOWN:I = -0x5d

.field static final KEYCODE_PAGE_UP:I = -0x5c

.field static final KEYCODE_PREV_LANGUAGE:I = -0x69

.field static final KEYCODE_SCROLL_LOCK:I = -0x74

.field static final KEYCODE_SYSRQ:I = -0x78

.field static final KEYCODE_VOICE:I = -0x66

.field private static final MSG_TOUCH_DOWN:I = 0x1

.field private static final MSG_TOUCH_UP:I = 0x2

.field static final TAG:Ljava/lang/String; = "HK/LatinKeyboardView"


# instance fields
.field private mAsciiKeys:[Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

.field private mDisableDisambiguation:Z

.field private mDownDelivered:Z

.field private mDroppingEvents:Z

.field private mExtension:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

.field private mExtensionKeyboard:Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

.field private mExtensionLayoutResId:I

.field private mExtensionPopup:Landroid/widget/PopupWindow;

.field private mExtensionVisible:Z

.field private mFirstEvent:Z

.field mHandler2:Landroid/os/Handler;

.field private mIsExtensionType:Z

.field private mJumpThresholdSquare:I

.field private mLastRowY:I

.field private mLastX:I

.field private mLastY:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPhoneKeyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

.field private mPlaying:Z

.field private mStringIndex:I

.field private mStringToPlay:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, p1, p2, v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 125
    invoke-direct {p0, p1, p2, p3}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7fffffff

    .line 114
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mJumpThresholdSquare:I

    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtensionLayoutResId:I

    const/16 v1, 0x100

    .line 540
    new-array v1, v1, [Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mAsciiKeys:[Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    .line 128
    sget-object v1, Lorg/pocketworkstation/pckeyboard/R$styleable;->LatinKeyboardBaseView:[I

    const v2, 0x7f0d009f

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string p3, "layout_inflater"

    .line 131
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    .line 134
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 136
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    const/16 v5, 0xf

    const v6, 0x7f0a0033

    if-eq v4, v5, :cond_0

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 144
    :pswitch_0
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mPreviewOffset:I

    goto :goto_1

    .line 140
    :pswitch_1
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-ne v3, v6, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :pswitch_2
    const/16 v5, 0x50

    .line 147
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mPreviewHeight:I

    goto :goto_1

    .line 150
    :cond_0
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mPopupLayout:I

    .line 151
    iget v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mPopupLayout:I

    if-ne v4, v6, :cond_1

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mPopupLayout:I

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 161
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x0

    if-eqz v3, :cond_5

    .line 164
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 165
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "HK/LatinKeyboardView"

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new mPreviewPopup "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_4
    invoke-virtual {p3, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mPreviewText:Landroid/widget/TextView;

    const p3, 0x7f060064

    .line 168
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mPreviewTextSizeLarge:I

    .line 169
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object p3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 170
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 172
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const p3, 0x7f0d009e

    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 173
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    goto :goto_3

    .line 175
    :cond_5
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mShowPreview:Z

    .line 178
    :goto_3
    iget p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mPopupLayout:I

    if-eqz p2, :cond_7

    .line 179
    iput-object p0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mMiniKeyboardParent:Landroid/view/View;

    .line 180
    new-instance p2, Landroid/widget/PopupWindow;

    invoke-direct {p2, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    .line 181
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "HK/LatinKeyboardView"

    .line 182
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "new mMiniKeyboardPopup "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_6
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    const p2, 0x7f0d00a0

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 185
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 186
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mMiniKeyboardVisible:Z

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private closeExtension()V
    .locals 2

    .line 485
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtension:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->closing()V

    .line 486
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtension:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 487
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtensionVisible:Z

    return-void
.end method

.method private findKeys()V
    .locals 6

    .line 607
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getKeyboard()Lorg/pocketworkstation/pckeyboard/Keyboard;

    move-result-object v0

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 609
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 610
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iget-object v3, v3, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    aget v3, v3, v1

    if-ltz v3, :cond_0

    const/16 v4, 0xff

    if-gt v3, v4, :cond_0

    .line 612
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mAsciiKeys:[Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    aput-object v5, v4, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleSuddenJump(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 275
    iput-boolean v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mDisableDisambiguation:Z

    .line 277
    :cond_0
    iget-boolean v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mDisableDisambiguation:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    if-ne v0, v4, :cond_1

    .line 279
    iput-boolean v5, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mDisableDisambiguation:Z

    :cond_1
    return v5

    :cond_2
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 291
    :pswitch_0
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mLastX:I

    sub-int/2addr v0, v1

    iget v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mLastX:I

    sub-int/2addr v3, v1

    mul-int v0, v0, v3

    iget v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mLastY:I

    sub-int/2addr v3, v2

    iget v6, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mLastY:I

    sub-int/2addr v6, v2

    mul-int v3, v3, v6

    add-int/2addr v0, v3

    .line 295
    iget v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mJumpThresholdSquare:I

    if-le v0, v3, :cond_4

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mLastY:I

    iget v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mLastRowY:I

    if-lt v0, v3, :cond_3

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mLastRowY:I

    if-ge v2, v0, :cond_4

    .line 298
    :cond_3
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mDroppingEvents:Z

    if-nez v0, :cond_6

    .line 299
    iput-boolean v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mDroppingEvents:Z

    .line 301
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    const/4 v9, 0x1

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mLastX:I

    int-to-float v10, v0

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mLastY:I

    int-to-float v11, v0

    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    .line 301
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 304
    invoke-super {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    .line 308
    :cond_4
    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mDroppingEvents:Z

    if-eqz p1, :cond_5

    goto :goto_1

    .line 314
    :pswitch_1
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mDroppingEvents:Z

    if-eqz v0, :cond_5

    .line 317
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    const/4 v10, 0x0

    int-to-float v11, v1

    int-to-float v12, v2

    .line 319
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v13

    .line 317
    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 320
    invoke-super {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 321
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 322
    iput-boolean v5, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mDroppingEvents:Z

    goto :goto_0

    .line 286
    :pswitch_2
    iput-boolean v5, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mDroppingEvents:Z

    .line 287
    iput-boolean v5, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mDisableDisambiguation:Z

    :cond_5
    :goto_0
    const/4 v4, 0x0

    .line 328
    :cond_6
    :goto_1
    iput v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mLastX:I

    .line 329
    iput v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mLastY:I

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private invokeOnKey(I)Z
    .locals 3

    .line 250
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getOnKeyboardActionListener()Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1, v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onKey(I[III)V

    const/4 p1, 0x1

    return p1
.end method

.method private makePopupWindow()V
    .locals 7

    .line 443
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->dismissPopupKeyboard()V

    .line 444
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtensionPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 445
    new-array v0, v0, [I

    .line 446
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtensionPopup:Landroid/widget/PopupWindow;

    .line 447
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtensionPopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 448
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "layout_inflater"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 450
    iget v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtensionLayoutResId:I

    if-nez v4, :cond_0

    const v4, 0x7f0a0028

    goto :goto_0

    :cond_0
    iget v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtensionLayoutResId:I

    :goto_0
    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    iput-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtension:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    .line 452
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtensionKeyboard:Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    .line 453
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtension:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {v3, v2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setKeyboard(Lorg/pocketworkstation/pckeyboard/Keyboard;)V

    .line 454
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtension:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setExtensionType(Z)V

    .line 455
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtension:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {v3, v1, v1, v1, v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setPadding(IIII)V

    .line 456
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtension:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    new-instance v5, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView$ExtensionKeyboardListener;

    .line 457
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getOnKeyboardActionListener()Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView$ExtensionKeyboardListener;-><init>(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;)V

    .line 456
    invoke-virtual {v3, v5}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setOnKeyboardActionListener(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;)V

    .line 458
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtension:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {v3, p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setPopupParent(Landroid/view/View;)V

    .line 459
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtension:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    aget v5, v0, v4

    neg-int v5, v5

    invoke-virtual {v3, v1, v5}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setPopupOffset(II)V

    .line 460
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtensionPopup:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtension:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 461
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtensionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getWidth()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 462
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtensionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Lorg/pocketworkstation/pckeyboard/Keyboard;->getHeight()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 463
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtensionPopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 464
    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getLocationInWindow([I)V

    .line 466
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtension:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    aget v5, v0, v4

    neg-int v5, v5

    add-int/lit8 v5, v5, -0x1e

    invoke-virtual {v3, v1, v5}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setPopupOffset(II)V

    .line 467
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtensionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Lorg/pocketworkstation/pckeyboard/Keyboard;->getHeight()I

    move-result v2

    neg-int v2, v2

    aget v0, v0, v4

    add-int/2addr v2, v0

    .line 468
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getPaddingTop()I

    move-result v0

    add-int/2addr v2, v0

    .line 467
    invoke-virtual {v3, p0, v1, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    .line 470
    :cond_1
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtension:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {v0, v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setVisibility(I)V

    .line 472
    :goto_1
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtension:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getShiftState()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setShiftState(I)Z

    return-void
.end method

.method private openExtension()Z
    .locals 2

    .line 432
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->popupKeyboardIsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 435
    :cond_0
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->clearSlideKeys()V

    .line 436
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getKeyboard()Lorg/pocketworkstation/pckeyboard/Keyboard;

    move-result-object v0

    check-cast v0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->getExtension()Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 437
    :cond_1
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->makePopupWindow()V

    const/4 v0, 0x1

    .line 438
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtensionVisible:Z

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private setExtensionType(Z)V
    .locals 0

    .line 427
    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mIsExtensionType:Z

    return-void
.end method

.method private setKeyboardLocal(Lorg/pocketworkstation/pckeyboard/Keyboard;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public closing()V
    .locals 1

    .line 477
    invoke-super {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->closing()V

    .line 478
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtensionPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtensionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtensionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 480
    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtensionPopup:Landroid/widget/PopupWindow;

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 630
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;->getInstance()Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;

    move-result-object v0

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;->reset()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    if-eqz v2, :cond_0

    .line 634
    :try_start_0
    invoke-super {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 637
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;->getInstance()Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;

    move-result-object v3

    const-string v4, "LatinKeyboardView"

    invoke-virtual {v3, v4, v2}, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 651
    :cond_0
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget-boolean v0, v0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->showTouchPos:Z

    if-nez v0, :cond_1

    goto :goto_2

    .line 652
    :cond_1
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 653
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 654
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mPaint:Landroid/graphics/Paint;

    const v2, -0x7f000001

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 655
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 657
    :cond_2
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mLastX:I

    int-to-float v2, v0

    const/4 v3, 0x0

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mLastX:I

    int-to-float v4, v0

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v8, 0x0

    .line 658
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mLastY:I

    int-to-float v9, v0

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getWidth()I

    move-result v0

    int-to-float v10, v0

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mLastY:I

    int-to-float v11, v0

    iget-object v12, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_2
    return-void
.end method

.method enableSlideKeyHack()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onLongPress(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Z
    .locals 2

    .line 234
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->clearSlideKeys()V

    .line 236
    iget-object v0, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    const/16 p1, -0x65

    .line 238
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->invokeOnKey(I)Z

    move-result p1

    return p1

    :cond_0
    const/16 v1, -0x17

    if-ne v0, v1, :cond_1

    const/16 p1, -0x2728

    .line 240
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->invokeOnKey(I)Z

    move-result p1

    return p1

    :cond_1
    const/16 v1, 0x30

    if-ne v0, v1, :cond_2

    .line 241
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getKeyboard()Lorg/pocketworkstation/pckeyboard/Keyboard;

    move-result-object v0

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mPhoneKeyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    if-ne v0, v1, :cond_2

    const/16 p1, 0x2b

    .line 243
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->invokeOnKey(I)Z

    move-result p1

    return p1

    .line 245
    :cond_2
    invoke-super {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->onLongPress(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 335
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getKeyboard()Lorg/pocketworkstation/pckeyboard/Keyboard;

    move-result-object v0

    check-cast v0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    .line 336
    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget-boolean v1, v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->showTouchPos:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mLastX:I

    .line 338
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mLastY:I

    .line 339
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->invalidate()V

    .line 345
    :goto_0
    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtensionVisible:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mIsExtensionType:Z

    if-nez v1, :cond_1

    .line 346
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->handleSuddenJump(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 348
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 349
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->keyReleased()V

    .line 352
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v2, :cond_4

    .line 353
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->getLanguageChangeDirection()I

    move-result v1

    if-eqz v1, :cond_4

    .line 355
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getOnKeyboardActionListener()Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v4

    if-ne v1, v2, :cond_3

    const/16 v1, -0x68

    goto :goto_1

    :cond_3
    const/16 v1, -0x69

    :goto_1
    const/4 v2, 0x0

    iget v5, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mLastX:I

    iget v6, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mLastY:I

    invoke-interface {v4, v1, v2, v5, v6}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onKey(I[III)V

    .line 358
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 359
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->keyReleased()V

    .line 360
    invoke-super {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 365
    :cond_4
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->getExtension()Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    move-result-object v0

    if-nez v0, :cond_5

    .line 366
    invoke-super {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 370
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtensionVisible:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_f

    .line 371
    :cond_6
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtensionVisible:Z

    if-eqz v0, :cond_b

    .line 372
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 373
    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mFirstEvent:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    const/4 v9, 0x0

    goto :goto_2

    :cond_7
    move v9, v0

    .line 374
    :goto_2
    iput-boolean v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mFirstEvent:Z

    .line 375
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    .line 377
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtension:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float v11, v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    .line 375
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 378
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-lez v1, :cond_8

    return v2

    .line 380
    :cond_8
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtension:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {v1, v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 381
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 382
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_9

    .line 383
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_a

    .line 384
    :cond_9
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->closeExtension()V

    :cond_a
    return v1

    .line 388
    :cond_b
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->swipeUp()Z

    move-result v0

    if-eqz v0, :cond_c

    return v2

    .line 390
    :cond_c
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->openExtension()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 391
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    const/4 v7, 0x3

    .line 392
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    sub-float v8, v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float v9, v0, v1

    const/4 v10, 0x0

    .line 391
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 393
    invoke-super {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 394
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 395
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtension:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getHeight()I

    move-result v0

    if-lez v0, :cond_d

    .line 396
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    .line 397
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    const/4 v7, 0x0

    .line 399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtension:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 400
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    .line 396
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 401
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtension:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {v0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 402
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_3

    .line 404
    :cond_d
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mFirstEvent:Z

    .line 407
    :goto_3
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mDisableDisambiguation:Z

    :cond_e
    return v2

    .line 411
    :cond_f
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtensionVisible:Z

    if-eqz v0, :cond_10

    .line 412
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->closeExtension()V

    .line 414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    const/4 v7, 0x0

    .line 416
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    .line 414
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 417
    invoke-super {p0, v0, v2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;Z)Z

    .line 418
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 420
    invoke-super {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 422
    :cond_10
    invoke-super {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setExtensionLayoutResId(I)V
    .locals 0

    .line 195
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtensionLayoutResId:I

    return-void
.end method

.method public setKeyboard(Lorg/pocketworkstation/pckeyboard/Keyboard;)V
    .locals 3

    .line 210
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getKeyboard()Lorg/pocketworkstation/pckeyboard/Keyboard;

    move-result-object v0

    .line 211
    instance-of v1, v0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    if-eqz v1, :cond_0

    .line 213
    check-cast v0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->keyReleased()V

    .line 215
    :cond_0
    invoke-super {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->setKeyboard(Lorg/pocketworkstation/pckeyboard/Keyboard;)V

    .line 217
    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/Keyboard;->getMinWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x7

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mJumpThresholdSquare:I

    .line 218
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mJumpThresholdSquare:I

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mJumpThresholdSquare:I

    mul-int v0, v0, v1

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mJumpThresholdSquare:I

    .line 220
    iget v0, p1, Lorg/pocketworkstation/pckeyboard/Keyboard;->mRowCount:I

    .line 221
    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/Keyboard;->getHeight()I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    mul-int v1, v1, v2

    div-int/2addr v1, v0

    iput v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mLastRowY:I

    .line 222
    move-object v0, p1

    check-cast v0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->getExtension()Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    move-result-object v0

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtensionKeyboard:Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    .line 223
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtensionKeyboard:Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtension:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtension:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mExtensionKeyboard:Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    invoke-virtual {v0, v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setKeyboard(Lorg/pocketworkstation/pckeyboard/Keyboard;)V

    .line 224
    :cond_1
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setKeyboardLocal(Lorg/pocketworkstation/pckeyboard/Keyboard;)V

    return-void
.end method

.method public setPhoneKeyboard(Lorg/pocketworkstation/pckeyboard/Keyboard;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mPhoneKeyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 2

    .line 200
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getKeyboard()Lorg/pocketworkstation/pckeyboard/Keyboard;

    move-result-object v0

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->mPhoneKeyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 202
    invoke-super {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->setPreviewEnabled(Z)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-super {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->setPreviewEnabled(Z)V

    :goto_0
    return-void
.end method

.method public startPlaying(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
