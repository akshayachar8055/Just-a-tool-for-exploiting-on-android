.class final Lcom/facebook/places/internal/LocationPackageManager$1;
.super Ljava/lang/Object;
.source "LocationPackageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/places/internal/LocationPackageManager;->requestLocationPackage(Lcom/facebook/places/internal/LocationPackageRequestParams;Lcom/facebook/places/internal/LocationPackageManager$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/facebook/places/internal/LocationPackageManager$Listener;

.field final synthetic val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;


# direct methods
.method constructor <init>(Lcom/facebook/places/internal/LocationPackageRequestParams;Lcom/facebook/places/internal/LocationPackageManager$Listener;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/facebook/places/internal/LocationPackageManager$1;->val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;

    iput-object p2, p0, Lcom/facebook/places/internal/LocationPackageManager$1;->val$listener:Lcom/facebook/places/internal/LocationPackageManager$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 61
    new-instance v3, Lcom/facebook/places/internal/LocationPackage;

    invoke-direct {v3}, Lcom/facebook/places/internal/LocationPackage;-><init>()V

    .line 64
    .local v3, "locationPackage":Lcom/facebook/places/internal/LocationPackage;
    const/4 v4, 0x0

    .line 65
    .local v4, "locationScanTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/facebook/places/internal/LocationPackage;>;"
    const/4 v7, 0x0

    .line 66
    .local v7, "wifiScanTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/facebook/places/internal/LocationPackage;>;"
    const/4 v0, 0x0

    .line 68
    .local v0, "bleScanTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/facebook/places/internal/LocationPackage;>;"
    :try_start_0
    iget-object v9, p0, Lcom/facebook/places/internal/LocationPackageManager$1;->val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v9}, Lcom/facebook/places/internal/LocationPackageRequestParams;->isLocationScanEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 71
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/facebook/places/internal/LocationPackageManager$1;->val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;

    .line 70
    invoke-static {v9, v10}, Lcom/facebook/places/internal/ScannerFactory;->newLocationScanner(Landroid/content/Context;Lcom/facebook/places/internal/LocationPackageRequestParams;)Lcom/facebook/places/internal/LocationScanner;

    move-result-object v5

    .line 76
    .local v5, "locationScanner":Lcom/facebook/places/internal/LocationScanner;
    invoke-interface {v5}, Lcom/facebook/places/internal/LocationScanner;->initAndCheckEligibility()V

    .line 78
    iget-object v9, p0, Lcom/facebook/places/internal/LocationPackageManager$1;->val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-static {v5, v9}, Lcom/facebook/places/internal/LocationPackageManager;->access$000(Lcom/facebook/places/internal/LocationScanner;Lcom/facebook/places/internal/LocationPackageRequestParams;)Ljava/util/concurrent/FutureTask;

    move-result-object v4

    .line 79
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 82
    .end local v5    # "locationScanner":Lcom/facebook/places/internal/LocationScanner;
    :cond_0
    iget-object v9, p0, Lcom/facebook/places/internal/LocationPackageManager$1;->val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v9}, Lcom/facebook/places/internal/LocationPackageRequestParams;->isWifiScanEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 83
    iget-object v9, p0, Lcom/facebook/places/internal/LocationPackageManager$1;->val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-static {v9}, Lcom/facebook/places/internal/LocationPackageManager;->access$100(Lcom/facebook/places/internal/LocationPackageRequestParams;)Ljava/util/concurrent/FutureTask;

    move-result-object v7

    .line 84
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 86
    :cond_1
    iget-object v9, p0, Lcom/facebook/places/internal/LocationPackageManager$1;->val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v9}, Lcom/facebook/places/internal/LocationPackageRequestParams;->isBluetoothScanEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 87
    iget-object v9, p0, Lcom/facebook/places/internal/LocationPackageManager$1;->val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-static {v9}, Lcom/facebook/places/internal/LocationPackageManager;->access$200(Lcom/facebook/places/internal/LocationPackageRequestParams;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    .line 88
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/facebook/places/internal/ScannerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 92
    :cond_2
    if-eqz v0, :cond_3

    .line 94
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/places/internal/LocationPackage;

    .line 95
    .local v1, "bleSensorData":Lcom/facebook/places/internal/LocationPackage;
    iget-object v9, v1, Lcom/facebook/places/internal/LocationPackage;->ambientBluetoothLe:Ljava/util/List;

    iput-object v9, v3, Lcom/facebook/places/internal/LocationPackage;->ambientBluetoothLe:Ljava/util/List;

    .line 96
    iget-boolean v9, v1, Lcom/facebook/places/internal/LocationPackage;->isBluetoothScanningEnabled:Z

    iput-boolean v9, v3, Lcom/facebook/places/internal/LocationPackage;->isBluetoothScanningEnabled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/facebook/places/internal/ScannerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    .end local v1    # "bleSensorData":Lcom/facebook/places/internal/LocationPackage;
    :cond_3
    :goto_0
    if-eqz v7, :cond_4

    .line 106
    :try_start_2
    invoke-virtual {v7}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/places/internal/LocationPackage;

    .line 107
    .local v8, "wifiSensorData":Lcom/facebook/places/internal/LocationPackage;
    iget-boolean v9, v8, Lcom/facebook/places/internal/LocationPackage;->isWifiScanningEnabled:Z

    iput-boolean v9, v3, Lcom/facebook/places/internal/LocationPackage;->isWifiScanningEnabled:Z

    .line 109
    iget-object v9, v8, Lcom/facebook/places/internal/LocationPackage;->connectedWifi:Lcom/facebook/places/internal/WifiScanResult;

    iput-object v9, v3, Lcom/facebook/places/internal/LocationPackage;->connectedWifi:Lcom/facebook/places/internal/WifiScanResult;

    .line 110
    iget-object v9, v8, Lcom/facebook/places/internal/LocationPackage;->ambientWifi:Ljava/util/List;

    iput-object v9, v3, Lcom/facebook/places/internal/LocationPackage;->ambientWifi:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/facebook/places/internal/ScannerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 117
    .end local v8    # "wifiSensorData":Lcom/facebook/places/internal/LocationPackage;
    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    .line 119
    :try_start_3
    invoke-virtual {v4}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/places/internal/LocationPackage;

    .line 120
    .local v6, "locationSensorData":Lcom/facebook/places/internal/LocationPackage;
    iget-object v9, v6, Lcom/facebook/places/internal/LocationPackage;->locationError:Lcom/facebook/places/internal/ScannerException$Type;

    iput-object v9, v3, Lcom/facebook/places/internal/LocationPackage;->locationError:Lcom/facebook/places/internal/ScannerException$Type;

    .line 121
    iget-object v9, v6, Lcom/facebook/places/internal/LocationPackage;->location:Landroid/location/Location;

    iput-object v9, v3, Lcom/facebook/places/internal/LocationPackage;->location:Landroid/location/Location;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/facebook/places/internal/ScannerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 132
    .end local v6    # "locationSensorData":Lcom/facebook/places/internal/LocationPackage;
    :cond_5
    :goto_2
    iget-object v9, p0, Lcom/facebook/places/internal/LocationPackageManager$1;->val$listener:Lcom/facebook/places/internal/LocationPackageManager$Listener;

    invoke-interface {v9, v3}, Lcom/facebook/places/internal/LocationPackageManager$Listener;->onLocationPackage(Lcom/facebook/places/internal/LocationPackage;)V

    .line 133
    return-void

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v9, "Exception scanning for bluetooth beacons"

    invoke-static {v9, v2}, Lcom/facebook/places/internal/LocationPackageManager;->access$300(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Lcom/facebook/places/internal/ScannerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 126
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 127
    .local v2, "e":Lcom/facebook/places/internal/ScannerException;
    const-string v9, "Exception scanning for locations"

    invoke-static {v9, v2}, Lcom/facebook/places/internal/LocationPackageManager;->access$300(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    iget-object v9, v2, Lcom/facebook/places/internal/ScannerException;->type:Lcom/facebook/places/internal/ScannerException$Type;

    iput-object v9, v3, Lcom/facebook/places/internal/LocationPackage;->locationError:Lcom/facebook/places/internal/ScannerException$Type;

    goto :goto_2

    .line 111
    .end local v2    # "e":Lcom/facebook/places/internal/ScannerException;
    :catch_2
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v9, "Exception scanning for wifi access points"

    invoke-static {v9, v2}, Lcom/facebook/places/internal/LocationPackageManager;->access$300(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Lcom/facebook/places/internal/ScannerException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 129
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 130
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v9, "Exception requesting a location package"

    invoke-static {v9, v2}, Lcom/facebook/places/internal/LocationPackageManager;->access$300(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 122
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 123
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v9, "Exception getting location"

    invoke-static {v9, v2}, Lcom/facebook/places/internal/LocationPackageManager;->access$300(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Lcom/facebook/places/internal/ScannerException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2
.end method
