.class Lorg/apache/cordova/engine/SystemCookieManager;
.super Ljava/lang/Object;
.source "SystemCookieManager.java"

# interfaces
.implements Lorg/apache/cordova/ICordovaCookieManager;


# instance fields
.field private final cookieManager:Landroid/webkit/CookieManager;

.field protected final webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 3
    .param p1, "webview"    # Landroid/webkit/WebView;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/apache/cordova/engine/SystemCookieManager;->webView:Landroid/webkit/WebView;

    .line 38
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/engine/SystemCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 41
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    invoke-static {v2}, Landroid/webkit/CookieManager;->setAcceptFileSchemeCookies(Z)V

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    iget-object v1, p0, Lorg/apache/cordova/engine/SystemCookieManager;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public clearCookies()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 62
    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    .line 68
    :cond_0
    return-void
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public setCookiesEnabled(Z)V
    .locals 1
    .param p1, "accept"    # Z

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 50
    return-void
.end method
