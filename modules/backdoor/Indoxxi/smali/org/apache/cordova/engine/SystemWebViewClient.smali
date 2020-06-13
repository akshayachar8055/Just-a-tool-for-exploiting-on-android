.class public Lorg/apache/cordova/engine/SystemWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SystemWebViewClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemWebViewClient"


# instance fields
.field private authenticationTokens:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/cordova/AuthenticationToken;",
            ">;"
        }
    .end annotation
.end field

.field private doClearHistory:Z

.field isCurrentlyLoading:Z

.field protected final parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/engine/SystemWebViewEngine;)V
    .locals 1
    .param p1, "parentEngine"    # Lorg/apache/cordova/engine/SystemWebViewEngine;

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->doClearHistory:Z

    .line 63
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->authenticationTokens:Ljava/util/Hashtable;

    .line 66
    iput-object p1, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 67
    return-void
.end method

.method private static needsKitKatContentUrlFix(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 350
    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static needsSpecialsInAssetUrlFix(Landroid/net/Uri;)Z
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 354
    invoke-static {p0}, Lorg/apache/cordova/CordovaResourceApi;->getUriType(Landroid/net/Uri;)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v0

    .line 357
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    .line 358
    goto :goto_0

    .line 361
    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public clearAuthenticationTokens()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->authenticationTokens:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 316
    return-void
.end method

.method public getAuthenticationToken(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/cordova/AuthenticationToken;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "token":Lorg/apache/cordova/AuthenticationToken;
    iget-object v1, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->authenticationTokens:Ljava/util/Hashtable;

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "token":Lorg/apache/cordova/AuthenticationToken;
    check-cast v0, Lorg/apache/cordova/AuthenticationToken;

    .line 293
    .restart local v0    # "token":Lorg/apache/cordova/AuthenticationToken;
    if-nez v0, :cond_1

    .line 295
    iget-object v1, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->authenticationTokens:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "token":Lorg/apache/cordova/AuthenticationToken;
    check-cast v0, Lorg/apache/cordova/AuthenticationToken;

    .line 298
    .restart local v0    # "token":Lorg/apache/cordova/AuthenticationToken;
    if-nez v0, :cond_0

    .line 299
    iget-object v1, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->authenticationTokens:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "token":Lorg/apache/cordova/AuthenticationToken;
    check-cast v0, Lorg/apache/cordova/AuthenticationToken;

    .line 303
    .restart local v0    # "token":Lorg/apache/cordova/AuthenticationToken;
    :cond_0
    if-nez v0, :cond_1

    .line 304
    iget-object v1, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->authenticationTokens:Ljava/util/Hashtable;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "token":Lorg/apache/cordova/AuthenticationToken;
    check-cast v0, Lorg/apache/cordova/AuthenticationToken;

    .line 308
    .restart local v0    # "token":Lorg/apache/cordova/AuthenticationToken;
    :cond_1
    return-object v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 160
    iget-boolean v0, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->isCurrentlyLoading:Z

    if-nez v0, :cond_0

    const-string v0, "about:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 163
    :cond_0
    iput-boolean v1, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->isCurrentlyLoading:Z

    .line 171
    iget-boolean v0, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->doClearHistory:Z

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 173
    iput-boolean v1, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->doClearHistory:Z

    .line 175
    :cond_1
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    iget-object v0, v0, Lorg/apache/cordova/engine/SystemWebViewEngine;->client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

    invoke-interface {v0, p2}, Lorg/apache/cordova/CordovaWebViewEngine$Client;->onPageFinishedLoading(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 141
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->isCurrentlyLoading:Z

    .line 144
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    iget-object v0, v0, Lorg/apache/cordova/engine/SystemWebViewEngine;->bridge:Lorg/apache/cordova/CordovaBridge;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaBridge;->reset()V

    .line 145
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    iget-object v0, v0, Lorg/apache/cordova/engine/SystemWebViewEngine;->client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

    invoke-interface {v0, p2}, Lorg/apache/cordova/CordovaWebViewEngine$Client;->onPageStarted(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/ClientCertRequest;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 120
    iget-object v1, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    iget-object v0, v1, Lorg/apache/cordova/engine/SystemWebViewEngine;->pluginManager:Lorg/apache/cordova/PluginManager;

    .line 121
    .local v0, "pluginManager":Lorg/apache/cordova/PluginManager;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/cordova/CordovaClientCertRequest;

    invoke-direct {v2, p2}, Lorg/apache/cordova/CordovaClientCertRequest;-><init>(Landroid/webkit/ClientCertRequest;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/PluginManager;->onReceivedClientCertRequest(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/ICordovaClientCertRequest;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    iget-object v1, v1, Lorg/apache/cordova/engine/SystemWebViewEngine;->client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebViewEngine$Client;->clearLoadTimeoutTimer()V

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-boolean v0, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->isCurrentlyLoading:Z

    if-nez v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 194
    :cond_0
    const-string v0, "SystemWebViewClient"

    const-string v1, "CordovaWebViewClient.onReceivedError: Error code=%s Description=%s URL=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    const/16 v0, -0xa

    if-ne p2, v0, :cond_2

    .line 200
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    iget-object v0, v0, Lorg/apache/cordova/engine/SystemWebViewEngine;->client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine$Client;->clearLoadTimeoutTimer()V

    .line 202
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 206
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_2
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    iget-object v0, v0, Lorg/apache/cordova/engine/SystemWebViewEngine;->client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

    invoke-interface {v0, p2, p3, p4}, Lorg/apache/cordova/CordovaWebViewEngine$Client;->onReceivedError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-virtual {p0, p3, p4}, Lorg/apache/cordova/engine/SystemWebViewClient;->getAuthenticationToken(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/cordova/AuthenticationToken;

    move-result-object v1

    .line 91
    .local v1, "token":Lorg/apache/cordova/AuthenticationToken;
    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1}, Lorg/apache/cordova/AuthenticationToken;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/cordova/AuthenticationToken;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v2, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    iget-object v0, v2, Lorg/apache/cordova/engine/SystemWebViewEngine;->pluginManager:Lorg/apache/cordova/PluginManager;

    .line 98
    .local v0, "pluginManager":Lorg/apache/cordova/PluginManager;
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/cordova/CordovaHttpAuthHandler;

    invoke-direct {v3, p2}, Lorg/apache/cordova/CordovaHttpAuthHandler;-><init>(Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v0, v2, v3, p3, p4}, Lorg/apache/cordova/PluginManager;->onReceivedHttpAuthRequest(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/ICordovaHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    iget-object v2, v2, Lorg/apache/cordova/engine/SystemWebViewEngine;->client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaWebViewEngine$Client;->clearLoadTimeoutTimer()V

    goto :goto_0

    .line 104
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 225
    iget-object v4, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    iget-object v4, v4, Lorg/apache/cordova/engine/SystemWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    iget-object v4, v4, Lorg/apache/cordova/engine/SystemWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 230
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 231
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 233
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 243
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-void

    .line 237
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_0
.end method

.method public removeAuthenticationToken(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/cordova/AuthenticationToken;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->authenticationTokens:Ljava/util/Hashtable;

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AuthenticationToken;

    return-object v0
.end method

.method public setAuthenticationToken(Lorg/apache/cordova/AuthenticationToken;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "authenticationToken"    # Lorg/apache/cordova/AuthenticationToken;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "realm"    # Ljava/lang/String;

    .prologue
    .line 254
    if-nez p2, :cond_0

    .line 255
    const-string p2, ""

    .line 257
    :cond_0
    if-nez p3, :cond_1

    .line 258
    const-string p3, ""

    .line 260
    :cond_1
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->authenticationTokens:Ljava/util/Hashtable;

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 323
    :try_start_0
    iget-object v5, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    iget-object v5, v5, Lorg/apache/cordova/engine/SystemWebViewEngine;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {v5, p2}, Lorg/apache/cordova/PluginManager;->shouldAllowRequest(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 324
    const-string v5, "SystemWebViewClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "URL blocked by whitelist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lorg/apache/cordova/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    new-instance v5, Landroid/webkit/WebResourceResponse;

    const-string v7, "text/plain"

    const-string v8, "UTF-8"

    const/4 v9, 0x0

    invoke-direct {v5, v7, v8, v9}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 345
    :goto_0
    return-object v5

    .line 329
    :cond_0
    iget-object v5, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    iget-object v3, v5, Lorg/apache/cordova/engine/SystemWebViewEngine;->resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    .line 330
    .local v3, "resourceApi":Lorg/apache/cordova/CordovaResourceApi;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 332
    .local v1, "origUri":Landroid/net/Uri;
    invoke-virtual {v3, v1}, Lorg/apache/cordova/CordovaResourceApi;->remapUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 334
    .local v2, "remappedUri":Landroid/net/Uri;
    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v1}, Lorg/apache/cordova/engine/SystemWebViewClient;->needsSpecialsInAssetUrlFix(Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v1}, Lorg/apache/cordova/engine/SystemWebViewClient;->needsKitKatContentUrlFix(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 335
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {v3, v2, v5}, Lorg/apache/cordova/CordovaResourceApi;->openForRead(Landroid/net/Uri;Z)Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;

    move-result-object v4

    .line 336
    .local v4, "result":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    new-instance v5, Landroid/webkit/WebResourceResponse;

    iget-object v7, v4, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->mimeType:Ljava/lang/String;

    const-string v8, "UTF-8"

    iget-object v9, v4, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    invoke-direct {v5, v7, v8, v9}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 340
    .end local v1    # "origUri":Landroid/net/Uri;
    .end local v2    # "remappedUri":Landroid/net/Uri;
    .end local v3    # "resourceApi":Lorg/apache/cordova/CordovaResourceApi;
    .end local v4    # "result":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/io/IOException;
    instance-of v5, v0, Ljava/io/FileNotFoundException;

    if-nez v5, :cond_2

    .line 342
    const-string v5, "SystemWebViewClient"

    const-string v7, "Error occurred while loading a file (returning a 404)."

    invoke-static {v5, v7, v0}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 345
    :cond_2
    new-instance v5, Landroid/webkit/WebResourceResponse;

    const-string v7, "text/plain"

    const-string v8, "UTF-8"

    invoke-direct {v5, v7, v8, v6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "origUri":Landroid/net/Uri;
    .restart local v2    # "remappedUri":Landroid/net/Uri;
    .restart local v3    # "resourceApi":Lorg/apache/cordova/CordovaResourceApi;
    :cond_3
    move-object v5, v6

    .line 339
    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewClient;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    iget-object v0, v0, Lorg/apache/cordova/engine/SystemWebViewEngine;->client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

    invoke-interface {v0, p2}, Lorg/apache/cordova/CordovaWebViewEngine$Client;->onNavigationAttempt(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
