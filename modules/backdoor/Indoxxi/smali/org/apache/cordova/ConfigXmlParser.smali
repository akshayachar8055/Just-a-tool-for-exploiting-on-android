.class public Lorg/apache/cordova/ConfigXmlParser;
.super Ljava/lang/Object;
.source "ConfigXmlParser.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field insideFeature:Z

.field private launchUrl:Ljava/lang/String;

.field onload:Z

.field paramType:Ljava/lang/String;

.field pluginClass:Ljava/lang/String;

.field private pluginEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/cordova/PluginEntry;",
            ">;"
        }
    .end annotation
.end field

.field private prefs:Lorg/apache/cordova/CordovaPreferences;

.field service:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "ConfigXmlParser"

    sput-object v0, Lorg/apache/cordova/ConfigXmlParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "file:///android_asset/www/index.html"

    iput-object v0, p0, Lorg/apache/cordova/ConfigXmlParser;->launchUrl:Ljava/lang/String;

    .line 37
    new-instance v0, Lorg/apache/cordova/CordovaPreferences;

    invoke-direct {v0}, Lorg/apache/cordova/CordovaPreferences;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/ConfigXmlParser;->prefs:Lorg/apache/cordova/CordovaPreferences;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/cordova/ConfigXmlParser;->pluginEntries:Ljava/util/ArrayList;

    .line 66
    iput-boolean v2, p0, Lorg/apache/cordova/ConfigXmlParser;->insideFeature:Z

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/cordova/ConfigXmlParser;->service:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/cordova/ConfigXmlParser;->pluginClass:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/cordova/ConfigXmlParser;->paramType:Ljava/lang/String;

    .line 68
    iput-boolean v2, p0, Lorg/apache/cordova/ConfigXmlParser;->onload:Z

    return-void
.end method

.method private setStartUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 134
    const-string v2, "^[a-z-]+://"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 135
    .local v1, "schemeRegex":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 136
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    iput-object p1, p0, Lorg/apache/cordova/ConfigXmlParser;->launchUrl:Ljava/lang/String;

    .line 144
    :goto_0
    return-void

    .line 139
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_1

    .line 140
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 142
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:///android_asset/www/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/cordova/ConfigXmlParser;->launchUrl:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getLaunchUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/cordova/ConfigXmlParser;->launchUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginEntries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/cordova/PluginEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/cordova/ConfigXmlParser;->pluginEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPreferences()Lorg/apache/cordova/CordovaPreferences;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/cordova/ConfigXmlParser;->prefs:Lorg/apache/cordova/CordovaPreferences;

    return-object v0
.end method

.method public handleEndTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p1, "xml"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v6, 0x0

    .line 122
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "strNode":Ljava/lang/String;
    const-string v1, "feature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lorg/apache/cordova/ConfigXmlParser;->pluginEntries:Ljava/util/ArrayList;

    new-instance v2, Lorg/apache/cordova/PluginEntry;

    iget-object v3, p0, Lorg/apache/cordova/ConfigXmlParser;->service:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/cordova/ConfigXmlParser;->pluginClass:Ljava/lang/String;

    iget-boolean v5, p0, Lorg/apache/cordova/ConfigXmlParser;->onload:Z

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/cordova/PluginEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/cordova/ConfigXmlParser;->service:Ljava/lang/String;

    .line 127
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/cordova/ConfigXmlParser;->pluginClass:Ljava/lang/String;

    .line 128
    iput-boolean v6, p0, Lorg/apache/cordova/ConfigXmlParser;->insideFeature:Z

    .line 129
    iput-boolean v6, p0, Lorg/apache/cordova/ConfigXmlParser;->onload:Z

    .line 131
    :cond_0
    return-void
.end method

.method public handleStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p1, "xml"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v6, 0x0

    .line 92
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "strNode":Ljava/lang/String;
    const-string v4, "feature"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/cordova/ConfigXmlParser;->insideFeature:Z

    .line 97
    const-string v4, "name"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/cordova/ConfigXmlParser;->service:Ljava/lang/String;

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-boolean v4, p0, Lorg/apache/cordova/ConfigXmlParser;->insideFeature:Z

    if-eqz v4, :cond_5

    const-string v4, "param"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 100
    const-string v4, "name"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/cordova/ConfigXmlParser;->paramType:Ljava/lang/String;

    .line 101
    iget-object v4, p0, Lorg/apache/cordova/ConfigXmlParser;->paramType:Ljava/lang/String;

    const-string v5, "service"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 102
    const-string v4, "value"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/cordova/ConfigXmlParser;->service:Ljava/lang/String;

    goto :goto_0

    .line 103
    :cond_2
    iget-object v4, p0, Lorg/apache/cordova/ConfigXmlParser;->paramType:Ljava/lang/String;

    const-string v5, "package"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/apache/cordova/ConfigXmlParser;->paramType:Ljava/lang/String;

    const-string v5, "android-package"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 104
    :cond_3
    const-string v4, "value"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/cordova/ConfigXmlParser;->pluginClass:Ljava/lang/String;

    goto :goto_0

    .line 105
    :cond_4
    iget-object v4, p0, Lorg/apache/cordova/ConfigXmlParser;->paramType:Ljava/lang/String;

    const-string v5, "onload"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    const-string v4, "true"

    const-string v5, "value"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lorg/apache/cordova/ConfigXmlParser;->onload:Z

    goto :goto_0

    .line 108
    :cond_5
    const-string v4, "preference"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 109
    const-string v4, "name"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "name":Ljava/lang/String;
    const-string v4, "value"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/cordova/ConfigXmlParser;->prefs:Lorg/apache/cordova/CordovaPreferences;

    invoke-virtual {v4, v0, v3}, Lorg/apache/cordova/CordovaPreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    .end local v0    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_6
    const-string v4, "content"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    const-string v4, "src"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "src":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 116
    invoke-direct {p0, v1}, Lorg/apache/cordova/ConfigXmlParser;->setStartUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public parse(Landroid/content/Context;)V
    .locals 5
    .param p1, "action"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "config"

    const-string v3, "xml"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 55
    .local v0, "id":I
    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "config"

    const-string v3, "xml"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 58
    if-nez v0, :cond_0

    .line 59
    sget-object v1, Lorg/apache/cordova/ConfigXmlParser;->TAG:Ljava/lang/String;

    const-string v2, "res/xml/config.xml is missing!"

    invoke-static {v1, v2}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/cordova/ConfigXmlParser;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "xml"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 71
    const/4 v1, -0x1

    .line 73
    .local v1, "eventType":I
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 74
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 75
    invoke-virtual {p0, p1}, Lorg/apache/cordova/ConfigXmlParser;->handleStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 82
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 77
    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lorg/apache/cordova/ConfigXmlParser;->handleEndTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    return-void
.end method
