.class final Lcom/facebook/places/internal/LocationPackageManager$4;
.super Ljava/lang/Object;
.source "LocationPackageManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/places/internal/LocationPackageManager;->newWifiScanFuture(Lcom/facebook/places/internal/LocationPackageRequestParams;)Ljava/util/concurrent/FutureTask;
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
    .line 205
    iput-object p1, p0, Lcom/facebook/places/internal/LocationPackageManager$4;->val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/facebook/places/internal/LocationPackage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v2, Lcom/facebook/places/internal/LocationPackage;

    invoke-direct {v2}, Lcom/facebook/places/internal/LocationPackage;-><init>()V

    .line 210
    .local v2, "locationPackage":Lcom/facebook/places/internal/LocationPackage;
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 211
    .local v0, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/facebook/places/internal/LocationPackageManager$4;->val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-static {v0, v4}, Lcom/facebook/places/internal/ScannerFactory;->newWifiScanner(Landroid/content/Context;Lcom/facebook/places/internal/LocationPackageRequestParams;)Lcom/facebook/places/internal/WifiScanner;

    move-result-object v3

    .line 212
    .local v3, "wifiScanner":Lcom/facebook/places/internal/WifiScanner;
    invoke-interface {v3}, Lcom/facebook/places/internal/WifiScanner;->initAndCheckEligibility()V

    .line 214
    invoke-interface {v3}, Lcom/facebook/places/internal/WifiScanner;->getConnectedWifi()Lcom/facebook/places/internal/WifiScanResult;

    move-result-object v4

    iput-object v4, v2, Lcom/facebook/places/internal/LocationPackage;->connectedWifi:Lcom/facebook/places/internal/WifiScanResult;

    .line 215
    invoke-interface {v3}, Lcom/facebook/places/internal/WifiScanner;->isWifiScanningEnabled()Z

    move-result v4

    iput-boolean v4, v2, Lcom/facebook/places/internal/LocationPackage;->isWifiScanningEnabled:Z

    .line 217
    iget-boolean v4, v2, Lcom/facebook/places/internal/LocationPackage;->isWifiScanningEnabled:Z

    if-eqz v4, :cond_0

    .line 219
    invoke-interface {v3}, Lcom/facebook/places/internal/WifiScanner;->getWifiScans()Ljava/util/List;

    move-result-object v4

    iput-object v4, v2, Lcom/facebook/places/internal/LocationPackage;->ambientWifi:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "wifiScanner":Lcom/facebook/places/internal/WifiScanner;
    :cond_0
    :goto_0
    return-object v2

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Exception scanning for wifi access points"

    invoke-static {v4, v1}, Lcom/facebook/places/internal/LocationPackageManager;->access$300(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/facebook/places/internal/LocationPackage;->isWifiScanningEnabled:Z

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
    .line 205
    invoke-virtual {p0}, Lcom/facebook/places/internal/LocationPackageManager$4;->call()Lcom/facebook/places/internal/LocationPackage;

    move-result-object v0

    return-object v0
.end method
