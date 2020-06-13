.class public Lorg/apache/cordova/statusbar/StatusBar;
.super Lorg/apache/cordova/CordovaPlugin;
.source "StatusBar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/cordova/statusbar/StatusBar;)Lorg/apache/cordova/CordovaPreferences;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/statusbar/StatusBar;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/cordova/statusbar/StatusBar;->preferences:Lorg/apache/cordova/CordovaPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/cordova/statusbar/StatusBar;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/statusbar/StatusBar;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/apache/cordova/statusbar/StatusBar;->setStatusBarBackgroundColor(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/cordova/statusbar/StatusBar;)Lorg/apache/cordova/CordovaPreferences;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/statusbar/StatusBar;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/cordova/statusbar/StatusBar;->preferences:Lorg/apache/cordova/CordovaPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/cordova/statusbar/StatusBar;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/statusbar/StatusBar;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/apache/cordova/statusbar/StatusBar;->setStatusBarStyle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/cordova/statusbar/StatusBar;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/statusbar/StatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/apache/cordova/statusbar/StatusBar;->setStatusBarTransparent(Z)V

    return-void
.end method

.method private setStatusBarBackgroundColor(Ljava/lang/String;)V
    .locals 7
    .param p1, "colorPref"    # Ljava/lang/String;

    .prologue
    .line 210
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 211
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    iget-object v2, p0, Lorg/apache/cordova/statusbar/StatusBar;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 214
    .local v1, "window":Landroid/view/Window;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 215
    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 218
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setStatusBarColor"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 227
    .end local v1    # "window":Landroid/view/Window;
    :cond_0
    :goto_0
    return-void

    .line 219
    .restart local v1    # "window":Landroid/view/Window;
    :catch_0
    move-exception v0

    .line 220
    .local v0, "ignore":Ljava/lang/IllegalArgumentException;
    const-string v2, "StatusBar"

    const-string v3, "Invalid hexString argument, use f.i. \'#999999\'"

    invoke-static {v2, v3}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    .end local v0    # "ignore":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 223
    .local v0, "ignore":Ljava/lang/Exception;
    const-string v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method window.setStatusBarColor not found for SDK level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/cordova/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setStatusBarStyle(Ljava/lang/String;)V
    .locals 8
    .param p1, "style"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 247
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_0

    .line 248
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 249
    iget-object v4, p0, Lorg/apache/cordova/statusbar/StatusBar;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 250
    .local v1, "decorView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    .line 252
    .local v3, "uiOptions":I
    new-array v0, v7, [Ljava/lang/String;

    const-string v4, "default"

    aput-object v4, v0, v6

    .line 256
    .local v0, "darkContentStyles":[Ljava/lang/String;
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "lightcontent"

    aput-object v4, v2, v6

    const-string v4, "blacktranslucent"

    aput-object v4, v2, v7

    const/4 v4, 0x2

    const-string v5, "blackopaque"

    aput-object v5, v2, v4

    .line 262
    .local v2, "lightContentStyles":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 263
    or-int/lit16 v4, v3, 0x2000

    invoke-virtual {v1, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 275
    .end local v0    # "darkContentStyles":[Ljava/lang/String;
    .end local v1    # "decorView":Landroid/view/View;
    .end local v2    # "lightContentStyles":[Ljava/lang/String;
    .end local v3    # "uiOptions":I
    :cond_0
    :goto_0
    return-void

    .line 267
    .restart local v0    # "darkContentStyles":[Ljava/lang/String;
    .restart local v1    # "decorView":Landroid/view/View;
    .restart local v2    # "lightContentStyles":[Ljava/lang/String;
    .restart local v3    # "uiOptions":I
    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 268
    and-int/lit16 v4, v3, -0x2001

    invoke-virtual {v1, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 272
    :cond_2
    const-string v4, "StatusBar"

    const-string v5, "Invalid style, must be either \'default\', \'lightcontent\' or the deprecated \'blacktranslucent\' and \'blackopaque\'"

    invoke-static {v4, v5}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setStatusBarTransparent(Z)V
    .locals 3
    .param p1, "transparent"    # Z

    .prologue
    .line 230
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 231
    iget-object v1, p0, Lorg/apache/cordova/statusbar/StatusBar;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 232
    .local v0, "window":Landroid/view/Window;
    if-eqz p1, :cond_1

    .line 233
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 236
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 244
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    :goto_0
    return-void

    .line 239
    .restart local v0    # "window":Landroid/view/Window;
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)Z
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/apache/cordova/CordovaArgs;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 81
    const-string v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Executing action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/cordova/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v4, p0, Lorg/apache/cordova/statusbar/StatusBar;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 83
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 85
    .local v2, "window":Landroid/view/Window;
    const-string v4, "_ready"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 86
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_0

    move v1, v3

    .line 87
    .local v1, "statusBarVisible":Z
    :cond_0
    new-instance v4, Lorg/apache/cordova/PluginResult;

    sget-object v5, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v4, v5, v1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Z)V

    invoke-virtual {p3, v4}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 206
    .end local v1    # "statusBarVisible":Z
    :cond_1
    :goto_0
    return v3

    .line 91
    :cond_2
    const-string v4, "show"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 92
    iget-object v4, p0, Lorg/apache/cordova/statusbar/StatusBar;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lorg/apache/cordova/statusbar/StatusBar$2;

    invoke-direct {v5, p0, v2}, Lorg/apache/cordova/statusbar/StatusBar$2;-><init>(Lorg/apache/cordova/statusbar/StatusBar;Landroid/view/Window;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 113
    :cond_3
    const-string v4, "hide"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 114
    iget-object v4, p0, Lorg/apache/cordova/statusbar/StatusBar;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lorg/apache/cordova/statusbar/StatusBar$3;

    invoke-direct {v5, p0, v2}, Lorg/apache/cordova/statusbar/StatusBar$3;-><init>(Lorg/apache/cordova/statusbar/StatusBar;Landroid/view/Window;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 135
    :cond_4
    const-string v4, "backgroundColorByHexString"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 136
    iget-object v4, p0, Lorg/apache/cordova/statusbar/StatusBar;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lorg/apache/cordova/statusbar/StatusBar$4;

    invoke-direct {v5, p0, p2}, Lorg/apache/cordova/statusbar/StatusBar$4;-><init>(Lorg/apache/cordova/statusbar/StatusBar;Lorg/apache/cordova/CordovaArgs;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 149
    :cond_5
    const-string v4, "overlaysWebView"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 150
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_6

    .line 151
    iget-object v4, p0, Lorg/apache/cordova/statusbar/StatusBar;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lorg/apache/cordova/statusbar/StatusBar$5;

    invoke-direct {v5, p0, p2}, Lorg/apache/cordova/statusbar/StatusBar$5;-><init>(Lorg/apache/cordova/statusbar/StatusBar;Lorg/apache/cordova/CordovaArgs;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 163
    :cond_6
    invoke-virtual {p2, v1}, Lorg/apache/cordova/CordovaArgs;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v1

    goto :goto_0

    .line 166
    :cond_7
    const-string v4, "styleDefault"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 167
    iget-object v4, p0, Lorg/apache/cordova/statusbar/StatusBar;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lorg/apache/cordova/statusbar/StatusBar$6;

    invoke-direct {v5, p0}, Lorg/apache/cordova/statusbar/StatusBar$6;-><init>(Lorg/apache/cordova/statusbar/StatusBar;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 176
    :cond_8
    const-string v4, "styleLightContent"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 177
    iget-object v4, p0, Lorg/apache/cordova/statusbar/StatusBar;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lorg/apache/cordova/statusbar/StatusBar$7;

    invoke-direct {v5, p0}, Lorg/apache/cordova/statusbar/StatusBar$7;-><init>(Lorg/apache/cordova/statusbar/StatusBar;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 186
    :cond_9
    const-string v4, "styleBlackTranslucent"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 187
    iget-object v4, p0, Lorg/apache/cordova/statusbar/StatusBar;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lorg/apache/cordova/statusbar/StatusBar$8;

    invoke-direct {v5, p0}, Lorg/apache/cordova/statusbar/StatusBar$8;-><init>(Lorg/apache/cordova/statusbar/StatusBar;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 196
    :cond_a
    const-string v4, "styleBlackOpaque"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 197
    iget-object v4, p0, Lorg/apache/cordova/statusbar/StatusBar;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lorg/apache/cordova/statusbar/StatusBar$9;

    invoke-direct {v5, p0}, Lorg/apache/cordova/statusbar/StatusBar$9;-><init>(Lorg/apache/cordova/statusbar/StatusBar;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_b
    move v3, v1

    .line 206
    goto/16 :goto_0
.end method

.method public initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 2
    .param p1, "cordova"    # Lorg/apache/cordova/CordovaInterface;
    .param p2, "webView"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    .line 51
    const-string v0, "StatusBar"

    const-string v1, "StatusBar: initialization"

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaPlugin;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 54
    iget-object v0, p0, Lorg/apache/cordova/statusbar/StatusBar;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/statusbar/StatusBar$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/cordova/statusbar/StatusBar$1;-><init>(Lorg/apache/cordova/statusbar/StatusBar;Lorg/apache/cordova/CordovaInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method
