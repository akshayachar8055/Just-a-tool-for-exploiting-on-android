.class public Lorg/apache/cordova/engine/SystemWebView;
.super Landroid/webkit/WebView;
.source "SystemWebView.java"

# interfaces
.implements Lorg/apache/cordova/CordovaWebViewEngine$EngineView;


# instance fields
.field chromeClient:Lorg/apache/cordova/engine/SystemWebChromeClient;

.field private cordova:Lorg/apache/cordova/CordovaInterface;

.field private parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

.field private viewClient:Lorg/apache/cordova/engine/SystemWebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/engine/SystemWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 82
    iget-object v1, p0, Lorg/apache/cordova/engine/SystemWebView;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    iget-object v1, v1, Lorg/apache/cordova/engine/SystemWebViewEngine;->client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

    invoke-interface {v1, p1}, Lorg/apache/cordova/CordovaWebViewEngine$Client;->onDispatchKeyEvent(Landroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v0

    .line 83
    .local v0, "ret":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 86
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCordovaWebView()Lorg/apache/cordova/CordovaWebView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebView;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebView;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebViewEngine;->getCordovaWebView()Lorg/apache/cordova/CordovaWebView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method init(Lorg/apache/cordova/engine/SystemWebViewEngine;Lorg/apache/cordova/CordovaInterface;)V
    .locals 1
    .param p1, "parentEngine"    # Lorg/apache/cordova/engine/SystemWebViewEngine;
    .param p2, "cordova"    # Lorg/apache/cordova/CordovaInterface;

    .prologue
    .line 52
    iput-object p2, p0, Lorg/apache/cordova/engine/SystemWebView;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 53
    iput-object p1, p0, Lorg/apache/cordova/engine/SystemWebView;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 54
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebView;->viewClient:Lorg/apache/cordova/engine/SystemWebViewClient;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lorg/apache/cordova/engine/SystemWebViewClient;

    invoke-direct {v0, p1}, Lorg/apache/cordova/engine/SystemWebViewClient;-><init>(Lorg/apache/cordova/engine/SystemWebViewEngine;)V

    invoke-virtual {p0, v0}, Lorg/apache/cordova/engine/SystemWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebView;->chromeClient:Lorg/apache/cordova/engine/SystemWebChromeClient;

    if-nez v0, :cond_1

    .line 59
    new-instance v0, Lorg/apache/cordova/engine/SystemWebChromeClient;

    invoke-direct {v0, p1}, Lorg/apache/cordova/engine/SystemWebChromeClient;-><init>(Lorg/apache/cordova/engine/SystemWebViewEngine;)V

    invoke-virtual {p0, v0}, Lorg/apache/cordova/engine/SystemWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 61
    :cond_1
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1
    .param p1, "client"    # Landroid/webkit/WebChromeClient;

    .prologue
    .line 76
    move-object v0, p1

    check-cast v0, Lorg/apache/cordova/engine/SystemWebChromeClient;

    iput-object v0, p0, Lorg/apache/cordova/engine/SystemWebView;->chromeClient:Lorg/apache/cordova/engine/SystemWebChromeClient;

    .line 77
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 78
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .param p1, "client"    # Landroid/webkit/WebViewClient;

    .prologue
    .line 70
    move-object v0, p1

    check-cast v0, Lorg/apache/cordova/engine/SystemWebViewClient;

    iput-object v0, p0, Lorg/apache/cordova/engine/SystemWebView;->viewClient:Lorg/apache/cordova/engine/SystemWebViewClient;

    .line 71
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 72
    return-void
.end method
