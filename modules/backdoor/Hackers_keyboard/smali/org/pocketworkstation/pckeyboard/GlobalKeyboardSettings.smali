.class public final Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;
.super Ljava/lang/Object;
.source "GlobalKeyboardSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$StringPref;,
        Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$BooleanPref;
    }
.end annotation


# static fields
.field public static final FLAG_PREF_NEED_RELOAD:I = 0x1

.field public static final FLAG_PREF_NEW_PUNC_LIST:I = 0x2

.field public static final FLAG_PREF_NONE:I = 0x0

.field public static final FLAG_PREF_RECREATE_INPUT_VIEW:I = 0x4

.field public static final FLAG_PREF_RESET_KEYBOARDS:I = 0x8

.field public static final FLAG_PREF_RESET_MODE_OVERRIDE:I = 0x10

.field protected static final TAG:Ljava/lang/String; = "HK/Globals"


# instance fields
.field public candidateScalePref:F

.field public capsLock:Z

.field public chordingAltKey:I

.field public chordingCtrlKey:I

.field public chordingMetaKey:I

.field public compactModeEnabled:Z

.field public ctrlAOverride:I

.field public editorFieldId:I

.field public editorFieldName:Ljava/lang/String;

.field public editorInputType:I

.field public editorPackageName:Ljava/lang/String;

.field public hintMode:I

.field public inputLocale:Ljava/util/Locale;

.field public keyClickMethod:I

.field public keyClickVolume:F

.field public keyboardHeightPercent:F

.field public keyboardMode:I

.field public keyboardModeLandscape:I

.field public keyboardModePortrait:I

.field public labelScalePref:F

.field public longpressTimeout:I

.field private mBoolPrefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$BooleanPref;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFlags:I

.field private mStringPrefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$StringPref;",
            ">;"
        }
    .end annotation
.end field

.field public popupKeyboardFlags:I

.field public renderMode:I

.field public sendSlideKeys:I

.field public shiftLockModifiers:Z

.field public showTouchPos:Z

.field public suggestedPunctuation:Ljava/lang/String;

.field public topRowScale:F

.field public useExtension:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->popupKeyboardFlags:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 38
    iput v1, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->topRowScale:F

    const/4 v2, 0x0

    .line 41
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->showTouchPos:Z

    const-string v3, "!?,."

    .line 44
    iput-object v3, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->suggestedPunctuation:Ljava/lang/String;

    .line 45
    iput v2, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->keyboardModePortrait:I

    const/4 v3, 0x2

    .line 46
    iput v3, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->keyboardModeLandscape:I

    .line 47
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->compactModeEnabled:Z

    .line 48
    iput v2, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->ctrlAOverride:I

    .line 49
    iput v2, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->chordingCtrlKey:I

    .line 50
    iput v2, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->chordingAltKey:I

    .line 51
    iput v2, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->chordingMetaKey:I

    const/4 v3, 0x0

    .line 52
    iput v3, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->keyClickVolume:F

    .line 53
    iput v2, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->keyClickMethod:I

    .line 54
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->capsLock:Z

    .line 55
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->shiftLockModifiers:Z

    .line 58
    iput v1, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->labelScalePref:F

    .line 61
    iput v1, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->candidateScalePref:F

    .line 64
    iput v2, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->sendSlideKeys:I

    .line 69
    iput v2, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->keyboardMode:I

    .line 70
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->useExtension:Z

    const/high16 v1, 0x42200000    # 40.0f

    .line 73
    iput v1, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->keyboardHeightPercent:F

    .line 76
    iput v2, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->hintMode:I

    .line 77
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->renderMode:I

    const/16 v0, 0x190

    .line 80
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->longpressTimeout:I

    .line 96
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->inputLocale:Ljava/util/Locale;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->mBoolPrefs:Ljava/util/Map;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->mStringPrefs:Ljava/util/Map;

    .line 107
    iput v2, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->mCurrentFlags:I

    return-void
.end method

.method private addBooleanPref(Ljava/lang/String;Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$BooleanPref;)V
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->mBoolPrefs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addStringPref(Ljava/lang/String;Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$StringPref;)V
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->mStringPrefs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasFlag(I)Z
    .locals 1

    .line 256
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->mCurrentFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 257
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->mCurrentFlags:I

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v0

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->mCurrentFlags:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public initPrefs(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V
    .locals 3

    const-string v0, "pref_keyboard_mode_portrait"

    .line 124
    new-instance v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$1;

    invoke-direct {v1, p0, p2}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$1;-><init>(Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->addStringPref(Ljava/lang/String;Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$StringPref;)V

    const-string v0, "pref_keyboard_mode_landscape"

    .line 130
    new-instance v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$2;

    invoke-direct {v1, p0, p2}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$2;-><init>(Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->addStringPref(Ljava/lang/String;Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$StringPref;)V

    const-string v0, "pref_slide_keys_int"

    .line 136
    new-instance v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$3;

    invoke-direct {v1, p0}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$3;-><init>(Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;)V

    invoke-direct {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->addStringPref(Ljava/lang/String;Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$StringPref;)V

    const-string v0, "pref_touch_pos"

    .line 142
    new-instance v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$4;

    invoke-direct {v1, p0}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$4;-><init>(Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;)V

    invoke-direct {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->addBooleanPref(Ljava/lang/String;Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$BooleanPref;)V

    const-string v0, "pref_popup_content"

    .line 148
    new-instance v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$5;

    invoke-direct {v1, p0, p2}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$5;-><init>(Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->addStringPref(Ljava/lang/String;Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$StringPref;)V

    const-string v0, "pref_suggested_punctuation"

    .line 154
    new-instance v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$6;

    invoke-direct {v1, p0, p2}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$6;-><init>(Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->addStringPref(Ljava/lang/String;Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$StringPref;)V

    const-string v0, "pref_label_scale_v2"

    .line 160
    new-instance v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$7;

    invoke-direct {v1, p0}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$7;-><init>(Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;)V

    invoke-direct {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->addStringPref(Ljava/lang/String;Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$StringPref;)V

    const-string v0, "pref_candidate_scale"

    .line 166
    new-instance v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$8;

    invoke-direct {v1, p0}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$8;-><init>(Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;)V

    invoke-direct {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->addStringPref(Ljava/lang/String;Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$StringPref;)V

    const-string v0, "pref_top_row_scale"

    .line 172
    new-instance v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$9;

    invoke-direct {v1, p0}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$9;-><init>(Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;)V

    invoke-direct {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->addStringPref(Ljava/lang/String;Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$StringPref;)V

    const-string v0, "pref_ctrl_a_override"

    .line 178
    new-instance v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$10;

    invoke-direct {v1, p0, p2}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$10;-><init>(Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->addStringPref(Ljava/lang/String;Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$StringPref;)V

    const-string v0, "pref_chording_ctrl_key"

    .line 184
    new-instance v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$11;

    invoke-direct {v1, p0, p2}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$11;-><init>(Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->addStringPref(Ljava/lang/String;Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$StringPref;)V

    const-string v0, "pref_chording_alt_key"

    .line 190
    new-instance v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$12;

    invoke-direct {v1, p0, p2}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$12;-><init>(Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->addStringPref(Ljava/lang/String;Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$StringPref;)V

    const-string v0, "pref_chording_meta_key"

    .line 196
    new-instance v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$13;

    invoke-direct {v1, p0, p2}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$13;-><init>(Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->addStringPref(Ljava/lang/String;Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$StringPref;)V

    const-string v0, "pref_click_volume"

    .line 202
    new-instance v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$14;

    invoke-direct {v1, p0, p2}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$14;-><init>(Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->addStringPref(Ljava/lang/String;Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$StringPref;)V

    const-string v0, "pref_click_method"

    .line 208
    new-instance v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$15;

    invoke-direct {v1, p0, p2}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$15;-><init>(Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->addStringPref(Ljava/lang/String;Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$StringPref;)V

    const-string v0, "pref_caps_lock"

    .line 214
    new-instance v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$16;

    invoke-direct {v1, p0, p2}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$16;-><init>(Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->addBooleanPref(Ljava/lang/String;Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$BooleanPref;)V

    const-string v0, "pref_shift_lock_modifiers"

    .line 220
    new-instance v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$17;

    invoke-direct {v1, p0, p2}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$17;-><init>(Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->addBooleanPref(Ljava/lang/String;Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$BooleanPref;)V

    .line 227
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->mBoolPrefs:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 228
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->mBoolPrefs:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$BooleanPref;

    .line 229
    invoke-interface {v1}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$BooleanPref;->getDefault()Z

    move-result v2

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-interface {v1, v0}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$BooleanPref;->set(Z)V

    goto :goto_0

    .line 231
    :cond_0
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->mStringPrefs:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->mStringPrefs:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$StringPref;

    .line 233
    invoke-interface {v1}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$StringPref;->getDefault()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$StringPref;->set(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public sharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 239
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->mCurrentFlags:I

    .line 240
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->mBoolPrefs:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$BooleanPref;

    if-eqz v0, :cond_0

    .line 243
    invoke-interface {v0}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$BooleanPref;->getDefault()Z

    move-result v1

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$BooleanPref;->set(Z)V

    .line 244
    iget v1, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->mCurrentFlags:I

    invoke-interface {v0}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$BooleanPref;->getFlags()I

    move-result v0

    or-int/2addr v0, v1

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->mCurrentFlags:I

    .line 246
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->mStringPrefs:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$StringPref;

    if-eqz v0, :cond_1

    .line 249
    invoke-interface {v0}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$StringPref;->getDefault()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$StringPref;->set(Ljava/lang/String;)V

    .line 250
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->mCurrentFlags:I

    invoke-interface {v0}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$StringPref;->getFlags()I

    move-result p2

    or-int/2addr p1, p2

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->mCurrentFlags:I

    :cond_1
    return-void
.end method

.method public unhandledFlags()I
    .locals 1

    .line 264
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->mCurrentFlags:I

    return v0
.end method
