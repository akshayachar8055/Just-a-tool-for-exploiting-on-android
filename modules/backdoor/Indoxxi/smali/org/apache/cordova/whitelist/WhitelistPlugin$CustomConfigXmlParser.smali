.class Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;
.super Lorg/apache/cordova/ConfigXmlParser;
.source "WhitelistPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/whitelist/WhitelistPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomConfigXmlParser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/whitelist/WhitelistPlugin;


# direct methods
.method private constructor <init>(Lorg/apache/cordova/whitelist/WhitelistPlugin;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;->this$0:Lorg/apache/cordova/whitelist/WhitelistPlugin;

    invoke-direct {p0}, Lorg/apache/cordova/ConfigXmlParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/cordova/whitelist/WhitelistPlugin;Lorg/apache/cordova/whitelist/WhitelistPlugin$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/cordova/whitelist/WhitelistPlugin;
    .param p2, "x1"    # Lorg/apache/cordova/whitelist/WhitelistPlugin$1;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;-><init>(Lorg/apache/cordova/whitelist/WhitelistPlugin;)V

    return-void
.end method


# virtual methods
.method public handleEndTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .param p1, "xml"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 108
    return-void
.end method

.method public handleStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9
    .param p1, "xml"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 71
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "strNode":Ljava/lang/String;
    const-string v7, "content"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 73
    const-string v5, "src"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "startPage":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;->this$0:Lorg/apache/cordova/whitelist/WhitelistPlugin;

    invoke-static {v5}, Lorg/apache/cordova/whitelist/WhitelistPlugin;->access$100(Lorg/apache/cordova/whitelist/WhitelistPlugin;)Lorg/apache/cordova/Whitelist;

    move-result-object v5

    invoke-virtual {v5, v2, v6}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    .line 105
    .end local v2    # "startPage":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const-string v7, "allow-navigation"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 76
    const-string v5, "href"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "origin":Ljava/lang/String;
    const-string v5, "*"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 78
    iget-object v5, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;->this$0:Lorg/apache/cordova/whitelist/WhitelistPlugin;

    invoke-static {v5}, Lorg/apache/cordova/whitelist/WhitelistPlugin;->access$100(Lorg/apache/cordova/whitelist/WhitelistPlugin;)Lorg/apache/cordova/Whitelist;

    move-result-object v5

    const-string v7, "http://*/*"

    invoke-virtual {v5, v7, v6}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    .line 79
    iget-object v5, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;->this$0:Lorg/apache/cordova/whitelist/WhitelistPlugin;

    invoke-static {v5}, Lorg/apache/cordova/whitelist/WhitelistPlugin;->access$100(Lorg/apache/cordova/whitelist/WhitelistPlugin;)Lorg/apache/cordova/Whitelist;

    move-result-object v5

    const-string v7, "https://*/*"

    invoke-virtual {v5, v7, v6}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    .line 80
    iget-object v5, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;->this$0:Lorg/apache/cordova/whitelist/WhitelistPlugin;

    invoke-static {v5}, Lorg/apache/cordova/whitelist/WhitelistPlugin;->access$100(Lorg/apache/cordova/whitelist/WhitelistPlugin;)Lorg/apache/cordova/Whitelist;

    move-result-object v5

    const-string v7, "data:*"

    invoke-virtual {v5, v7, v6}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    goto :goto_0

    .line 82
    :cond_2
    iget-object v5, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;->this$0:Lorg/apache/cordova/whitelist/WhitelistPlugin;

    invoke-static {v5}, Lorg/apache/cordova/whitelist/WhitelistPlugin;->access$100(Lorg/apache/cordova/whitelist/WhitelistPlugin;)Lorg/apache/cordova/Whitelist;

    move-result-object v5

    invoke-virtual {v5, v1, v6}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    goto :goto_0

    .line 84
    .end local v1    # "origin":Ljava/lang/String;
    :cond_3
    const-string v7, "allow-intent"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 85
    const-string v5, "href"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .restart local v1    # "origin":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;->this$0:Lorg/apache/cordova/whitelist/WhitelistPlugin;

    invoke-static {v5}, Lorg/apache/cordova/whitelist/WhitelistPlugin;->access$200(Lorg/apache/cordova/whitelist/WhitelistPlugin;)Lorg/apache/cordova/Whitelist;

    move-result-object v5

    invoke-virtual {v5, v1, v6}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    goto :goto_0

    .line 87
    .end local v1    # "origin":Ljava/lang/String;
    :cond_4
    const-string v7, "access"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 88
    const-string v7, "origin"

    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .restart local v1    # "origin":Ljava/lang/String;
    const-string v7, "subdomains"

    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "subdomains":Ljava/lang/String;
    const-string v7, "launch-external"

    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    move v0, v5

    .line 91
    .local v0, "external":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 92
    if-eqz v0, :cond_7

    .line 93
    const-string v7, "WhitelistPlugin"

    const-string v8, "Found <access launch-external> within config.xml. Please use <allow-intent> instead."

    invoke-static {v7, v8}, Lorg/apache/cordova/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v7, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;->this$0:Lorg/apache/cordova/whitelist/WhitelistPlugin;

    invoke-static {v7}, Lorg/apache/cordova/whitelist/WhitelistPlugin;->access$200(Lorg/apache/cordova/whitelist/WhitelistPlugin;)Lorg/apache/cordova/Whitelist;

    move-result-object v7

    if-eqz v4, :cond_6

    const-string v8, "true"

    invoke-virtual {v4, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_6

    :goto_2
    invoke-virtual {v7, v1, v5}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .end local v0    # "external":Z
    :cond_5
    move v0, v6

    .line 90
    goto :goto_1

    .restart local v0    # "external":Z
    :cond_6
    move v5, v6

    .line 94
    goto :goto_2

    .line 96
    :cond_7
    const-string v7, "*"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 97
    iget-object v5, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;->this$0:Lorg/apache/cordova/whitelist/WhitelistPlugin;

    invoke-static {v5}, Lorg/apache/cordova/whitelist/WhitelistPlugin;->access$300(Lorg/apache/cordova/whitelist/WhitelistPlugin;)Lorg/apache/cordova/Whitelist;

    move-result-object v5

    const-string v7, "http://*/*"

    invoke-virtual {v5, v7, v6}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    .line 98
    iget-object v5, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;->this$0:Lorg/apache/cordova/whitelist/WhitelistPlugin;

    invoke-static {v5}, Lorg/apache/cordova/whitelist/WhitelistPlugin;->access$300(Lorg/apache/cordova/whitelist/WhitelistPlugin;)Lorg/apache/cordova/Whitelist;

    move-result-object v5

    const-string v7, "https://*/*"

    invoke-virtual {v5, v7, v6}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 100
    :cond_8
    iget-object v7, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;->this$0:Lorg/apache/cordova/whitelist/WhitelistPlugin;

    invoke-static {v7}, Lorg/apache/cordova/whitelist/WhitelistPlugin;->access$300(Lorg/apache/cordova/whitelist/WhitelistPlugin;)Lorg/apache/cordova/Whitelist;

    move-result-object v7

    if-eqz v4, :cond_9

    const-string v8, "true"

    invoke-virtual {v4, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_9

    :goto_3
    invoke-virtual {v7, v1, v5}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_9
    move v5, v6

    goto :goto_3
.end method
