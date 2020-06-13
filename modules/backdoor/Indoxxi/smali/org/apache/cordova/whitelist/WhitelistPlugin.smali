.class public Lorg/apache/cordova/whitelist/WhitelistPlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "WhitelistPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WhitelistPlugin"


# instance fields
.field private allowedIntents:Lorg/apache/cordova/Whitelist;

.field private allowedNavigations:Lorg/apache/cordova/Whitelist;

.field private allowedRequests:Lorg/apache/cordova/Whitelist;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 41
    new-instance v0, Lorg/apache/cordova/Whitelist;

    invoke-direct {v0}, Lorg/apache/cordova/Whitelist;-><init>()V

    new-instance v1, Lorg/apache/cordova/Whitelist;

    invoke-direct {v1}, Lorg/apache/cordova/Whitelist;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/cordova/whitelist/WhitelistPlugin;-><init>(Lorg/apache/cordova/Whitelist;Lorg/apache/cordova/Whitelist;Lorg/apache/cordova/Whitelist;)V

    .line 42
    new-instance v0, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;

    invoke-direct {v0, p0, v2}, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;-><init>(Lorg/apache/cordova/whitelist/WhitelistPlugin;Lorg/apache/cordova/whitelist/WhitelistPlugin$1;)V

    invoke-virtual {v0, p1}, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;->parse(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/Whitelist;Lorg/apache/cordova/Whitelist;Lorg/apache/cordova/Whitelist;)V
    .locals 2
    .param p1, "allowedNavigations"    # Lorg/apache/cordova/Whitelist;
    .param p2, "allowedIntents"    # Lorg/apache/cordova/Whitelist;
    .param p3, "allowedRequests"    # Lorg/apache/cordova/Whitelist;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 49
    if-nez p3, :cond_0

    .line 50
    new-instance p3, Lorg/apache/cordova/Whitelist;

    .end local p3    # "allowedRequests":Lorg/apache/cordova/Whitelist;
    invoke-direct {p3}, Lorg/apache/cordova/Whitelist;-><init>()V

    .line 51
    .restart local p3    # "allowedRequests":Lorg/apache/cordova/Whitelist;
    const-string v0, "file:///*"

    invoke-virtual {p3, v0, v1}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    .line 52
    const-string v0, "data:*"

    invoke-virtual {p3, v0, v1}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    .line 54
    :cond_0
    iput-object p1, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedNavigations:Lorg/apache/cordova/Whitelist;

    .line 55
    iput-object p2, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedIntents:Lorg/apache/cordova/Whitelist;

    .line 56
    iput-object p3, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedRequests:Lorg/apache/cordova/Whitelist;

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v2, 0x0

    .line 45
    new-instance v0, Lorg/apache/cordova/Whitelist;

    invoke-direct {v0}, Lorg/apache/cordova/Whitelist;-><init>()V

    new-instance v1, Lorg/apache/cordova/Whitelist;

    invoke-direct {v1}, Lorg/apache/cordova/Whitelist;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/cordova/whitelist/WhitelistPlugin;-><init>(Lorg/apache/cordova/Whitelist;Lorg/apache/cordova/Whitelist;Lorg/apache/cordova/Whitelist;)V

    .line 46
    new-instance v0, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;

    invoke-direct {v0, p0, v2}, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;-><init>(Lorg/apache/cordova/whitelist/WhitelistPlugin;Lorg/apache/cordova/whitelist/WhitelistPlugin$1;)V

    invoke-virtual {v0, p1}, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 47
    return-void
.end method

.method static synthetic access$100(Lorg/apache/cordova/whitelist/WhitelistPlugin;)Lorg/apache/cordova/Whitelist;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/whitelist/WhitelistPlugin;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedNavigations:Lorg/apache/cordova/Whitelist;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/cordova/whitelist/WhitelistPlugin;)Lorg/apache/cordova/Whitelist;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/whitelist/WhitelistPlugin;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedIntents:Lorg/apache/cordova/Whitelist;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/cordova/whitelist/WhitelistPlugin;)Lorg/apache/cordova/Whitelist;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/whitelist/WhitelistPlugin;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedRequests:Lorg/apache/cordova/Whitelist;

    return-object v0
.end method


# virtual methods
.method public getAllowedIntents()Lorg/apache/cordova/Whitelist;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedIntents:Lorg/apache/cordova/Whitelist;

    return-object v0
.end method

.method public getAllowedNavigations()Lorg/apache/cordova/Whitelist;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedNavigations:Lorg/apache/cordova/Whitelist;

    return-object v0
.end method

.method public getAllowedRequests()Lorg/apache/cordova/Whitelist;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedRequests:Lorg/apache/cordova/Whitelist;

    return-object v0
.end method

.method public pluginInitialize()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedNavigations:Lorg/apache/cordova/Whitelist;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lorg/apache/cordova/Whitelist;

    invoke-direct {v0}, Lorg/apache/cordova/Whitelist;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedNavigations:Lorg/apache/cordova/Whitelist;

    .line 62
    new-instance v0, Lorg/apache/cordova/Whitelist;

    invoke-direct {v0}, Lorg/apache/cordova/Whitelist;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedIntents:Lorg/apache/cordova/Whitelist;

    .line 63
    new-instance v0, Lorg/apache/cordova/Whitelist;

    invoke-direct {v0}, Lorg/apache/cordova/Whitelist;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedRequests:Lorg/apache/cordova/Whitelist;

    .line 64
    new-instance v0, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;-><init>(Lorg/apache/cordova/whitelist/WhitelistPlugin;Lorg/apache/cordova/whitelist/WhitelistPlugin$1;)V

    iget-object v1, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;->parse(Landroid/content/Context;)V

    .line 66
    :cond_0
    return-void
.end method

.method public setAllowedIntents(Lorg/apache/cordova/Whitelist;)V
    .locals 0
    .param p1, "allowedIntents"    # Lorg/apache/cordova/Whitelist;

    .prologue
    .line 151
    iput-object p1, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedIntents:Lorg/apache/cordova/Whitelist;

    .line 152
    return-void
.end method

.method public setAllowedNavigations(Lorg/apache/cordova/Whitelist;)V
    .locals 0
    .param p1, "allowedNavigations"    # Lorg/apache/cordova/Whitelist;

    .prologue
    .line 143
    iput-object p1, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedNavigations:Lorg/apache/cordova/Whitelist;

    .line 144
    return-void
.end method

.method public setAllowedRequests(Lorg/apache/cordova/Whitelist;)V
    .locals 0
    .param p1, "allowedRequests"    # Lorg/apache/cordova/Whitelist;

    .prologue
    .line 159
    iput-object p1, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedRequests:Lorg/apache/cordova/Whitelist;

    .line 160
    return-void
.end method

.method public shouldAllowNavigation(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedNavigations:Lorg/apache/cordova/Whitelist;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/Whitelist;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldAllowRequest(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 121
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/apache/cordova/whitelist/WhitelistPlugin;->shouldAllowNavigation(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 122
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedRequests:Lorg/apache/cordova/Whitelist;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/Whitelist;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldOpenExternalUrl(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedIntents:Lorg/apache/cordova/Whitelist;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/Whitelist;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
