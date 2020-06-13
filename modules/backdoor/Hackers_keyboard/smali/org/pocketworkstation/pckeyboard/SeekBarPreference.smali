.class public Lorg/pocketworkstation/pckeyboard/SeekBarPreference;
.super Landroid/preference/DialogPreference;
.source "SeekBarPreference.java"


# instance fields
.field private mAsPercent:Z

.field private mDisplayFormat:Ljava/lang/String;

.field private mLogScale:Z

.field private mMax:F

.field private mMaxText:Landroid/widget/TextView;

.field private mMin:F

.field private mMinText:Landroid/widget/TextView;

.field private mPrevVal:F

.field private mSeek:Landroid/widget/SeekBar;

.field private mStep:F

.field private mVal:F

.field private mValText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-virtual {p0, p1, p2}, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lorg/pocketworkstation/pckeyboard/SeekBarPreference;)F
    .locals 0

    .line 16
    iget p0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mMin:F

    return p0
.end method

.method static synthetic access$100(Lorg/pocketworkstation/pckeyboard/SeekBarPreference;)F
    .locals 0

    .line 16
    iget p0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mMax:F

    return p0
.end method

.method static synthetic access$200(Lorg/pocketworkstation/pckeyboard/SeekBarPreference;)F
    .locals 0

    .line 16
    iget p0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mStep:F

    return p0
.end method

.method static synthetic access$300(Lorg/pocketworkstation/pckeyboard/SeekBarPreference;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mLogScale:Z

    return p0
.end method

.method static synthetic access$400(Lorg/pocketworkstation/pckeyboard/SeekBarPreference;IFFFZ)F
    .locals 0

    .line 16
    invoke-direct/range {p0 .. p5}, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->percentToSteppedVal(IFFFZ)F

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/pocketworkstation/pckeyboard/SeekBarPreference;)F
    .locals 0

    .line 16
    iget p0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mVal:F

    return p0
.end method

.method static synthetic access$600(Lorg/pocketworkstation/pckeyboard/SeekBarPreference;)I
    .locals 0

    .line 16
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->getProgressVal()I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lorg/pocketworkstation/pckeyboard/SeekBarPreference;)Landroid/widget/SeekBar;
    .locals 0

    .line 16
    iget-object p0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mSeek:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$800(Lorg/pocketworkstation/pckeyboard/SeekBarPreference;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->showVal()V

    return-void
.end method

.method private formatFloatDisplay(Ljava/lang/Float;)Ljava/lang/String;
    .locals 4

    .line 65
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mAsPercent:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "%d%%"

    .line 66
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float p1, p1, v3

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mDisplayFormat:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mDisplayFormat:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 72
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPercent(FFF)I
    .locals 1

    sub-float/2addr p1, p2

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    sub-float/2addr p3, p2

    div-float/2addr p1, p3

    float-to-int p1, p1

    return p1
.end method

.method private getProgressVal()I
    .locals 4

    .line 117
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mLogScale:Z

    if-eqz v0, :cond_0

    .line 118
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mVal:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mMin:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mMax:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->getPercent(FFF)I

    move-result v0

    return v0

    .line 120
    :cond_0
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mVal:F

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mMin:F

    iget v2, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mMax:F

    invoke-direct {p0, v0, v1, v2}, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->getPercent(FFF)I

    move-result v0

    return v0
.end method

.method private percentToSteppedVal(IFFFZ)F
    .locals 8

    if-eqz p5, :cond_0

    float-to-double v0, p2

    .line 99
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v4, v0

    float-to-double p2, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide p2

    double-to-float v5, p2

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v6, p4

    invoke-direct/range {v2 .. v7}, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->percentToSteppedVal(IFFFZ)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    double-to-float p1, p1

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    sub-float/2addr p3, p2

    mul-float p1, p1, p3

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p1, p3

    const/4 p3, 0x0

    cmpl-float p3, p4, p3

    if-eqz p3, :cond_1

    div-float/2addr p1, p4

    .line 103
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p4

    :cond_1
    add-float/2addr p1, p2

    .line 108
    :goto_0
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p3, "%.2g"

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p4, p5

    invoke-static {p2, p3, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method private showVal()V
    .locals 2

    .line 77
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mValText:Landroid/widget/TextView;

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mVal:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->formatFloatDisplay(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 161
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mVal:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->formatFloatDisplay(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getValString()Ljava/lang/String;
    .locals 1

    .line 93
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mVal:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0a0035

    .line 37
    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->setDialogLayoutResource(I)V

    .line 39
    sget-object v0, Lorg/pocketworkstation/pckeyboard/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x4

    .line 40
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mMin:F

    const/4 v0, 0x3

    const/high16 v1, 0x42c80000    # 100.0f

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mMax:F

    const/4 v0, 0x5

    .line 42
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mStep:F

    const/4 p2, 0x0

    .line 43
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mAsPercent:Z

    const/4 v0, 0x2

    .line 44
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mLogScale:Z

    const/4 p2, 0x1

    .line 45
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mDisplayFormat:Ljava/lang/String;

    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f080080

    .line 126
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mSeek:Landroid/widget/SeekBar;

    const v0, 0x7f080082

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mMinText:Landroid/widget/TextView;

    const v0, 0x7f080081

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mMaxText:Landroid/widget/TextView;

    const v0, 0x7f080083

    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mValText:Landroid/widget/TextView;

    .line 131
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->showVal()V

    .line 132
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mMinText:Landroid/widget/TextView;

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mMin:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->formatFloatDisplay(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mMaxText:Landroid/widget/TextView;

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mMax:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->formatFloatDisplay(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mSeek:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->getProgressVal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 136
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mSeek:Landroid/widget/SeekBar;

    new-instance v1, Lorg/pocketworkstation/pckeyboard/SeekBarPreference$1;

    invoke-direct {v1, p0}, Lorg/pocketworkstation/pckeyboard/SeekBarPreference$1;-><init>(Lorg/pocketworkstation/pckeyboard/SeekBarPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 152
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    return-void
.end method

.method public onChange(F)V
    .locals 0

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 167
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->restoreVal()V

    return-void

    .line 170
    :cond_0
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->shouldPersist()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 171
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mVal:F

    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->persistFloat(F)Z

    .line 172
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->savePrevVal()V

    .line 174
    :cond_1
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->notifyChanged()V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Float;
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 56
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->getPersistedFloat(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->setVal(Ljava/lang/Float;)V

    goto :goto_0

    .line 58
    :cond_0
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p2}, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->setVal(Ljava/lang/Float;)V

    .line 60
    :goto_0
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->savePrevVal()V

    return-void
.end method

.method protected restoreVal()V
    .locals 1

    .line 89
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mPrevVal:F

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mVal:F

    return-void
.end method

.method protected savePrevVal()V
    .locals 1

    .line 85
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mVal:F

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mPrevVal:F

    return-void
.end method

.method protected setVal(Ljava/lang/Float;)V
    .locals 0

    .line 81
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;->mVal:F

    return-void
.end method
