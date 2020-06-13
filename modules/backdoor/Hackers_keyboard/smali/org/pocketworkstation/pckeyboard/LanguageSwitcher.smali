.class public Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;
.super Ljava/lang/Object;
.source "LanguageSwitcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HK/LanguageSwitcher"


# instance fields
.field private mCurrentIndex:I

.field private mDefaultInputLanguage:Ljava/lang/String;

.field private mDefaultInputLocale:Ljava/util/Locale;

.field private mIme:Lorg/pocketworkstation/pckeyboard/LatinIME;

.field private mLocales:[Ljava/util/Locale;

.field private mSelectedLanguageArray:[Ljava/lang/String;

.field private mSelectedLanguages:Ljava/lang/String;

.field private mSystemLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Lorg/pocketworkstation/pckeyboard/LatinIME;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mCurrentIndex:I

    .line 44
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mIme:Lorg/pocketworkstation/pckeyboard/LatinIME;

    .line 45
    new-array p1, v0, [Ljava/util/Locale;

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    return-void
.end method

.method private constructLocales()V
    .locals 8

    .line 101
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/Locale;

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 102
    :goto_0
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 103
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 104
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    new-instance v4, Ljava/util/Locale;

    const/4 v5, 0x2

    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 105
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-le v6, v7, :cond_0

    const/4 v6, 0x3

    const/4 v7, 0x5

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const-string v2, ""

    :goto_1
    invoke-direct {v4, v5, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private loadDefaults()V
    .locals 4

    .line 94
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mIme:Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    .line 95
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mDefaultInputLanguage:Ljava/lang/String;

    return-void
.end method

.method static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 222
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public allowAutoCap()Z
    .locals 3

    .line 120
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_0
    sget-object v1, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->NOCAPS_LANGUAGES:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public allowAutoSpace()Z
    .locals 3

    .line 132
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 134
    :cond_0
    sget-object v1, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->NOAUTOSPACE_LANGUAGES:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public allowDeadKeys()Z
    .locals 3

    .line 126
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 128
    :cond_0
    sget-object v1, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->NODEADKEY_LANGUAGES:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getEnabledLanguages()[Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getInputLanguage()Ljava/lang/String;
    .locals 2

    .line 114
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mDefaultInputLanguage:Ljava/lang/String;

    return-object v0

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mCurrentIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getInputLocale()Ljava/util/Locale;
    .locals 3

    .line 151
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mCurrentIndex:I

    aget-object v0, v0, v1

    .line 156
    :goto_0
    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    if-eqz v0, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    :goto_1
    iput-object v2, v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->inputLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getLocaleCount()I
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v0, v0

    return v0
.end method

.method public getLocales()[Ljava/util/Locale;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    return-object v0
.end method

.method public getNextInputLocale()Ljava/util/Locale;
    .locals 3

    .line 166
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    return-object v0

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mCurrentIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPrevInputLocale()Ljava/util/Locale;
    .locals 3

    .line 193
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    return-object v0

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mCurrentIndex:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v2, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSystemLocale()Ljava/util/Locale;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mSystemLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public loadLocales(Landroid/content/SharedPreferences;)Z
    .locals 4

    const-string v0, "selected_languages"

    const/4 v1, 0x0

    .line 62
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "input_language"

    .line 63
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v1, :cond_0

    goto :goto_2

    .line 72
    :cond_0
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mSelectedLanguages:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    const-string v3, ","

    .line 75
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mSelectedLanguages:Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->constructLocales()V

    .line 78
    iput v2, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mCurrentIndex:I

    if-eqz p1, :cond_3

    .line 81
    iput v2, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mCurrentIndex:I

    .line 82
    :goto_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v0, v0

    if-ge v2, v0, :cond_3

    .line 83
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    iput v2, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mCurrentIndex:I

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    .line 65
    :cond_4
    :goto_2
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->loadDefaults()V

    .line 66
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length p1, p1

    if-nez p1, :cond_5

    return v2

    .line 69
    :cond_5
    new-array p1, v2, [Ljava/util/Locale;

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    return v1
.end method

.method public next()V
    .locals 2

    .line 205
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mCurrentIndex:I

    .line 206
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mCurrentIndex:I

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mCurrentIndex:I

    :cond_0
    return-void
.end method

.method public persist()V
    .locals 3

    .line 215
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mIme:Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 216
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "input_language"

    .line 217
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 218
    invoke-static {v0}, Lorg/pocketworkstation/pckeyboard/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public prev()V
    .locals 1

    .line 210
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mCurrentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mCurrentIndex:I

    .line 211
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mCurrentIndex:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mCurrentIndex:I

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 199
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mCurrentIndex:I

    const-string v0, ""

    .line 200
    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mSelectedLanguages:Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mIme:Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;)Z

    return-void
.end method

.method public setSystemLocale(Ljava/util/Locale;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->mSystemLocale:Ljava/util/Locale;

    return-void
.end method
