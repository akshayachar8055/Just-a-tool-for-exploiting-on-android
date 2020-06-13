.class public Lcom/facebook/places/internal/WifiScannerImpl;
.super Ljava/lang/Object;
.source "WifiScannerImpl.java"

# interfaces
.implements Lcom/facebook/places/internal/WifiScanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;
    }
.end annotation


# instance fields
.field private broadcastReceiver:Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;

.field private context:Landroid/content/Context;

.field private final params:Lcom/facebook/places/internal/LocationPackageRequestParams;

.field private final scanLock:Ljava/lang/Object;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/places/internal/LocationPackageRequestParams;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/facebook/places/internal/LocationPackageRequestParams;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/places/internal/WifiScannerImpl;->scanLock:Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Lcom/facebook/places/internal/WifiScannerImpl;->context:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/facebook/places/internal/WifiScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    .line 62
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/places/internal/WifiScannerImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/places/internal/WifiScannerImpl;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/places/internal/WifiScannerImpl;->scanLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/places/internal/WifiScannerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/places/internal/WifiScannerImpl;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->unregisterBroadcastReceiver()V

    return-void
.end method

.method private static filterResults(Ljava/util/List;I)V
    .locals 2
    .param p1, "maxResults"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 151
    new-instance v0, Lcom/facebook/places/internal/WifiScannerImpl$1;

    invoke-direct {v0}, Lcom/facebook/places/internal/WifiScannerImpl$1;-><init>()V

    .line 157
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/net/wifi/ScanResult;>;"
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 158
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 160
    .end local v0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/net/wifi/ScanResult;>;"
    :cond_0
    return-void
.end method

.method private static filterWifiScanResultsByMaxAge(Ljava/util/List;J)Ljava/util/List;
    .locals 13
    .param p1, "maxAgeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;J)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v2, "filtered":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz p0, :cond_0

    .line 167
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-ge v6, v7, :cond_1

    .line 168
    invoke-interface {v2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 183
    :cond_0
    return-object v2

    .line 170
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 171
    .local v4, "nowSinceBootMs":J
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 172
    .local v3, "result":Landroid/net/wifi/ScanResult;
    iget-wide v8, v3, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    sub-long v0, v4, v8

    .line 173
    .local v0, "ageMs":J
    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-gez v7, :cond_3

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v3, Landroid/net/wifi/ScanResult;->timestamp:J

    sub-long v0, v8, v10

    .line 177
    :cond_3
    cmp-long v7, v0, p1

    if-gez v7, :cond_2

    .line 178
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getActiveScanResults()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/places/internal/WifiScanResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    .prologue
    .line 202
    const/4 v1, 0x0

    .line 204
    .local v1, "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/places/internal/WifiScanResult;>;"
    :try_start_0
    iget-object v2, p0, Lcom/facebook/places/internal/WifiScannerImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/internal/Validate;->hasChangeWifiStatePermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->registerBroadcastReceiver()V

    .line 206
    iget-object v2, p0, Lcom/facebook/places/internal/WifiScannerImpl;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->startScan()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    .line 207
    .local v0, "isScanStarted":Z
    if-eqz v0, :cond_0

    .line 209
    :try_start_1
    iget-object v3, p0, Lcom/facebook/places/internal/WifiScannerImpl;->scanLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 210
    :try_start_2
    iget-object v2, p0, Lcom/facebook/places/internal/WifiScannerImpl;->scanLock:Ljava/lang/Object;

    iget-object v4, p0, Lcom/facebook/places/internal/WifiScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v4}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getWifiScanTimeoutMs()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 211
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    :goto_0
    :try_start_3
    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->getCachedScanResults()Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    .line 221
    .end local v0    # "isScanStarted":Z
    :cond_0
    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->unregisterBroadcastReceiver()V

    .line 223
    :goto_1
    return-object v1

    .line 211
    .restart local v0    # "isScanStarted":Z
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 212
    :catch_0
    move-exception v2

    goto :goto_0

    .line 218
    .end local v0    # "isScanStarted":Z
    :catch_1
    move-exception v2

    .line 221
    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->unregisterBroadcastReceiver()V

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->unregisterBroadcastReceiver()V

    throw v2
.end method

.method private getCachedScanResults()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/places/internal/WifiScanResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    .prologue
    .line 131
    :try_start_0
    iget-object v5, p0, Lcom/facebook/places/internal/WifiScannerImpl;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 132
    .local v2, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v5, p0, Lcom/facebook/places/internal/WifiScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v5}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getWifiScanMaxAgeMs()J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/facebook/places/internal/WifiScannerImpl;->filterWifiScanResultsByMaxAge(Ljava/util/List;J)Ljava/util/List;

    move-result-object v2

    .line 133
    iget-object v5, p0, Lcom/facebook/places/internal/WifiScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v5}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getWifiMaxScanResults()I

    move-result v5

    invoke-static {v2, v5}, Lcom/facebook/places/internal/WifiScannerImpl;->filterResults(Ljava/util/List;I)V

    .line 134
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    .local v4, "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/places/internal/WifiScanResult;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 136
    .local v1, "scanResult":Landroid/net/wifi/ScanResult;
    new-instance v3, Lcom/facebook/places/internal/WifiScanResult;

    invoke-direct {v3}, Lcom/facebook/places/internal/WifiScanResult;-><init>()V

    .line 137
    .local v3, "wifiScanResult":Lcom/facebook/places/internal/WifiScanResult;
    iget-object v6, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v6, v3, Lcom/facebook/places/internal/WifiScanResult;->bssid:Ljava/lang/String;

    .line 138
    iget-object v6, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v6, v3, Lcom/facebook/places/internal/WifiScanResult;->ssid:Ljava/lang/String;

    .line 139
    iget v6, v1, Landroid/net/wifi/ScanResult;->level:I

    iput v6, v3, Lcom/facebook/places/internal/WifiScanResult;->rssi:I

    .line 140
    iget v6, v1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v6, v3, Lcom/facebook/places/internal/WifiScanResult;->frequency:I

    .line 141
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    .end local v1    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v2    # "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v3    # "wifiScanResult":Lcom/facebook/places/internal/WifiScanResult;
    .end local v4    # "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/places/internal/WifiScanResult;>;"
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/facebook/places/internal/ScannerException;

    sget-object v6, Lcom/facebook/places/internal/ScannerException$Type;->UNKNOWN_ERROR:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v5, v6, v0}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;Ljava/lang/Exception;)V

    throw v5

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .restart local v4    # "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/places/internal/WifiScanResult;>;"
    :cond_0
    return-object v4
.end method

.method private isWifiScanningAlwaysOn()Z
    .locals 2

    .prologue
    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/facebook/places/internal/WifiScannerImpl;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v0

    .line 125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 227
    iget-object v1, p0, Lcom/facebook/places/internal/WifiScannerImpl;->broadcastReceiver:Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;

    if-eqz v1, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->unregisterBroadcastReceiver()V

    .line 230
    :cond_0
    new-instance v1, Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;-><init>(Lcom/facebook/places/internal/WifiScannerImpl;Lcom/facebook/places/internal/WifiScannerImpl$1;)V

    iput-object v1, p0, Lcom/facebook/places/internal/WifiScannerImpl;->broadcastReceiver:Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;

    .line 231
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 232
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/facebook/places/internal/WifiScannerImpl;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/places/internal/WifiScannerImpl;->broadcastReceiver:Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 234
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/facebook/places/internal/WifiScannerImpl;->broadcastReceiver:Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/facebook/places/internal/WifiScannerImpl;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/places/internal/WifiScannerImpl;->broadcastReceiver:Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/places/internal/WifiScannerImpl;->broadcastReceiver:Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;

    .line 245
    :cond_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getConnectedWifi()Lcom/facebook/places/internal/WifiScanResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    .prologue
    .line 89
    :try_start_0
    iget-object v3, p0, Lcom/facebook/places/internal/WifiScannerImpl;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 90
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v3

    sget-object v4, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v3, v4, :cond_2

    .line 93
    :cond_0
    const/4 v2, 0x0

    .line 102
    :cond_1
    :goto_0
    return-object v2

    .line 95
    :cond_2
    new-instance v2, Lcom/facebook/places/internal/WifiScanResult;

    invoke-direct {v2}, Lcom/facebook/places/internal/WifiScanResult;-><init>()V

    .line 96
    .local v2, "wifiScanResult":Lcom/facebook/places/internal/WifiScanResult;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/places/internal/WifiScanResult;->bssid:Ljava/lang/String;

    .line 97
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/places/internal/WifiScanResult;->ssid:Ljava/lang/String;

    .line 98
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    iput v3, v2, Lcom/facebook/places/internal/WifiScanResult;->rssi:I

    .line 99
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 100
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v3

    iput v3, v2, Lcom/facebook/places/internal/WifiScanResult;->frequency:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v2    # "wifiScanResult":Lcom/facebook/places/internal/WifiScanResult;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/facebook/places/internal/ScannerException;

    sget-object v4, Lcom/facebook/places/internal/ScannerException$Type;->UNKNOWN_ERROR:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v3, v4, v0}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;Ljava/lang/Exception;)V

    throw v3
.end method

.method public declared-synchronized getWifiScans()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/places/internal/WifiScanResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    .prologue
    .line 189
    monitor-enter p0

    const/4 v1, 0x0

    .line 190
    .local v1, "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/places/internal/WifiScanResult;>;"
    :try_start_0
    iget-object v2, p0, Lcom/facebook/places/internal/WifiScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v2}, Lcom/facebook/places/internal/LocationPackageRequestParams;->isWifiActiveScanForced()Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->getCachedScanResults()Ljava/util/List;

    move-result-object v1

    .line 193
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    const/4 v0, 0x1

    .line 194
    .local v0, "isListEmpty":Z
    :goto_0
    iget-object v2, p0, Lcom/facebook/places/internal/WifiScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v2}, Lcom/facebook/places/internal/LocationPackageRequestParams;->isWifiActiveScanForced()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/facebook/places/internal/WifiScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v2}, Lcom/facebook/places/internal/LocationPackageRequestParams;->isWifiActiveScanAllowed()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 195
    :cond_2
    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->getActiveScanResults()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 197
    :cond_3
    monitor-exit p0

    return-object v1

    .line 193
    .end local v0    # "isListEmpty":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public initAndCheckEligibility()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v1, p0, Lcom/facebook/places/internal/WifiScannerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.wifi"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lcom/facebook/places/internal/ScannerException;

    sget-object v2, Lcom/facebook/places/internal/ScannerException$Type;->NOT_SUPPORTED:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v1, v2}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v1

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/facebook/places/internal/WifiScannerImpl;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/internal/Validate;->hasWiFiPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    new-instance v1, Lcom/facebook/places/internal/ScannerException;

    sget-object v2, Lcom/facebook/places/internal/ScannerException$Type;->PERMISSION_DENIED:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v1, v2}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v1

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/facebook/places/internal/WifiScannerImpl;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_2

    .line 76
    iget-object v1, p0, Lcom/facebook/places/internal/WifiScannerImpl;->context:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/facebook/places/internal/WifiScannerImpl;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 79
    :cond_2
    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->isWifiScanningAlwaysOn()Z

    move-result v0

    .line 81
    .local v0, "isWifiScanningAlwaysOn":Z
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/facebook/places/internal/WifiScannerImpl;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 82
    new-instance v1, Lcom/facebook/places/internal/ScannerException;

    sget-object v2, Lcom/facebook/places/internal/ScannerException$Type;->DISABLED:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v1, v2}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v1

    .line 84
    :cond_3
    return-void
.end method

.method public isWifiScanningEnabled()Z
    .locals 1

    .prologue
    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->initAndCheckEligibility()V

    .line 112
    iget-object v0, p0, Lcom/facebook/places/internal/WifiScannerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasLocationPermission(Landroid/content/Context;)Z
    :try_end_0
    .catch Lcom/facebook/places/internal/ScannerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    .line 115
    :catch_0
    move-exception v0

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
