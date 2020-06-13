.class final Lcom/facebook/places/internal/LocationPackageManager$3;
.super Ljava/lang/Object;
.source "LocationPackageManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/places/internal/LocationPackageManager;->newBluetoothScanFuture(Lcom/facebook/places/internal/LocationPackageRequestParams;)Ljava/util/concurrent/FutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/facebook/places/internal/LocationPackage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;


# direct methods
.method constructor <init>(Lcom/facebook/places/internal/LocationPackageRequestParams;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/facebook/places/internal/LocationPackageManager$3;->val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/facebook/places/internal/LocationPackage;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 162
    new-instance v4, Lcom/facebook/places/internal/LocationPackage;

    invoke-direct {v4}, Lcom/facebook/places/internal/LocationPackage;-><init>()V

    .line 164
    .local v4, "locationPackage":Lcom/facebook/places/internal/LocationPackage;
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 165
    .local v1, "context":Landroid/content/Context;
    iget-object v5, p0, Lcom/facebook/places/internal/LocationPackageManager$3;->val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-static {v1, v5}, Lcom/facebook/places/internal/ScannerFactory;->newBleScanner(Landroid/content/Context;Lcom/facebook/places/internal/LocationPackageRequestParams;)Lcom/facebook/places/internal/BleScanner;

    move-result-object v0

    .line 167
    .local v0, "bleScanner":Lcom/facebook/places/internal/BleScanner;
    invoke-interface {v0}, Lcom/facebook/places/internal/BleScanner;->initAndCheckEligibility()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :try_start_1
    invoke-interface {v0}, Lcom/facebook/places/internal/BleScanner;->startScanning()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :try_start_2
    iget-object v5, p0, Lcom/facebook/places/internal/LocationPackageManager$3;->val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v5}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getBluetoothScanDurationMs()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    :goto_0
    :try_start_3
    invoke-interface {v0}, Lcom/facebook/places/internal/BleScanner;->stopScanning()V

    .line 180
    invoke-interface {v0}, Lcom/facebook/places/internal/BleScanner;->getErrorCode()I

    move-result v3

    .line 181
    .local v3, "errorCode":I
    if-nez v3, :cond_0

    .line 182
    invoke-interface {v0}, Lcom/facebook/places/internal/BleScanner;->getScanResults()Ljava/util/List;

    move-result-object v5

    iput-object v5, v4, Lcom/facebook/places/internal/LocationPackage;->ambientBluetoothLe:Ljava/util/List;

    .line 183
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/facebook/places/internal/LocationPackage;->isBluetoothScanningEnabled:Z

    .line 198
    .end local v0    # "bleScanner":Lcom/facebook/places/internal/BleScanner;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "errorCode":I
    :goto_1
    return-object v4

    .line 177
    .restart local v0    # "bleScanner":Lcom/facebook/places/internal/BleScanner;
    .restart local v1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v5

    invoke-interface {v0}, Lcom/facebook/places/internal/BleScanner;->stopScanning()V

    throw v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 194
    .end local v0    # "bleScanner":Lcom/facebook/places/internal/BleScanner;
    .end local v1    # "context":Landroid/content/Context;
    :catch_0
    move-exception v2

    .line 195
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "Exception scanning for bluetooth beacons"

    invoke-static {v5, v2}, Lcom/facebook/places/internal/LocationPackageManager;->access$300(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    iput-boolean v10, v4, Lcom/facebook/places/internal/LocationPackage;->isBluetoothScanningEnabled:Z

    goto :goto_1

    .line 185
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bleScanner":Lcom/facebook/places/internal/BleScanner;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "errorCode":I
    :cond_0
    :try_start_4
    invoke-static {}, Lcom/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 186
    const-string v5, "LocationPackageManager"

    const-string v6, "Bluetooth LE scan failed with error: %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 190
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 188
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 186
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_1
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/facebook/places/internal/LocationPackage;->isBluetoothScanningEnabled:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 173
    .end local v3    # "errorCode":I
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/facebook/places/internal/LocationPackageManager$3;->call()Lcom/facebook/places/internal/LocationPackage;

    move-result-object v0

    return-object v0
.end method
