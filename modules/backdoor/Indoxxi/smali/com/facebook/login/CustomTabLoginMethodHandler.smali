.class public Lcom/facebook/login/CustomTabLoginMethodHandler;
.super Lcom/facebook/login/WebLoginMethodHandler;
.source "CustomTabLoginMethodHandler.java"


# static fields
.field private static final API_EC_DIALOG_CANCEL:I = 0x1069

.field private static final CHALLENGE_LENGTH:I = 0x14

.field private static final CHROME_PACKAGES:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/login/CustomTabLoginMethodHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final CUSTOM_TABS_SERVICE_ACTION:Ljava/lang/String; = "android.support.customtabs.action.CustomTabsService"

.field private static final CUSTOM_TAB_REQUEST_CODE:I = 0x1


# instance fields
.field private currentPackage:Ljava/lang/String;

.field private expectedChallenge:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.chrome"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.chrome.beta"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.chrome.dev"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/login/CustomTabLoginMethodHandler;->CHROME_PACKAGES:[Ljava/lang/String;

    .line 241
    new-instance v0, Lcom/facebook/login/CustomTabLoginMethodHandler$1;

    invoke-direct {v0}, Lcom/facebook/login/CustomTabLoginMethodHandler$1;-><init>()V

    sput-object v0, Lcom/facebook/login/CustomTabLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/facebook/login/WebLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->expectedChallenge:Ljava/lang/String;

    .line 233
    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 1
    .param p1, "loginClient"    # Lcom/facebook/login/LoginClient;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/facebook/login/WebLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 71
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/facebook/internal/Utility;->generateRandomString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->expectedChallenge:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private getChromePackage()Ljava/lang/String;
    .locals 8

    .prologue
    .line 120
    iget-object v6, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->currentPackage:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 121
    iget-object v6, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->currentPackage:Ljava/lang/String;

    .line 137
    :goto_0
    return-object v6

    .line 123
    :cond_0
    iget-object v6, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v6}, Lcom/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 124
    .local v1, "context":Landroid/content/Context;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v5, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 127
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_2

    .line 128
    new-instance v0, Ljava/util/HashSet;

    sget-object v6, Lcom/facebook/login/CustomTabLoginMethodHandler;->CHROME_PACKAGES:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 129
    .local v0, "chromePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 130
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 131
    .local v4, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v4, :cond_1

    iget-object v7, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 132
    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v6, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->currentPackage:Ljava/lang/String;

    .line 133
    iget-object v6, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->currentPackage:Ljava/lang/String;

    goto :goto_0

    .line 137
    .end local v0    # "chromePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private isCustomTabsAllowed()Z
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;->isCustomTabsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;->getChromePackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasCustomTabRedirectActivity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCustomTabsEnabled()Z
    .locals 3

    .prologue
    .line 114
    iget-object v2, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "appId":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v1

    .line 116
    .local v1, "settings":Lcom/facebook/internal/FetchedAppSettings;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/internal/FetchedAppSettings;->getCustomTabsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onCustomTabComplete(Ljava/lang/String;Lcom/facebook/login/LoginClient$Request;)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/facebook/login/LoginClient$Request;

    .prologue
    const/4 v10, 0x0

    .line 155
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/facebook/CustomTabMainActivity;->getRedirectUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 156
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 157
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/facebook/internal/Utility;->parseUrlQueryString(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 158
    .local v7, "values":Landroid/os/Bundle;
    invoke-virtual {v6}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/facebook/internal/Utility;->parseUrlQueryString(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 160
    invoke-direct {p0, v7}, Lcom/facebook/login/CustomTabLoginMethodHandler;->validateChallengeParam(Landroid/os/Bundle;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 161
    new-instance v8, Lcom/facebook/FacebookException;

    const-string v9, "Invalid state parameter"

    invoke-direct {v8, v9}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-super {p0, p2, v10, v8}, Lcom/facebook/login/WebLoginMethodHandler;->onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 204
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "values":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 165
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local v7    # "values":Landroid/os/Bundle;
    :cond_1
    const-string v8, "error"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "error":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 167
    const-string v8, "error_type"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    :cond_2
    const-string v8, "error_msg"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, "errorMessage":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 172
    const-string v8, "error_message"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    :cond_3
    if-nez v3, :cond_4

    .line 175
    const-string v8, "error_description"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 177
    :cond_4
    const-string v8, "error_code"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "errorCodeString":Ljava/lang/String;
    const/4 v1, -0x1

    .line 179
    .local v1, "errorCode":I
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 181
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 187
    :cond_5
    :goto_1
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, -0x1

    if-ne v1, v8, :cond_6

    .line 189
    invoke-super {p0, p2, v7, v10}, Lcom/facebook/login/WebLoginMethodHandler;->onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 182
    :catch_0
    move-exception v4

    .line 183
    .local v4, "ex":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    goto :goto_1

    .line 190
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    :cond_6
    if-eqz v0, :cond_8

    const-string v8, "access_denied"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "OAuthAccessDeniedException"

    .line 191
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 192
    :cond_7
    new-instance v8, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v8}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-super {p0, p2, v10, v8}, Lcom/facebook/login/WebLoginMethodHandler;->onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 193
    :cond_8
    const/16 v8, 0x1069

    if-ne v1, v8, :cond_9

    .line 194
    new-instance v8, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v8}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-super {p0, p2, v10, v8}, Lcom/facebook/login/WebLoginMethodHandler;->onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 196
    :cond_9
    new-instance v5, Lcom/facebook/FacebookRequestError;

    invoke-direct {v5, v1, v0, v3}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 198
    .local v5, "requestError":Lcom/facebook/FacebookRequestError;
    new-instance v8, Lcom/facebook/FacebookServiceException;

    invoke-direct {v8, v5, v3}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    invoke-super {p0, p2, v10, v8}, Lcom/facebook/login/WebLoginMethodHandler;->onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    goto/16 :goto_0
.end method

.method private validateChallengeParam(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 213
    :try_start_0
    const-string v5, "state"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "stateString":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 221
    .end local v3    # "stateString":Ljava/lang/String;
    :goto_0
    return v4

    .line 217
    .restart local v3    # "stateString":Ljava/lang/String;
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 218
    .local v2, "state":Lorg/json/JSONObject;
    const-string v5, "7_challenge"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "challenge":Ljava/lang/String;
    iget-object v5, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->expectedChallenge:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 220
    .end local v0    # "challenge":Ljava/lang/String;
    .end local v2    # "state":Lorg/json/JSONObject;
    .end local v3    # "stateString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Lorg/json/JSONException;
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method getNameForLogging()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "custom_tab"

    return-object v0
.end method

.method protected getSSODevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "chrome_custom_tab"

    return-object v0
.end method

.method getTokenSource()Lcom/facebook/AccessTokenSource;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/facebook/AccessTokenSource;->CHROME_CUSTOM_TAB:Lcom/facebook/AccessTokenSource;

    return-object v0
.end method

.method onActivityResult(IILandroid/content/Intent;)Z
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 142
    if-eq p1, v1, :cond_0

    .line 143
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/login/WebLoginMethodHandler;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    .line 151
    :goto_0
    return v1

    .line 145
    :cond_0
    iget-object v2, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 146
    .local v0, "request":Lcom/facebook/login/LoginClient$Request;
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 147
    sget-object v2, Lcom/facebook/CustomTabMainActivity;->EXTRA_URL:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/facebook/login/CustomTabLoginMethodHandler;->onCustomTabComplete(Ljava/lang/String;Lcom/facebook/login/LoginClient$Request;)V

    goto :goto_0

    .line 150
    :cond_1
    const/4 v1, 0x0

    new-instance v2, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v2}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-super {p0, v0, v1, v2}, Lcom/facebook/login/WebLoginMethodHandler;->onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 151
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected putChallengeParam(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "param"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 208
    const-string v0, "7_challenge"

    iget-object v1, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->expectedChallenge:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    return-void
.end method

.method tryAuthorize(Lcom/facebook/login/LoginClient$Request;)Z
    .locals 6
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;

    .prologue
    const/4 v3, 0x1

    .line 91
    invoke-direct {p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;->isCustomTabsAllowed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 92
    const/4 v3, 0x0

    .line 104
    :goto_0
    return v3

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/login/CustomTabLoginMethodHandler;->getParameters(Lcom/facebook/login/LoginClient$Request;)Landroid/os/Bundle;

    move-result-object v2

    .line 96
    .local v2, "parameters":Landroid/os/Bundle;
    invoke-virtual {p0, v2, p1}, Lcom/facebook/login/CustomTabLoginMethodHandler;->addExtraParameters(Landroid/os/Bundle;Lcom/facebook/login/LoginClient$Request;)Landroid/os/Bundle;

    move-result-object v2

    .line 97
    iget-object v4, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v4}, Lcom/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 99
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/facebook/CustomTabMainActivity;

    invoke-direct {v1, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v1, "intent":Landroid/content/Intent;
    sget-object v4, Lcom/facebook/CustomTabMainActivity;->EXTRA_PARAMS:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 101
    sget-object v4, Lcom/facebook/CustomTabMainActivity;->EXTRA_CHROME_PACKAGE:Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;->getChromePackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v4, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v4}, Lcom/facebook/login/LoginClient;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 237
    invoke-super {p0, p1, p2}, Lcom/facebook/login/WebLoginMethodHandler;->writeToParcel(Landroid/os/Parcel;I)V

    .line 238
    iget-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->expectedChallenge:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    return-void
.end method
