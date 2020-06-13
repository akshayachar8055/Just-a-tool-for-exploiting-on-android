.class public Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;
.super Ljava/lang/Object;
.source "AutomaticAnalyticsLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logActivateAppEvent()V
    .locals 5

    .prologue
    .line 44
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 45
    .local v2, "context":Landroid/content/Context;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "appId":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v1

    .line 47
    .local v1, "autoLogAppEvents":Z
    const-string v3, "context"

    invoke-static {v2, v3}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    if-eqz v1, :cond_0

    .line 49
    instance-of v3, v2, Landroid/app/Application;

    if-eqz v3, :cond_1

    .line 50
    check-cast v2, Landroid/app/Application;

    .end local v2    # "context":Landroid/content/Context;
    invoke-static {v2, v0}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/app/Application;Ljava/lang/String;)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 52
    .restart local v2    # "context":Landroid/content/Context;
    :cond_1
    sget-object v3, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->TAG:Ljava/lang/String;

    const-string v4, "Automatic logging of basic events will not happen, because FacebookSdk.getApplicationContext() returns object that is not instance of android.app.Application. Make sure you call FacebookSdk.sdkInitialize() from Application class and pass application context."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static logActivityTimeSpentEvent(Ljava/lang/String;J)V
    .locals 9
    .param p0, "activityName"    # Ljava/lang/String;
    .param p1, "timeSpentInSeconds"    # J

    .prologue
    .line 64
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 65
    .local v2, "context":Landroid/content/Context;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "appId":Ljava/lang/String;
    const-string v5, "context"

    invoke-static {v2, v5}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/facebook/internal/FetchedAppSettingsManager;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v4

    .line 69
    .local v4, "settings":Lcom/facebook/internal/FetchedAppSettings;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/facebook/internal/FetchedAppSettings;->getAutomaticLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-lez v5, :cond_0

    .line 70
    invoke-static {v2}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 71
    .local v0, "appEventsLogger":Lcom/facebook/appevents/AppEventsLogger;
    new-instance v3, Landroid/os/Bundle;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 72
    .local v3, "params":Landroid/os/Bundle;
    const-string v5, "fb_aa_time_spent_view_name"

    invoke-virtual {v3, v5, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 73
    const-string v5, "fb_aa_time_spent_on_view"

    long-to-double v6, p1

    invoke-virtual {v0, v5, v6, v7, v3}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 76
    .end local v0    # "appEventsLogger":Lcom/facebook/appevents/AppEventsLogger;
    .end local v3    # "params":Landroid/os/Bundle;
    :cond_0
    return-void
.end method
