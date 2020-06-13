.class public Lorg/apache/cordova/ResumeCallback;
.super Lorg/apache/cordova/CallbackContext;
.source "ResumeCallback.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private pluginManager:Lorg/apache/cordova/PluginManager;

.field private serviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/cordova/PluginManager;)V
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "pluginManager"    # Lorg/apache/cordova/PluginManager;

    .prologue
    .line 34
    const-string v0, "resumecallback"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/cordova/CallbackContext;-><init>(Ljava/lang/String;Lorg/apache/cordova/CordovaWebView;)V

    .line 29
    const-string v0, "CordovaResumeCallback"

    iput-object v0, p0, Lorg/apache/cordova/ResumeCallback;->TAG:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lorg/apache/cordova/ResumeCallback;->serviceName:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lorg/apache/cordova/ResumeCallback;->pluginManager:Lorg/apache/cordova/PluginManager;

    .line 37
    return-void
.end method


# virtual methods
.method public sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    .locals 9
    .param p1, "pluginResult"    # Lorg/apache/cordova/PluginResult;

    .prologue
    .line 41
    monitor-enter p0

    .line 42
    :try_start_0
    iget-boolean v6, p0, Lorg/apache/cordova/ResumeCallback;->finished:Z

    if-eqz v6, :cond_0

    .line 43
    const-string v6, "CordovaResumeCallback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/apache/cordova/ResumeCallback;->serviceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " attempted to send a second callback to ResumeCallback\nResult was: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lorg/apache/cordova/PluginResult;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/cordova/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    monitor-exit p0

    .line 75
    :goto_0
    return-void

    .line 46
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/cordova/ResumeCallback;->finished:Z

    .line 48
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 51
    .local v2, "event":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 54
    .local v4, "pluginResultObject":Lorg/json/JSONObject;
    :try_start_1
    const-string v6, "pluginServiceName"

    iget-object v7, p0, Lorg/apache/cordova/ResumeCallback;->serviceName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v6, "pluginStatus"

    sget-object v7, Lorg/apache/cordova/PluginResult;->StatusMessages:[Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/cordova/PluginResult;->getStatus()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v6, "action"

    const-string v7, "resume"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v6, "pendingResult"

    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    :goto_1
    new-instance v3, Lorg/apache/cordova/PluginResult;

    sget-object v6, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v3, v6, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 69
    .local v3, "eventResult":Lorg/apache/cordova/PluginResult;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/cordova/PluginResult;>;"
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v6, p0, Lorg/apache/cordova/ResumeCallback;->pluginManager:Lorg/apache/cordova/PluginManager;

    const-string v7, "CoreAndroid"

    invoke-virtual {v6, v7}, Lorg/apache/cordova/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/CordovaPlugin;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/CoreAndroid;

    .line 74
    .local v0, "appPlugin":Lorg/apache/cordova/CoreAndroid;
    new-instance v6, Lorg/apache/cordova/PluginResult;

    sget-object v7, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v6, v7, v5}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/util/List;)V

    invoke-virtual {v0, v6}, Lorg/apache/cordova/CoreAndroid;->sendResumeEvent(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0

    .line 48
    .end local v0    # "appPlugin":Lorg/apache/cordova/CoreAndroid;
    .end local v2    # "event":Lorg/json/JSONObject;
    .end local v3    # "eventResult":Lorg/apache/cordova/PluginResult;
    .end local v4    # "pluginResultObject":Lorg/json/JSONObject;
    .end local v5    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/cordova/PluginResult;>;"
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 59
    .restart local v2    # "event":Lorg/json/JSONObject;
    .restart local v4    # "pluginResultObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Lorg/json/JSONException;
    const-string v6, "CordovaResumeCallback"

    const-string v7, "Unable to create resume object for Activity Result"

    invoke-static {v6, v7}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
