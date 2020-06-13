.class public Lorg/apache/cordova/CordovaInterfaceImpl;
.super Ljava/lang/Object;
.source "CordovaInterfaceImpl.java"

# interfaces
.implements Lorg/apache/cordova/CordovaInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CordovaInterfaceImpl"


# instance fields
.field protected activity:Landroid/app/Activity;

.field protected activityResultCallback:Lorg/apache/cordova/CordovaPlugin;

.field protected activityResultRequestCode:I

.field protected activityWasDestroyed:Z

.field protected initCallbackService:Ljava/lang/String;

.field protected permissionResultCallbacks:Lorg/apache/cordova/CallbackMap;

.field protected pluginManager:Lorg/apache/cordova/PluginManager;

.field protected savedPluginState:Landroid/os/Bundle;

.field protected savedResult:Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;

.field protected threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 55
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/CordovaInterfaceImpl;-><init>(Landroid/app/Activity;Ljava/util/concurrent/ExecutorService;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "threadPool"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityWasDestroyed:Z

    .line 59
    iput-object p1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activity:Landroid/app/Activity;

    .line 60
    iput-object p2, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 61
    new-instance v0, Lorg/apache/cordova/CallbackMap;

    invoke-direct {v0}, Lorg/apache/cordova/CallbackMap;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->permissionResultCallbacks:Lorg/apache/cordova/CallbackMap;

    .line 62
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public hasPermission(Ljava/lang/String;)Z
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 239
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 241
    iget-object v2, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v2, p1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 242
    .local v0, "result":I
    if-nez v0, :cond_1

    .line 246
    .end local v0    # "result":I
    :cond_0
    :goto_0
    return v1

    .line 242
    .restart local v0    # "result":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 140
    iget-object v0, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityResultCallback:Lorg/apache/cordova/CordovaPlugin;

    .line 141
    .local v0, "callback":Lorg/apache/cordova/CordovaPlugin;
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->initCallbackService:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 144
    new-instance v1, Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;-><init>(IILandroid/content/Intent;)V

    iput-object v1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->savedResult:Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;

    .line 145
    iget-object v1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    iget-object v2, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->initCallbackService:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/cordova/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/CordovaPlugin;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->savedPluginState:Landroid/os/Bundle;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaPlugin;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lorg/apache/cordova/ResumeCallback;

    .line 149
    invoke-virtual {v0}, Lorg/apache/cordova/CordovaPlugin;->getServiceName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-direct {v2, v3, v4}, Lorg/apache/cordova/ResumeCallback;-><init>(Ljava/lang/String;Lorg/apache/cordova/PluginManager;)V

    .line 148
    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/CordovaPlugin;->onRestoreStateForActivityResult(Landroid/os/Bundle;Lorg/apache/cordova/CallbackContext;)V

    .line 153
    :cond_0
    iput-object v5, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityResultCallback:Lorg/apache/cordova/CordovaPlugin;

    .line 155
    if-eqz v0, :cond_1

    .line 156
    const-string v1, "CordovaInterfaceImpl"

    const-string v2, "Sending activity result to plugin"

    invoke-static {v1, v2}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iput-object v5, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->initCallbackService:Ljava/lang/String;

    .line 158
    iput-object v5, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->savedResult:Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;

    .line 159
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/cordova/CordovaPlugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 160
    const/4 v1, 0x1

    .line 163
    :goto_0
    return v1

    .line 162
    :cond_1
    const-string v2, "CordovaInterfaceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got an activity result, but no plugin was registered to receive it"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->savedResult:Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;

    if-eqz v1, :cond_2

    const-string v1, " yet!"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/apache/cordova/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v1, 0x0

    goto :goto_0

    .line 162
    :cond_2
    const-string v1, "."

    goto :goto_1
.end method

.method public onCordovaInit(Lorg/apache/cordova/PluginManager;)V
    .locals 6
    .param p1, "pluginManager"    # Lorg/apache/cordova/PluginManager;

    .prologue
    .line 112
    iput-object p1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    .line 113
    iget-object v3, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->savedResult:Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;

    if-eqz v3, :cond_1

    .line 114
    iget-object v3, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->savedResult:Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;

    invoke-static {v3}, Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;->access$000(Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;)I

    move-result v3

    iget-object v4, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->savedResult:Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;

    invoke-static {v4}, Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;->access$100(Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;)I

    move-result v4

    iget-object v5, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->savedResult:Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;

    invoke-static {v5}, Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;->access$200(Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lorg/apache/cordova/CordovaInterfaceImpl;->onActivityResult(IILandroid/content/Intent;)Z

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-boolean v3, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityWasDestroyed:Z

    if-eqz v3, :cond_0

    .line 118
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityWasDestroyed:Z

    .line 119
    if-eqz p1, :cond_0

    .line 121
    const-string v3, "CoreAndroid"

    invoke-virtual {p1, v3}, Lorg/apache/cordova/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/CordovaPlugin;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/CoreAndroid;

    .line 122
    .local v0, "appPlugin":Lorg/apache/cordova/CoreAndroid;
    if-eqz v0, :cond_0

    .line 123
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 125
    .local v2, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "action"

    const-string v4, "resume"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_1
    new-instance v3, Lorg/apache/cordova/PluginResult;

    sget-object v4, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v3, v4, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v3}, Lorg/apache/cordova/CoreAndroid;->sendResumeEvent(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Lorg/json/JSONException;
    const-string v3, "CordovaInterfaceImpl"

    const-string v4, "Failed to create event message"

    invoke-static {v3, v4, v1}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 96
    const-string v0, "exit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 99
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->permissionResultCallbacks:Lorg/apache/cordova/CallbackMap;

    invoke-virtual {v1, p1}, Lorg/apache/cordova/CallbackMap;->getAndRemoveCallback(I)Landroid/util/Pair;

    move-result-object v0

    .line 220
    .local v0, "callback":Landroid/util/Pair;, "Landroid/util/Pair<Lorg/apache/cordova/CordovaPlugin;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 221
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lorg/apache/cordova/CordovaPlugin;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, p2, p3}, Lorg/apache/cordova/CordovaPlugin;->onRequestPermissionResult(I[Ljava/lang/String;[I)V

    .line 223
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 179
    iget-object v1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityResultCallback:Lorg/apache/cordova/CordovaPlugin;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityResultCallback:Lorg/apache/cordova/CordovaPlugin;

    invoke-virtual {v1}, Lorg/apache/cordova/CordovaPlugin;->getServiceName()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "serviceName":Ljava/lang/String;
    const-string v1, "callbackService"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .end local v0    # "serviceName":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    if-eqz v1, :cond_1

    .line 184
    const-string v1, "plugin"

    iget-object v2, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {v2}, Lorg/apache/cordova/PluginManager;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 187
    :cond_1
    return-void
.end method

.method public requestPermission(Lorg/apache/cordova/CordovaPlugin;ILjava/lang/String;)V
    .locals 2
    .param p1, "plugin"    # Lorg/apache/cordova/CordovaPlugin;
    .param p2, "requestCode"    # I
    .param p3, "permission"    # Ljava/lang/String;

    .prologue
    .line 226
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 227
    .local v0, "permissions":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 228
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/cordova/CordovaInterfaceImpl;->requestPermissions(Lorg/apache/cordova/CordovaPlugin;I[Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public requestPermissions(Lorg/apache/cordova/CordovaPlugin;I[Ljava/lang/String;)V
    .locals 2
    .param p1, "plugin"    # Lorg/apache/cordova/CordovaPlugin;
    .param p2, "requestCode"    # I
    .param p3, "permissions"    # [Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 233
    iget-object v1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->permissionResultCallbacks:Lorg/apache/cordova/CallbackMap;

    invoke-virtual {v1, p1, p2}, Lorg/apache/cordova/CallbackMap;->registerCallback(Lorg/apache/cordova/CordovaPlugin;I)I

    move-result v0

    .line 234
    .local v0, "mappedRequestCode":I
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaInterfaceImpl;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 235
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 193
    const-string v0, "callbackService"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->initCallbackService:Ljava/lang/String;

    .line 194
    const-string v0, "plugin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->savedPluginState:Landroid/os/Bundle;

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityWasDestroyed:Z

    .line 196
    return-void
.end method

.method public setActivityResultCallback(Lorg/apache/cordova/CordovaPlugin;)V
    .locals 4
    .param p1, "plugin"    # Lorg/apache/cordova/CordovaPlugin;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityResultCallback:Lorg/apache/cordova/CordovaPlugin;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityResultCallback:Lorg/apache/cordova/CordovaPlugin;

    iget v1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityResultRequestCode:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/cordova/CordovaPlugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 81
    :cond_0
    iput-object p1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityResultCallback:Lorg/apache/cordova/CordovaPlugin;

    .line 82
    return-void
.end method

.method public setActivityResultRequestCode(I)V
    .locals 0
    .param p1, "requestCode"    # I

    .prologue
    .line 172
    iput p1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityResultRequestCode:I

    .line 173
    return-void
.end method

.method public startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V
    .locals 2
    .param p1, "command"    # Lorg/apache/cordova/CordovaPlugin;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lorg/apache/cordova/CordovaInterfaceImpl;->setActivityResultCallback(Lorg/apache/cordova/CordovaPlugin;)V

    .line 68
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityResultCallback:Lorg/apache/cordova/CordovaPlugin;

    .line 71
    throw v0
.end method
