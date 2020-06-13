.class Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LatinKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pocketworkstation/pckeyboard/LatinKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlidingLocaleDrawable"
.end annotation


# instance fields
.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private mCurrentLanguage:Ljava/lang/String;

.field private mDiff:I

.field private final mHeight:I

.field private mHitThreshold:Z

.field private final mLeftDrawable:Landroid/graphics/drawable/Drawable;

.field private final mMiddleX:I

.field private mNextLanguage:Ljava/lang/String;

.field private mPrevLanguage:Ljava/lang/String;

.field private final mRightDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private final mThreshold:I

.field private final mWidth:I

.field final synthetic this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboard;


# direct methods
.method public constructor <init>(Lorg/pocketworkstation/pckeyboard/LatinKeyboard;Landroid/graphics/drawable/Drawable;II)V
    .locals 0

    .line 870
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 871
    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 872
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, p2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->access$200(Lorg/pocketworkstation/pckeyboard/LatinKeyboard;Landroid/graphics/drawable/Drawable;)V

    .line 873
    iput p3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    .line 874
    iput p4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mHeight:I

    .line 875
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    .line 876
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const p3, 0x1030044

    const/16 p4, 0x12

    invoke-static {p1, p3, p4}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->access$300(Lorg/pocketworkstation/pckeyboard/LatinKeyboard;II)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 877
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->access$400(Lorg/pocketworkstation/pckeyboard/LatinKeyboard;)Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f050042

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setColor(I)V

    .line 878
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 879
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const/16 p3, 0xff

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 880
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 881
    iget p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    iget-object p3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mMiddleX:I

    .line 883
    invoke-static {p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->access$400(Lorg/pocketworkstation/pckeyboard/LatinKeyboard;)Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0700bd

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 885
    invoke-static {p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->access$400(Lorg/pocketworkstation/pckeyboard/LatinKeyboard;)Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0700be

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 886
    invoke-static {p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->access$500(Lorg/pocketworkstation/pckeyboard/LatinKeyboard;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mThreshold:I

    return-void
.end method

.method static synthetic access$000(Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;I)V
    .locals 0

    .line 854
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->setDiff(I)V

    return-void
.end method

.method private getLanguageName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 903
    invoke-virtual {p1, p1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setDiff(I)V
    .locals 1

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 891
    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mHitThreshold:Z

    const/4 p1, 0x0

    .line 892
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    return-void

    .line 895
    :cond_0
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mDiff:I

    .line 896
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mDiff:I

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    if-le p1, v0, :cond_1

    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mDiff:I

    .line 897
    :cond_1
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mDiff:I

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    neg-int v0, v0

    if-ge p1, v0, :cond_2

    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    neg-int p1, p1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mDiff:I

    .line 898
    :cond_2
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mDiff:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mThreshold:I

    if-le p1, v0, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mHitThreshold:Z

    .line 899
    :cond_3
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 908
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 909
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mHitThreshold:Z

    if-eqz v0, :cond_1

    .line 910
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    .line 911
    iget v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    .line 912
    iget v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mHeight:I

    .line 913
    iget v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mDiff:I

    .line 914
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 915
    iget-object v5, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    .line 916
    invoke-virtual {p1, v6, v6, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 917
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 918
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    invoke-static {v2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->access$600(Lorg/pocketworkstation/pckeyboard/LatinKeyboard;)Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    move-result-object v2

    .line 919
    invoke-virtual {v2}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->getLanguageName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 920
    invoke-virtual {v2}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->getNextInputLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->getLanguageName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    .line 921
    invoke-virtual {v2}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->getPrevInputLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->getLanguageName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    .line 924
    :cond_0
    iget v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mHeight:I

    int-to-float v2, v2

    const v7, 0x3f19999a    # 0.6f

    mul-float v2, v2, v7

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v7

    sub-float/2addr v2, v7

    .line 925
    iget-object v7, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    invoke-static {v7}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->access$400(Lorg/pocketworkstation/pckeyboard/LatinKeyboard;)Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f05003f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 926
    iget-object v7, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    div-int/lit8 v8, v1, 0x2

    add-int v9, v8, v3

    int-to-float v9, v9

    invoke-virtual {p1, v7, v9, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 927
    iget-object v7, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    sub-int v9, v3, v8

    int-to-float v9, v9

    invoke-virtual {p1, v7, v9, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 928
    iget-object v7, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    add-int/2addr v3, v1

    add-int/2addr v3, v8

    int-to-float v3, v3

    invoke-virtual {p1, v7, v3, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 930
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    invoke-static {v0, v4}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->access$200(Lorg/pocketworkstation/pckeyboard/LatinKeyboard;Landroid/graphics/drawable/Drawable;)V

    .line 931
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int v0, v1, v0

    .line 932
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 931
    invoke-virtual {v5, v0, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 933
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 934
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 936
    :cond_1
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 937
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mMiddleX:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 938
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 940
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 965
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 960
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
