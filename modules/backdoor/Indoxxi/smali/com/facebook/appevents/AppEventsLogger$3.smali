.class final Lcom/facebook/appevents/AppEventsLogger$3;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventsLogger;->updateUserProperties(Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationID:Ljava/lang/String;

.field final synthetic val$callback:Lcom/facebook/GraphRequest$Callback;

.field final synthetic val$parameters:Landroid/os/Bundle;

.field final synthetic val$userID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)V
    .locals 0

    .prologue
    .line 767
    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLogger$3;->val$userID:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/appevents/AppEventsLogger$3;->val$parameters:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/facebook/appevents/AppEventsLogger$3;->val$applicationID:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/appevents/AppEventsLogger$3;->val$callback:Lcom/facebook/GraphRequest$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 770
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 771
    .local v10, "userPropertiesParams":Landroid/os/Bundle;
    const-string v1, "user_unique_id"

    iget-object v2, p0, Lcom/facebook/appevents/AppEventsLogger$3;->val$userID:Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v1, "custom_data"

    iget-object v2, p0, Lcom/facebook/appevents/AppEventsLogger$3;->val$parameters:Landroid/os/Bundle;

    invoke-virtual {v10, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 776
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 775
    invoke-static {v1}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v8

    .line 777
    .local v8, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 778
    const-string v1, "advertiser_id"

    .line 780
    invoke-virtual {v8}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v2

    .line 778
    invoke-virtual {v10, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 785
    .local v3, "data":Landroid/os/Bundle;
    :try_start_0
    invoke-static {v10}, Lcom/facebook/internal/BundleJSONConverter;->convertToJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v9

    .line 786
    .local v9, "userData":Lorg/json/JSONObject;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 787
    .local v6, "dataArray":Lorg/json/JSONArray;
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 789
    const-string v1, "data"

    .line 790
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 789
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 796
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s/user_properties"

    new-array v5, v13, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/facebook/appevents/AppEventsLogger$3;->val$applicationID:Ljava/lang/String;

    aput-object v12, v5, v11

    .line 797
    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    iget-object v5, p0, Lcom/facebook/appevents/AppEventsLogger$3;->val$callback:Lcom/facebook/GraphRequest$Callback;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 801
    .local v0, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v0, v13}, Lcom/facebook/GraphRequest;->setSkipClientToken(Z)V

    .line 802
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 803
    return-void

    .line 791
    .end local v0    # "request":Lcom/facebook/GraphRequest;
    .end local v6    # "dataArray":Lorg/json/JSONArray;
    .end local v9    # "userData":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .line 792
    .local v7, "ex":Lorg/json/JSONException;
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Failed to construct request"

    invoke-direct {v1, v2, v7}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
