.class public Lorg/pocketworkstation/pckeyboard/SeekBarPreferenceString;
.super Lorg/pocketworkstation/pckeyboard/SeekBarPreference;
.source "SeekBarPreferenceString.java"


# static fields
.field private static FLOAT_RE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d+\\.?\\d*).*"

    .line 18
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/pocketworkstation/pckeyboard/SeekBarPreferenceString;->FLOAT_RE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lorg/pocketworkstation/pckeyboard/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-virtual {p0, p1, p2}, Lorg/pocketworkstation/pckeyboard/SeekBarPreferenceString;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private floatFromString(Ljava/lang/String;)F
    .locals 1

    .line 27
    sget-object v0, Lorg/pocketworkstation/pckeyboard/SeekBarPreferenceString;->FLOAT_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 29
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 50
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/SeekBarPreferenceString;->restoreVal()V

    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/SeekBarPreferenceString;->shouldPersist()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/SeekBarPreferenceString;->savePrevVal()V

    .line 55
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/SeekBarPreferenceString;->getValString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/SeekBarPreferenceString;->persistString(Ljava/lang/String;)Z

    .line 57
    :cond_1
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/SeekBarPreferenceString;->notifyChanged()V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Float;
    .locals 0

    .line 34
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/SeekBarPreferenceString;->floatFromString(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/pocketworkstation/pckeyboard/SeekBarPreferenceString;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "0.0"

    .line 40
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/SeekBarPreferenceString;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/SeekBarPreferenceString;->floatFromString(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/SeekBarPreferenceString;->setVal(Ljava/lang/Float;)V

    goto :goto_0

    .line 42
    :cond_0
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/SeekBarPreferenceString;->setVal(Ljava/lang/Float;)V

    .line 44
    :goto_0
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/SeekBarPreferenceString;->savePrevVal()V

    return-void
.end method
