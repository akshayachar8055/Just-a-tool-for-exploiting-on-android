.class final Lcom/facebook/places/internal/LocationPackageManager$2;
.super Ljava/lang/Object;
.source "LocationPackageManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/places/internal/LocationPackageManager;->newLocationScanFuture(Lcom/facebook/places/internal/LocationScanner;Lcom/facebook/places/internal/LocationPackageRequestParams;)Ljava/util/concurrent/FutureTask;
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
.field final synthetic val$locationScanner:Lcom/facebook/places/internal/LocationScanner;


# direct methods
.method constructor <init>(Lcom/facebook/places/internal/LocationScanner;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/facebook/places/internal/LocationPackageManager$2;->val$locationScanner:Lcom/facebook/places/internal/LocationScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/facebook/places/internal/LocationPackage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v1, Lcom/facebook/places/internal/LocationPackage;

    invoke-direct {v1}, Lcom/facebook/places/internal/LocationPackage;-><init>()V

    .line 145
    .local v1, "locationPackage":Lcom/facebook/places/internal/LocationPackage;
    :try_start_0
    iget-object v2, p0, Lcom/facebook/places/internal/LocationPackageManager$2;->val$locationScanner:Lcom/facebook/places/internal/LocationScanner;

    invoke-interface {v2}, Lcom/facebook/places/internal/LocationScanner;->getLocation()Landroid/location/Location;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/places/internal/LocationPackage;->location:Landroid/location/Location;
    :try_end_0
    .catch Lcom/facebook/places/internal/ScannerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    :goto_0
    return-object v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Lcom/facebook/places/internal/ScannerException;
    iget-object v2, v0, Lcom/facebook/places/internal/ScannerException;->type:Lcom/facebook/places/internal/ScannerException$Type;

    iput-object v2, v1, Lcom/facebook/places/internal/LocationPackage;->locationError:Lcom/facebook/places/internal/ScannerException$Type;

    .line 148
    const-string v2, "Exception while getting location"

    invoke-static {v2, v0}, Lcom/facebook/places/internal/LocationPackageManager;->access$300(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 149
    .end local v0    # "e":Lcom/facebook/places/internal/ScannerException;
    :catch_1
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/facebook/places/internal/ScannerException$Type;->UNKNOWN_ERROR:Lcom/facebook/places/internal/ScannerException$Type;

    iput-object v2, v1, Lcom/facebook/places/internal/LocationPackage;->locationError:Lcom/facebook/places/internal/ScannerException$Type;

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
    .line 140
    invoke-virtual {p0}, Lcom/facebook/places/internal/LocationPackageManager$2;->call()Lcom/facebook/places/internal/LocationPackage;

    move-result-object v0

    return-object v0
.end method
