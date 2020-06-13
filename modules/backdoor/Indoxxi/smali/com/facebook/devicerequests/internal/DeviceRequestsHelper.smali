.class public Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;
.super Ljava/lang/Object;
.source "DeviceRequestsHelper.java"


# static fields
.field static final DEVICE_INFO_DEVICE:Ljava/lang/String; = "device"

.field static final DEVICE_INFO_MODEL:Ljava/lang/String; = "model"

.field public static final DEVICE_INFO_PARAM:Ljava/lang/String; = "device_info"

.field static final SDK_FLAVOR:Ljava/lang/String; = "android"

.field static final SDK_HEADER:Ljava/lang/String; = "fbsdk"

.field static final SERVICE_TYPE:Ljava/lang/String; = "_fb._tcp."

.field private static deviceRequestsListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/nsd/NsdManager$RegistrationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->deviceRequestsListeners:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanUpAdvertisementService(Ljava/lang/String;)V
    .locals 0
    .param p0, "userCode"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {p0}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->cleanUpAdvertisementServiceImpl(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method private static cleanUpAdvertisementServiceImpl(Ljava/lang/String;)V
    .locals 4
    .param p0, "userCode"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 165
    sget-object v2, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->deviceRequestsListeners:Ljava/util/HashMap;

    .line 166
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/nsd/NsdManager$RegistrationListener;

    .line 167
    .local v1, "nsdRegistrationListener":Landroid/net/nsd/NsdManager$RegistrationListener;
    if-eqz v1, :cond_0

    .line 169
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "servicediscovery"

    .line 170
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/nsd/NsdManager;

    .line 172
    .local v0, "nsdManager":Landroid/net/nsd/NsdManager;
    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdManager;->unregisterService(Landroid/net/nsd/NsdManager$RegistrationListener;)V

    .line 174
    sget-object v2, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->deviceRequestsListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .end local v0    # "nsdManager":Landroid/net/nsd/NsdManager;
    :cond_0
    return-void
.end method

.method public static getDeviceInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 66
    .local v0, "deviceInfo":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "device"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 68
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isAvailable()Z
    .locals 2

    .prologue
    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 87
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings;->getSmartLoginOptions()Ljava/util/EnumSet;

    move-result-object v0

    sget-object v1, Lcom/facebook/internal/SmartLoginOption;->Enabled:Lcom/facebook/internal/SmartLoginOption;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startAdvertisementService(Ljava/lang/String;)Z
    .locals 1
    .param p0, "userCode"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p0}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->startAdvertisementServiceImpl(Ljava/lang/String;)Z

    move-result v0

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static startAdvertisementServiceImpl(Ljava/lang/String;)Z
    .locals 13
    .param p0, "userCode"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 97
    sget-object v5, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->deviceRequestsListeners:Ljava/util/HashMap;

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 160
    :goto_0
    return v10

    .line 102
    :cond_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    const/16 v7, 0x7c

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "sdkVersion":Ljava/lang/String;
    const-string v5, "%s_%s_%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "fbsdk"

    aput-object v7, v6, v11

    const-string v7, "%s-%s"

    new-array v8, v12, [Ljava/lang/Object;

    const-string v9, "android"

    aput-object v9, v8, v11

    aput-object v4, v8, v10

    .line 110
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    aput-object p0, v6, v12

    .line 105
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "nsdServiceName":Ljava/lang/String;
    new-instance v0, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v0}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    .line 122
    .local v0, "nsdLoginAdvertisementService":Landroid/net/nsd/NsdServiceInfo;
    const-string v5, "_fb._tcp."

    invoke-virtual {v0, v5}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, v3}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    .line 124
    const/16 v5, 0x50

    invoke-virtual {v0, v5}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    .line 127
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "servicediscovery"

    .line 128
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/nsd/NsdManager;

    .line 130
    .local v1, "nsdManager":Landroid/net/nsd/NsdManager;
    new-instance v2, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper$1;

    invoke-direct {v2, v3, p0}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .local v2, "nsdRegistrationListener":Landroid/net/nsd/NsdManager$RegistrationListener;
    sget-object v5, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->deviceRequestsListeners:Ljava/util/HashMap;

    invoke-virtual {v5, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {v1, v0, v10, v2}, Landroid/net/nsd/NsdManager;->registerService(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V

    goto :goto_0
.end method
