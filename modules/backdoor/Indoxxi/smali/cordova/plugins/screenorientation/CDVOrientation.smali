.class public Lcordova/plugins/screenorientation/CDVOrientation;
.super Lorg/apache/cordova/CordovaPlugin;
.source "CDVOrientation.java"


# static fields
.field private static final ANY:Ljava/lang/String; = "any"

.field private static final LANDSCAPE:Ljava/lang/String; = "landscape"

.field private static final LANDSCAPE_PRIMARY:Ljava/lang/String; = "landscape-primary"

.field private static final LANDSCAPE_SECONDARY:Ljava/lang/String; = "landscape-secondary"

.field private static final PORTRAIT:Ljava/lang/String; = "portrait"

.field private static final PORTRAIT_PRIMARY:Ljava/lang/String; = "portrait-primary"

.field private static final PORTRAIT_SECONDARY:Ljava/lang/String; = "portrait-secondary"

.field private static final TAG:Ljava/lang/String; = "YoikScreenOrientation"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method private routeScreenOrientation(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 8
    .param p1, "args"    # Lorg/json/JSONArray;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 67
    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "orientation":Ljava/lang/String;
    const-string v3, "YoikScreenOrientation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested ScreenOrientation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v3, p0, Lcordova/plugins/screenorientation/CDVOrientation;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 77
    .local v1, "activity":Landroid/app/Activity;
    const-string v3, "any"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 93
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 94
    return v6

    .line 79
    :cond_1
    const-string v3, "landscape-primary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    invoke-virtual {v1, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 81
    :cond_2
    const-string v3, "portrait-primary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    invoke-virtual {v1, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 83
    :cond_3
    const-string v3, "landscape"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 84
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 85
    :cond_4
    const-string v3, "portrait"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 86
    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 87
    :cond_5
    const-string v3, "landscape-secondary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 88
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 89
    :cond_6
    const-string v3, "portrait-secondary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 53
    const-string v0, "YoikScreenOrientation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v0, "screenOrientation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-direct {p0, p2, p3}, Lcordova/plugins/screenorientation/CDVOrientation;->routeScreenOrientation(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    .line 62
    :goto_0
    return v0

    .line 61
    :cond_0
    const-string v0, "action not recognised"

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x0

    goto :goto_0
.end method
