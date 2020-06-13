.class public Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;
.super Landroid/preference/PreferenceActivity;
.source "InputLanguageSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;
    }
.end annotation


# static fields
.field private static final BLACKLIST_LANGUAGES:[Ljava/lang/String;

.field private static final KBD_4_ROW:[Ljava/lang/String;

.field private static final KBD_5_ROW:[Ljava/lang/String;

.field private static final KBD_LOCALIZATIONS:[Ljava/lang/String;

.field public static final NOAUTOSPACE_LANGUAGES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOCAPS_LANGUAGES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NODEADKEY_LANGUAGES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PCKeyboardILS"


# instance fields
.field private mAvailableLanguages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/4 v0, 0x3

    .line 42
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "ko"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ja"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "zh"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->BLACKLIST_LANGUAGES:[Ljava/lang/String;

    .line 47
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->NOCAPS_LANGUAGES:Ljava/util/Set;

    .line 49
    sget-object v1, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->NOCAPS_LANGUAGES:Ljava/util/Set;

    const-string v2, "ar"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v1, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->NOCAPS_LANGUAGES:Ljava/util/Set;

    const-string v2, "iw"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v1, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->NOCAPS_LANGUAGES:Ljava/util/Set;

    const-string v2, "th"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->NODEADKEY_LANGUAGES:Ljava/util/Set;

    .line 57
    sget-object v1, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->NODEADKEY_LANGUAGES:Ljava/util/Set;

    const-string v2, "ar"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v1, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->NODEADKEY_LANGUAGES:Ljava/util/Set;

    const-string v2, "iw"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v1, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->NODEADKEY_LANGUAGES:Ljava/util/Set;

    const-string v2, "th"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->NOAUTOSPACE_LANGUAGES:Ljava/util/Set;

    .line 65
    sget-object v1, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->NOAUTOSPACE_LANGUAGES:Ljava/util/Set;

    const-string v2, "th"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x3a

    .line 70
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ar"

    aput-object v2, v1, v3

    const-string v2, "bg"

    aput-object v2, v1, v4

    const-string v2, "bg_ST"

    aput-object v2, v1, v5

    const-string v2, "ca"

    aput-object v2, v1, v0

    const-string v2, "cs"

    const/4 v6, 0x4

    aput-object v2, v1, v6

    const-string v2, "cs_QY"

    const/4 v7, 0x5

    aput-object v2, v1, v7

    const-string v2, "da"

    const/4 v8, 0x6

    aput-object v2, v1, v8

    const-string v2, "de"

    const/4 v9, 0x7

    aput-object v2, v1, v9

    const-string v2, "de_NE"

    const/16 v10, 0x8

    aput-object v2, v1, v10

    const-string v2, "el"

    const/16 v11, 0x9

    aput-object v2, v1, v11

    const-string v2, "en"

    const/16 v12, 0xa

    aput-object v2, v1, v12

    const-string v2, "en_CX"

    const/16 v13, 0xb

    aput-object v2, v1, v13

    const-string v2, "en_DV"

    const/16 v14, 0xc

    aput-object v2, v1, v14

    const-string v2, "en_GB"

    const/16 v15, 0xd

    aput-object v2, v1, v15

    const-string v2, "es"

    const/16 v16, 0xe

    aput-object v2, v1, v16

    const-string v2, "es_LA"

    const/16 v17, 0xf

    aput-object v2, v1, v17

    const-string v2, "es_US"

    const/16 v17, 0x10

    aput-object v2, v1, v17

    const-string v2, "fa"

    const/16 v17, 0x11

    aput-object v2, v1, v17

    const-string v2, "fi"

    const/16 v17, 0x12

    aput-object v2, v1, v17

    const-string v2, "fr"

    const/16 v17, 0x13

    aput-object v2, v1, v17

    const-string v2, "fr_CA"

    const/16 v17, 0x14

    aput-object v2, v1, v17

    const-string v2, "he"

    const/16 v17, 0x15

    aput-object v2, v1, v17

    const-string v2, "hr"

    const/16 v17, 0x16

    aput-object v2, v1, v17

    const-string v2, "hu"

    const/16 v17, 0x17

    aput-object v2, v1, v17

    const-string v2, "hu_QY"

    const/16 v17, 0x18

    aput-object v2, v1, v17

    const-string v2, "hy"

    const/16 v17, 0x19

    aput-object v2, v1, v17

    const-string v2, "in"

    const/16 v17, 0x1a

    aput-object v2, v1, v17

    const-string v2, "it"

    const/16 v17, 0x1b

    aput-object v2, v1, v17

    const-string v2, "iw"

    const/16 v17, 0x1c

    aput-object v2, v1, v17

    const-string v2, "ja"

    const/16 v17, 0x1d

    aput-object v2, v1, v17

    const-string v2, "ka"

    const/16 v17, 0x1e

    aput-object v2, v1, v17

    const-string v2, "ko"

    const/16 v17, 0x1f

    aput-object v2, v1, v17

    const-string v2, "lo"

    const/16 v17, 0x20

    aput-object v2, v1, v17

    const-string v2, "lt"

    const/16 v17, 0x21

    aput-object v2, v1, v17

    const-string v2, "lv"

    const/16 v17, 0x22

    aput-object v2, v1, v17

    const-string v2, "nb"

    const/16 v17, 0x23

    aput-object v2, v1, v17

    const-string v2, "nl"

    const/16 v17, 0x24

    aput-object v2, v1, v17

    const-string v2, "pl"

    const/16 v17, 0x25

    aput-object v2, v1, v17

    const-string v2, "pt"

    const/16 v17, 0x26

    aput-object v2, v1, v17

    const-string v2, "pt_PT"

    const/16 v17, 0x27

    aput-object v2, v1, v17

    const-string v2, "rm"

    const/16 v17, 0x28

    aput-object v2, v1, v17

    const-string v2, "ro"

    const/16 v17, 0x29

    aput-object v2, v1, v17

    const-string v2, "ru"

    const/16 v17, 0x2a

    aput-object v2, v1, v17

    const-string v2, "ru_PH"

    const/16 v17, 0x2b

    aput-object v2, v1, v17

    const-string v2, "si"

    const/16 v17, 0x2c

    aput-object v2, v1, v17

    const-string v2, "sk"

    const/16 v17, 0x2d

    aput-object v2, v1, v17

    const-string v2, "sk_QY"

    const/16 v17, 0x2e

    aput-object v2, v1, v17

    const-string v2, "sl"

    const/16 v17, 0x2f

    aput-object v2, v1, v17

    const-string v2, "sr"

    const/16 v17, 0x30

    aput-object v2, v1, v17

    const-string v2, "sv"

    const/16 v17, 0x31

    aput-object v2, v1, v17

    const-string v2, "ta"

    const/16 v17, 0x32

    aput-object v2, v1, v17

    const-string v2, "th"

    const/16 v17, 0x33

    aput-object v2, v1, v17

    const-string v2, "tl"

    const/16 v17, 0x34

    aput-object v2, v1, v17

    const-string v2, "tr"

    const/16 v17, 0x35

    aput-object v2, v1, v17

    const-string v2, "uk"

    const/16 v17, 0x36

    aput-object v2, v1, v17

    const-string v2, "vi"

    const/16 v17, 0x37

    aput-object v2, v1, v17

    const-string v2, "zh_CN"

    const/16 v17, 0x38

    aput-object v2, v1, v17

    const-string v2, "zh_TW"

    const/16 v17, 0x39

    aput-object v2, v1, v17

    sput-object v1, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->KBD_LOCALIZATIONS:[Ljava/lang/String;

    const/16 v1, 0x2b

    .line 79
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ar"

    aput-object v2, v1, v3

    const-string v2, "bg"

    aput-object v2, v1, v4

    const-string v2, "bg_ST"

    aput-object v2, v1, v5

    const-string v2, "cs"

    aput-object v2, v1, v0

    const-string v2, "cs_QY"

    aput-object v2, v1, v6

    const-string v2, "da"

    aput-object v2, v1, v7

    const-string v2, "de"

    aput-object v2, v1, v8

    const-string v2, "de_NE"

    aput-object v2, v1, v9

    const-string v2, "el"

    aput-object v2, v1, v10

    const-string v2, "en"

    aput-object v2, v1, v11

    const-string v2, "en_CX"

    aput-object v2, v1, v12

    const-string v2, "en_DV"

    aput-object v2, v1, v13

    const-string v2, "en_GB"

    aput-object v2, v1, v14

    const-string v2, "es"

    aput-object v2, v1, v15

    const-string v2, "es_LA"

    aput-object v2, v1, v16

    const-string v2, "fa"

    const/16 v17, 0xf

    aput-object v2, v1, v17

    const-string v2, "fi"

    const/16 v17, 0x10

    aput-object v2, v1, v17

    const-string v2, "fr"

    const/16 v17, 0x11

    aput-object v2, v1, v17

    const-string v2, "fr_CA"

    const/16 v17, 0x12

    aput-object v2, v1, v17

    const-string v2, "he"

    const/16 v17, 0x13

    aput-object v2, v1, v17

    const-string v2, "hr"

    const/16 v17, 0x14

    aput-object v2, v1, v17

    const-string v2, "hu"

    const/16 v17, 0x15

    aput-object v2, v1, v17

    const-string v2, "hu_QY"

    const/16 v17, 0x16

    aput-object v2, v1, v17

    const-string v2, "hy"

    const/16 v17, 0x17

    aput-object v2, v1, v17

    const-string v2, "it"

    const/16 v17, 0x18

    aput-object v2, v1, v17

    const-string v2, "iw"

    const/16 v17, 0x19

    aput-object v2, v1, v17

    const-string v2, "lo"

    const/16 v17, 0x1a

    aput-object v2, v1, v17

    const-string v2, "lt"

    const/16 v17, 0x1b

    aput-object v2, v1, v17

    const-string v2, "nb"

    const/16 v17, 0x1c

    aput-object v2, v1, v17

    const-string v2, "pt_PT"

    const/16 v17, 0x1d

    aput-object v2, v1, v17

    const-string v2, "ro"

    const/16 v17, 0x1e

    aput-object v2, v1, v17

    const-string v2, "ru"

    const/16 v17, 0x1f

    aput-object v2, v1, v17

    const-string v2, "ru_PH"

    const/16 v17, 0x20

    aput-object v2, v1, v17

    const-string v2, "si"

    const/16 v17, 0x21

    aput-object v2, v1, v17

    const-string v2, "sk"

    const/16 v17, 0x22

    aput-object v2, v1, v17

    const-string v2, "sk_QY"

    const/16 v17, 0x23

    aput-object v2, v1, v17

    const-string v2, "sl"

    const/16 v17, 0x24

    aput-object v2, v1, v17

    const-string v2, "sr"

    const/16 v17, 0x25

    aput-object v2, v1, v17

    const-string v2, "sv"

    const/16 v17, 0x26

    aput-object v2, v1, v17

    const-string v2, "ta"

    const/16 v17, 0x27

    aput-object v2, v1, v17

    const-string v2, "th"

    const/16 v17, 0x28

    aput-object v2, v1, v17

    const-string v2, "tr"

    const/16 v17, 0x29

    aput-object v2, v1, v17

    const-string v2, "uk"

    const/16 v17, 0x2a

    aput-object v2, v1, v17

    sput-object v1, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->KBD_5_ROW:[Ljava/lang/String;

    const/16 v1, 0x21

    .line 87
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ar"

    aput-object v2, v1, v3

    const-string v2, "bg"

    aput-object v2, v1, v4

    const-string v2, "bg_ST"

    aput-object v2, v1, v5

    const-string v2, "cs"

    aput-object v2, v1, v0

    const-string v0, "cs_QY"

    aput-object v0, v1, v6

    const-string v0, "da"

    aput-object v0, v1, v7

    const-string v0, "de"

    aput-object v0, v1, v8

    const-string v0, "de_NE"

    aput-object v0, v1, v9

    const-string v0, "el"

    aput-object v0, v1, v10

    const-string v0, "en"

    aput-object v0, v1, v11

    const-string v0, "en_CX"

    aput-object v0, v1, v12

    const-string v0, "en_DV"

    aput-object v0, v1, v13

    const-string v0, "es"

    aput-object v0, v1, v14

    const-string v0, "es_LA"

    aput-object v0, v1, v15

    const-string v0, "es_US"

    aput-object v0, v1, v16

    const-string v0, "fa"

    const/16 v2, 0xf

    aput-object v0, v1, v2

    const-string v0, "fr"

    const/16 v2, 0x10

    aput-object v0, v1, v2

    const-string v0, "fr_CA"

    const/16 v2, 0x11

    aput-object v0, v1, v2

    const-string v0, "he"

    const/16 v2, 0x12

    aput-object v0, v1, v2

    const-string v0, "hr"

    const/16 v2, 0x13

    aput-object v0, v1, v2

    const-string v0, "hu"

    const/16 v2, 0x14

    aput-object v0, v1, v2

    const-string v0, "hu_QY"

    const/16 v2, 0x15

    aput-object v0, v1, v2

    const-string v0, "iw"

    const/16 v2, 0x16

    aput-object v0, v1, v2

    const-string v0, "nb"

    const/16 v2, 0x17

    aput-object v0, v1, v2

    const-string v0, "ru"

    const/16 v2, 0x18

    aput-object v0, v1, v2

    const-string v0, "ru_PH"

    const/16 v2, 0x19

    aput-object v0, v1, v2

    const-string v0, "sk"

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    const-string v0, "sk_QY"

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    const-string v0, "sl"

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    const-string v0, "sr"

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    const-string v0, "sv"

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    const-string v0, "tr"

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    const-string v0, "uk"

    const/16 v2, 0x20

    aput-object v0, v1, v2

    sput-object v1, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->KBD_4_ROW:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    return-void
.end method

.method private arrayContains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 378
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 379
    aget-object v2, p1, v1

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static asString(Ljava/util/Set;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set("

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 274
    invoke-interface {p0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 275
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 276
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ", "

    .line 277
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ")"

    .line 280
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private get5Code(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .line 239
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getLocaleName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .line 95
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "DV"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "English (Dvorak)"

    return-object p0

    :cond_0
    const-string v2, "en"

    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "EX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "English (4x11)"

    return-object p0

    :cond_1
    const-string v2, "en"

    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "CX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p0, "English (Carpalx)"

    return-object p0

    :cond_2
    const-string v2, "es"

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "LA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "Espa\u00f1ol (Latinoam\u00e9rica)"

    return-object p0

    :cond_3
    const-string v2, "cs"

    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "QY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p0, "\u010ce\u0161tina (QWERTY)"

    return-object p0

    :cond_4
    const-string v2, "de"

    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "NE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p0, "Deutsch (Neo2)"

    return-object p0

    :cond_5
    const-string v2, "hu"

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "QY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string p0, "Magyar (QWERTY)"

    return-object p0

    :cond_6
    const-string v2, "sk"

    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "QY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string p0, "Sloven\u010dina (QWERTY)"

    return-object p0

    :cond_7
    const-string v2, "ru"

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "PH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string p0, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439 (Phonetic)"

    return-object p0

    :cond_8
    const-string v2, "bg"

    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "ST"

    .line 116
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "\u0431\u044a\u043b\u0433\u0430\u0440\u0441\u043a\u0438 \u0435\u0437\u0438\u043a (Standard)"

    return-object p0

    :cond_9
    const-string p0, "\u0431\u044a\u043b\u0433\u0430\u0440\u0441\u043a\u0438 \u0435\u0437\u0438\u043a (Phonetic)"

    return-object p0

    .line 122
    :cond_a
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hasDictionary(Ljava/util/Locale;)Z
    .locals 7

    .line 209
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 211
    iget-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 213
    iput-object p1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 214
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 216
    invoke-static {v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getDictionary(Landroid/content/res/Resources;)[I

    move-result-object v3

    .line 217
    new-instance v4, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v3, v5}, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;-><init>(Landroid/content/Context;[II)V

    .line 221
    invoke-virtual {v4}, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->getSize()I

    move-result v3

    const v6, 0xc350

    if-le v3, v6, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lorg/pocketworkstation/pckeyboard/PluginManager;->getDictionary(Landroid/content/Context;Ljava/lang/String;)Lorg/pocketworkstation/pckeyboard/BinaryDictionary;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 226
    invoke-virtual {v4}, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->close()V

    move-object v4, p1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 232
    :goto_0
    invoke-virtual {v4}, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->close()V

    .line 233
    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 234
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return v5
.end method


# virtual methods
.method getUniqueLocales()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;",
            ">;"
        }
    .end annotation

    .line 285
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 286
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 307
    :goto_0
    sget-object v4, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->KBD_LOCALIZATIONS:[Ljava/lang/String;

    array-length v4, v4

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x6

    if-ge v3, v4, :cond_2

    .line 308
    sget-object v4, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->KBD_LOCALIZATIONS:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 309
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v6, :cond_0

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    .line 311
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v7, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 312
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "PCKeyboardILS"

    .line 314
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "localeSet="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->asString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "PCKeyboardILS"

    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "langSet="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->asString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 319
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 320
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 322
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 324
    array-length v3, v0

    .line 325
    new-array v4, v3, [Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    if-ge v8, v3, :cond_b

    .line 328
    aget-object v10, v0, v8

    .line 329
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x5

    if-eq v11, v6, :cond_3

    if-eq v11, v12, :cond_3

    if-ne v11, v7, :cond_a

    .line 331
    :cond_3
    invoke-virtual {v10, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    if-ne v11, v12, :cond_4

    const/4 v11, 0x3

    .line 335
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 336
    new-instance v12, Ljava/util/Locale;

    invoke-direct {v12, v13, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    if-ne v11, v7, :cond_5

    .line 339
    new-instance v12, Ljava/util/Locale;

    invoke-virtual {v10, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v13, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 341
    :cond_5
    new-instance v12, Ljava/util/Locale;

    invoke-direct {v12, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 345
    :goto_3
    sget-object v11, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->BLACKLIST_LANGUAGES:[Ljava/lang/String;

    invoke-direct {p0, v11, v13}, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_5

    :cond_6
    if-nez v9, :cond_7

    add-int/lit8 v10, v9, 0x1

    .line 348
    new-instance v11, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;

    .line 349
    invoke-virtual {v12, v12}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13, v12}, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v11, v4, v9

    :goto_4
    move v9, v10

    goto :goto_5

    :cond_7
    add-int/lit8 v11, v9, -0x1

    .line 355
    aget-object v14, v4, v11

    iget-object v14, v14, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;->locale:Ljava/util/Locale;

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 357
    aget-object v10, v4, v11

    aget-object v11, v4, v11

    iget-object v11, v11, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;->locale:Ljava/util/Locale;

    invoke-static {v11}, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->getLocaleName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;->label:Ljava/lang/String;

    add-int/lit8 v10, v9, 0x1

    .line 358
    new-instance v11, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;

    .line 359
    invoke-static {v12}, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->getLocaleName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13, v12}, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v11, v4, v9

    goto :goto_4

    :cond_8
    const-string v11, "zz_ZZ"

    .line 362
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_5

    .line 364
    :cond_9
    invoke-static {v12}, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->getLocaleName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v11, v9, 0x1

    .line 365
    new-instance v13, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;

    invoke-direct {v13, v10, v12}, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v13, v4, v9

    move v9, v11

    :cond_a
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :cond_b
    :goto_6
    if-ge v2, v9, :cond_c

    .line 372
    aget-object v0, v4, v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_c
    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 149
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f000e

    .line 150
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->addPreferencesFromResource(I)V

    .line 152
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "selected_languages"

    const-string v1, ""

    .line 153
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PCKeyboardILS"

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selected languages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ","

    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->getUniqueLocales()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 163
    :goto_0
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 164
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;

    iget-object v3, v3, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;->locale:Ljava/util/Locale;

    .line 165
    invoke-direct {p0, v3}, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->get5Code(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    .line 168
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 169
    aget-object v4, p1, v3

    .line 170
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 171
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 172
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_2

    .line 173
    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 174
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 178
    :cond_3
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const/4 v0, 0x0

    .line 179
    :goto_3
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_e

    .line 180
    new-instance v3, Landroid/preference/CheckBoxPreference;

    invoke-direct {v3, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 181
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;

    iget-object v4, v4, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;->locale:Ljava/util/Locale;

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;

    iget-object v6, v6, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;->label:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 182
    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 184
    invoke-direct {p0, v4}, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->get5Code(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 185
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 186
    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 187
    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 188
    sget-object v7, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->KBD_4_ROW:[Ljava/lang/String;

    invoke-direct {p0, v7, v5}, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_5

    sget-object v7, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->KBD_4_ROW:[Ljava/lang/String;

    invoke-direct {p0, v7, v6}, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v7, 0x1

    .line 189
    :goto_5
    sget-object v9, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->KBD_5_ROW:[Ljava/lang/String;

    invoke-direct {p0, v9, v5}, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    sget-object v5, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->KBD_5_ROW:[Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    .line 190
    :cond_7
    :goto_6
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v8, :cond_8

    const-string v6, "5-row"

    .line 191
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v7, :cond_9

    const-string v6, "4-row"

    .line 192
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_9
    invoke-direct {p0, v4}, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->hasDictionary(Ljava/util/Locale;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 194
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c0066

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_a
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    .line 198
    :goto_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_c

    if-lez v6, :cond_b

    const-string v7, ", "

    .line 199
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_b
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 202
    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 204
    :cond_d
    invoke-virtual {p1, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_e
    return-void
.end method

.method protected onPause()V
    .locals 6

    .line 251
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    const-string v0, ""

    .line 254
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 255
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 257
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    .line 258
    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 259
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;

    iget-object v4, v4, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;->locale:Ljava/util/Locale;

    .line 260
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;->get5Code(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 263
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    const/4 v0, 0x0

    .line 264
    :cond_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 265
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "selected_languages"

    .line 266
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 267
    invoke-static {v1}, Lorg/pocketworkstation/pckeyboard/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 246
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    return-void
.end method
