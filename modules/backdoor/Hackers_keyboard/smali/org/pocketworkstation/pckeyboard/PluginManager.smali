.class public Lorg/pocketworkstation/pckeyboard/PluginManager;
.super Landroid/content/BroadcastReceiver;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecSoftKeyboard;,
        Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecHK;,
        Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecBase;,
        Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpec;
    }
.end annotation


# static fields
.field private static HK_INTENT_DICT:Ljava/lang/String; = "org.pocketworkstation.DICT"

.field private static SOFTKEYBOARD_INTENT_DICT:Ljava/lang/String; = "com.menny.android.anysoftkeyboard.DICTIONARY"

.field private static SOFTKEYBOARD_LANG_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static TAG:Ljava/lang/String; = "PCKeyboard"

.field private static mPluginDicts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIME:Lorg/pocketworkstation/pckeyboard/LatinIME;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/PluginManager;->SOFTKEYBOARD_LANG_MAP:Ljava/util/Map;

    .line 33
    sget-object v0, Lorg/pocketworkstation/pckeyboard/PluginManager;->SOFTKEYBOARD_LANG_MAP:Ljava/util/Map;

    const-string v1, "dk"

    const-string v2, "da"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/PluginManager;->mPluginDicts:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lorg/pocketworkstation/pckeyboard/LatinIME;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/PluginManager;->mIME:Lorg/pocketworkstation/pckeyboard/LatinIME;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lorg/pocketworkstation/pckeyboard/PluginManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static getDictionary(Landroid/content/Context;Ljava/lang/String;)Lorg/pocketworkstation/pckeyboard/BinaryDictionary;
    .locals 3

    .line 249
    sget-object v0, Lorg/pocketworkstation/pckeyboard/PluginManager;->mPluginDicts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpec;

    if-nez v0, :cond_0

    .line 250
    sget-object v0, Lorg/pocketworkstation/pckeyboard/PluginManager;->mPluginDicts:Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpec;

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 255
    :cond_1
    invoke-interface {v0, p0}, Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpec;->getDict(Landroid/content/Context;)Lorg/pocketworkstation/pckeyboard/BinaryDictionary;

    move-result-object p0

    .line 256
    sget-object v0, Lorg/pocketworkstation/pckeyboard/PluginManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found plugin dictionary for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_2

    const-string p1, " is null"

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", size="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->getSize()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method static getHKDictionaries(Landroid/content/pm/PackageManager;)V
    .locals 9

    .line 194
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/pocketworkstation/pckeyboard/PluginManager;->HK_INTENT_DICT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 195
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 196
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 197
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 198
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 201
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "dict_language"

    const-string v5, "string"

    .line 203
    invoke-virtual {v2, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 234
    sget-object v2, Lorg/pocketworkstation/pckeyboard/PluginManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const-string v5, "failed to load plugin dictionary spec from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    :cond_0
    :try_start_1
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "main"

    const-string v6, "raw"

    .line 209
    invoke-virtual {v2, v5, v6, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    .line 211
    new-array v2, v2, [I

    aput v5, v2, v1

    goto :goto_4

    .line 215
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 217
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "main"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "raw"

    invoke-virtual {v2, v7, v8, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_4

    if-nez v6, :cond_2

    .line 234
    sget-object v2, Lorg/pocketworkstation/pckeyboard/PluginManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 223
    :cond_2
    :try_start_2
    new-array v2, v6, [I

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_3

    .line 224
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 226
    :cond_3
    :goto_4
    new-instance v5, Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecHK;

    invoke-direct {v5, v3, v2}, Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecHK;-><init>(Ljava/lang/String;[I)V

    .line 227
    sget-object v2, Lorg/pocketworkstation/pckeyboard/PluginManager;->mPluginDicts:Ljava/util/Map;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v2, Lorg/pocketworkstation/pckeyboard/PluginManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found plugin dictionary: lang="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pkg="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 219
    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_5

    .line 231
    :catch_0
    :try_start_3
    sget-object v2, Lorg/pocketworkstation/pckeyboard/PluginManager;->TAG:Ljava/lang/String;

    const-string v4, "bad"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    sget-object v2, Lorg/pocketworkstation/pckeyboard/PluginManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_1

    :goto_5
    sget-object v0, Lorg/pocketworkstation/pckeyboard/PluginManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to load plugin dictionary spec from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw p0

    :cond_5
    return-void
.end method

.method static getPluginDictionaries(Landroid/content/Context;)V
    .locals 1

    .line 241
    sget-object v0, Lorg/pocketworkstation/pckeyboard/PluginManager;->mPluginDicts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 242
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 243
    invoke-static {p0}, Lorg/pocketworkstation/pckeyboard/PluginManager;->getSoftKeyboardDictionaries(Landroid/content/pm/PackageManager;)V

    .line 244
    invoke-static {p0}, Lorg/pocketworkstation/pckeyboard/PluginManager;->getHKDictionaries(Landroid/content/pm/PackageManager;)V

    return-void
.end method

.method static getSoftKeyboardDictionaries(Landroid/content/pm/PackageManager;)V
    .locals 11

    .line 133
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/pocketworkstation/pckeyboard/PluginManager;->SOFTKEYBOARD_INTENT_DICT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 134
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 137
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 138
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 141
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "dictionaries"

    const-string v5, "xml"

    .line 143
    invoke-virtual {v2, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 187
    sget-object v2, Lorg/pocketworkstation/pckeyboard/PluginManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const-string v5, "failed to load plugin dictionary spec from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :cond_0
    :try_start_1
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x0

    .line 150
    :try_start_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, v4

    move-object v7, v6

    :goto_2
    const/4 v8, 0x1

    if-eq v5, v8, :cond_5

    if-ne v5, v1, :cond_4

    .line 153
    :try_start_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v8, "Dictionary"

    .line 155
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "locale"

    .line 156
    invoke-interface {v2, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 157
    :try_start_4
    sget-object v7, Lorg/pocketworkstation/pckeyboard/PluginManager;->SOFTKEYBOARD_LANG_MAP:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_1

    move-object v5, v7

    :cond_1
    const-string v7, "type"

    .line 159
    invoke-interface {v2, v4, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string v8, "raw"

    .line 160
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "binary"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_3

    .line 163
    :cond_2
    sget-object v8, Lorg/pocketworkstation/pckeyboard/PluginManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported AnySoftKeyboard dict type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    :goto_3
    const-string v7, "dictionaryAssertName"

    .line 161
    invoke-interface {v2, v4, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v6, v7

    :goto_4
    move-object v7, v5

    goto :goto_5

    :catch_0
    move-object v7, v5

    goto :goto_6

    :catch_1
    move-object v7, v5

    goto :goto_7

    .line 169
    :cond_4
    :goto_5
    :try_start_5
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    .line 170
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_2
    move-object v6, v4

    move-object v7, v6

    .line 175
    :catch_3
    :goto_6
    :try_start_6
    sget-object v2, Lorg/pocketworkstation/pckeyboard/PluginManager;->TAG:Ljava/lang/String;

    const-string v4, "Dictionary XML IOException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catch_4
    move-object v6, v4

    move-object v7, v6

    .line 173
    :catch_5
    :goto_7
    sget-object v2, Lorg/pocketworkstation/pckeyboard/PluginManager;->TAG:Ljava/lang/String;

    const-string v4, "Dictionary XML parsing failure"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_8
    if-eqz v6, :cond_7

    if-nez v7, :cond_6

    goto :goto_9

    .line 179
    :cond_6
    new-instance v2, Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecSoftKeyboard;

    invoke-direct {v2, v3, v6}, Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecSoftKeyboard;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object v4, Lorg/pocketworkstation/pckeyboard/PluginManager;->mPluginDicts:Ljava/util/Map;

    invoke-interface {v4, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v2, Lorg/pocketworkstation/pckeyboard/PluginManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found plugin dictionary: lang="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 187
    :cond_7
    :goto_9
    sget-object v2, Lorg/pocketworkstation/pckeyboard/PluginManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    goto :goto_a

    .line 184
    :catch_6
    :try_start_7
    sget-object v2, Lorg/pocketworkstation/pckeyboard/PluginManager;->TAG:Ljava/lang/String;

    const-string v4, "bad"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 187
    sget-object v2, Lorg/pocketworkstation/pckeyboard/PluginManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_1

    :goto_a
    sget-object v0, Lorg/pocketworkstation/pckeyboard/PluginManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to load plugin dictionary spec from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw p0

    :cond_8
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 126
    sget-object p2, Lorg/pocketworkstation/pckeyboard/PluginManager;->TAG:Ljava/lang/String;

    const-string v0, "Package information changed, updating dictionaries."

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {p1}, Lorg/pocketworkstation/pckeyboard/PluginManager;->getPluginDictionaries(Landroid/content/Context;)V

    .line 128
    sget-object p1, Lorg/pocketworkstation/pckeyboard/PluginManager;->TAG:Ljava/lang/String;

    const-string p2, "Finished updating dictionaries."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/PluginManager;->mIME:Lorg/pocketworkstation/pckeyboard/LatinIME;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->toggleLanguage(ZZ)V

    return-void
.end method
