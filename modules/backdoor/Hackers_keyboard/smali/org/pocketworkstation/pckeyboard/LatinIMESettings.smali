.class public Lorg/pocketworkstation/pckeyboard/LatinIMESettings;
.super Landroid/preference/PreferenceActivity;
.source "LatinIMESettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field static DATETIME_VARIATIONS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static INPUT_CLASSES:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final INPUT_CONNECTION_INFO:Ljava/lang/String; = "input_connection_info"

.field static NUMBER_VARIATIONS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREDICTION_SETTINGS_KEY:Ljava/lang/String; = "prediction_settings"

.field static final PREF_SETTINGS_KEY:Ljava/lang/String; = "settings_key"

.field private static final QUICK_FIXES_KEY:Ljava/lang/String; = "quick_fixes"

.field private static final TAG:Ljava/lang/String; = "LatinIMESettings"

.field static TEXT_VARIATIONS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VOICE_INPUT_CONFIRM_DIALOG:I = 0x0

.field private static final VOICE_SETTINGS_KEY:Ljava/lang/String; = "voice_mode"


# instance fields
.field private mInputConnectionInfo:Landroid/preference/Preference;

.field private mKeyboardModeLandscapePreference:Landroid/preference/ListPreference;

.field private mKeyboardModePortraitPreference:Landroid/preference/ListPreference;

.field private mLabelVersion:Landroid/preference/Preference;

.field private mOkClicked:Z

.field private mQuickFixes:Landroid/preference/CheckBoxPreference;

.field private mSettingsKeyPreference:Landroid/preference/ListPreference;

.field private mVoiceModeOff:Ljava/lang/String;

.field private mVoiceOn:Z

.field private mVoicePreference:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->INPUT_CLASSES:Ljava/util/Map;

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->DATETIME_VARIATIONS:Ljava/util/Map;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->TEXT_VARIATIONS:Ljava/util/Map;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->NUMBER_VARIATIONS:Ljava/util/Map;

    .line 167
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->INPUT_CLASSES:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DATETIME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->INPUT_CLASSES:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NUMBER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->INPUT_CLASSES:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PHONE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->INPUT_CLASSES:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->INPUT_CLASSES:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NULL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->DATETIME_VARIATIONS:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "DATE"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->DATETIME_VARIATIONS:Ljava/util/Map;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "TIME"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->NUMBER_VARIATIONS:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "PASSWORD"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->TEXT_VARIATIONS:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "EMAIL_ADDRESS"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->TEXT_VARIATIONS:Ljava/util/Map;

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "EMAIL_SUBJECT"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->TEXT_VARIATIONS:Ljava/util/Map;

    const/16 v2, 0xb0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "FILTER"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->TEXT_VARIATIONS:Ljava/util/Map;

    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LONG_MESSAGE"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->TEXT_VARIATIONS:Ljava/util/Map;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "PASSWORD"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->TEXT_VARIATIONS:Ljava/util/Map;

    const/16 v2, 0x60

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "PERSON_NAME"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->TEXT_VARIATIONS:Ljava/util/Map;

    const/16 v2, 0xc0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "PHONETIC"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->TEXT_VARIATIONS:Ljava/util/Map;

    const/16 v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "POSTAL_ADDRESS"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->TEXT_VARIATIONS:Ljava/util/Map;

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "SHORT_MESSAGE"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->TEXT_VARIATIONS:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "URI"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->TEXT_VARIATIONS:Ljava/util/Map;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VISIBLE_PASSWORD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->TEXT_VARIATIONS:Ljava/util/Map;

    const/16 v1, 0xa0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WEB_EDIT_TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->TEXT_VARIATIONS:Ljava/util/Map;

    const/16 v1, 0xd0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WEB_EMAIL_ADDRESS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->TEXT_VARIATIONS:Ljava/util/Map;

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WEB_PASSWORD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mOkClicked:Z

    return-void
.end method

.method private static addBit(Ljava/lang/StringBuffer;ILjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "|"

    .line 197
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method private static inputTypeDesc(I)Ljava/lang/String;
    .locals 5

    and-int/lit8 v0, p0, 0xf

    const v1, 0xfff000

    and-int/2addr v1, p0

    and-int/lit16 p0, p0, 0xff0

    .line 207
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 208
    sget-object v3, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->INPUT_CLASSES:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "?"

    .line 209
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 212
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->TEXT_VARIATIONS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string v0, "."

    .line 214
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const/high16 p0, 0x10000

    and-int/2addr p0, v1

    const-string v0, "AUTO_COMPLETE"

    .line 217
    invoke-static {v2, p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->addBit(Ljava/lang/StringBuffer;ILjava/lang/String;)V

    const p0, 0x8000

    and-int/2addr p0, v1

    const-string v0, "AUTO_CORRECT"

    .line 218
    invoke-static {v2, p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->addBit(Ljava/lang/StringBuffer;ILjava/lang/String;)V

    and-int/lit16 p0, v1, 0x1000

    const-string v0, "CAP_CHARACTERS"

    .line 219
    invoke-static {v2, p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->addBit(Ljava/lang/StringBuffer;ILjava/lang/String;)V

    and-int/lit16 p0, v1, 0x4000

    const-string v0, "CAP_SENTENCES"

    .line 220
    invoke-static {v2, p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->addBit(Ljava/lang/StringBuffer;ILjava/lang/String;)V

    and-int/lit16 p0, v1, 0x2000

    const-string v0, "CAP_WORDS"

    .line 221
    invoke-static {v2, p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->addBit(Ljava/lang/StringBuffer;ILjava/lang/String;)V

    const/high16 p0, 0x40000

    and-int/2addr p0, v1

    const-string v0, "IME_MULTI_LINE"

    .line 222
    invoke-static {v2, p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->addBit(Ljava/lang/StringBuffer;ILjava/lang/String;)V

    const/high16 p0, 0x20000

    and-int/2addr p0, v1

    const-string v0, "MULTI_LINE"

    .line 223
    invoke-static {v2, p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->addBit(Ljava/lang/StringBuffer;ILjava/lang/String;)V

    const/high16 p0, 0x80000

    and-int/2addr p0, v1

    const-string v0, "NO_SUGGESTIONS"

    .line 224
    invoke-static {v2, p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->addBit(Ljava/lang/StringBuffer;ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 226
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->NUMBER_VARIATIONS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_3

    const-string v0, "."

    .line 228
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    and-int/lit16 p0, v1, 0x2000

    const-string v0, "DECIMAL"

    .line 231
    invoke-static {v2, p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->addBit(Ljava/lang/StringBuffer;ILjava/lang/String;)V

    and-int/lit16 p0, v1, 0x1000

    const-string v0, "SIGNED"

    .line 232
    invoke-static {v2, p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->addBit(Ljava/lang/StringBuffer;ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 234
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->DATETIME_VARIATIONS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_5

    const-string v0, "."

    .line 236
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    :cond_5
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private showVoiceConfirmation()V
    .locals 1

    const/4 v0, 0x0

    .line 256
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mOkClicked:Z

    .line 257
    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->showDialog(I)V

    return-void
.end method

.method private updateSummaries()V
    .locals 5

    .line 244
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mSettingsKeyPreference:Landroid/preference/ListPreference;

    const v2, 0x7f020016

    .line 246
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mSettingsKeyPreference:Landroid/preference/ListPreference;

    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mSettingsKeyPreference:Landroid/preference/ListPreference;

    .line 247
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v0, v2

    .line 245
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mInputConnectionInfo:Landroid/preference/Preference;

    const-string v1, "%s type=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget-object v3, v3, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->editorPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget v3, v3, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->editorInputType:I

    .line 251
    invoke-static {v3}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->inputTypeDesc(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 249
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateVoiceModeSummary()V
    .locals 4

    .line 261
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;

    .line 262
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;

    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;

    .line 263
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    .line 261
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateVoicePreference()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 70
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0018

    .line 71
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->addPreferencesFromResource(I)V

    const-string p1, "quick_fixes"

    .line 72
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mQuickFixes:Landroid/preference/CheckBoxPreference;

    const-string p1, "voice_mode"

    .line 73
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;

    const-string p1, "settings_key"

    .line 74
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mSettingsKeyPreference:Landroid/preference/ListPreference;

    const-string p1, "input_connection_info"

    .line 75
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mInputConnectionInfo:Landroid/preference/Preference;

    const-string p1, "label_version"

    .line 76
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mLabelVersion:Landroid/preference/Preference;

    const-string p1, "pref_keyboard_mode_portrait"

    .line 80
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mKeyboardModePortraitPreference:Landroid/preference/ListPreference;

    const-string p1, "pref_keyboard_mode_landscape"

    .line 81
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mKeyboardModeLandscapePreference:Landroid/preference/ListPreference;

    .line 83
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 84
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const v0, 0x7f0c01a6

    .line 86
    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    const-string v0, "voice_mode"

    .line 87
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mVoiceOn:Z

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    const-string v0, "LatinIMESettings"

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown dialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 143
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 145
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 276
    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mOkClicked:Z

    if-nez p1, :cond_0

    .line 279
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 12

    .line 92
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 93
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0}, Landroid/text/AutoText;->getSize(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const-string v0, "prediction_settings"

    .line 95
    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mQuickFixes:Landroid/preference/CheckBoxPreference;

    .line 96
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    const-string v0, "LatinIMESettings"

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compactModeEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget-boolean v3, v3, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->compactModeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget-boolean v0, v0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->compactModeEnabled:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mKeyboardModePortraitPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 102
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mKeyboardModePortraitPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 104
    array-length v4, v0

    const/4 v5, 0x2

    if-le v4, v5, :cond_1

    .line 105
    new-array v4, v5, [Ljava/lang/CharSequence;

    aget-object v6, v0, v2

    aput-object v6, v4, v2

    aget-object v0, v0, v5

    aput-object v0, v4, v1

    .line 106
    new-array v0, v5, [Ljava/lang/CharSequence;

    aget-object v6, v3, v2

    aput-object v6, v0, v2

    aget-object v3, v3, v5

    aput-object v3, v0, v1

    .line 107
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mKeyboardModePortraitPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 108
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mKeyboardModePortraitPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 109
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mKeyboardModeLandscapePreference:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 110
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mKeyboardModeLandscapePreference:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 114
    :cond_1
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->updateSummaries()V

    const-string v0, ""

    .line 118
    :try_start_0
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 119
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    :try_start_1
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v7, v0, v5

    .line 122
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 124
    :goto_1
    array-length v10, v7

    if-ge v8, v10, :cond_2

    .line 125
    rem-int/lit8 v10, v8, 0x4

    .line 126
    aget-byte v11, v7, v8

    mul-int/lit8 v10, v10, 0x4

    shl-int v10, v11, v10

    xor-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    const v7, -0x71f89

    if-ne v9, v7, :cond_3

    const/4 v6, 0x1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 133
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_5

    const-string v1, " official"

    goto :goto_2

    :cond_5
    const-string v1, " custom"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-object v0, v4

    :catch_1
    const-string v1, "LatinIMESettings"

    const-string v2, "Could not find version info."

    .line 135
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_3
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mLabelVersion:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 149
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    const-string v0, "voice_mode"

    .line 151
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mVoiceOn:Z

    if-nez p2, :cond_0

    const-string p2, "voice_mode"

    .line 152
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    .line 153
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 154
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->showVoiceConfirmation()V

    :cond_0
    const-string p2, "voice_mode"

    .line 157
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->mVoiceOn:Z

    .line 158
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->updateVoiceModeSummary()V

    .line 159
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;->updateSummaries()V

    return-void
.end method
