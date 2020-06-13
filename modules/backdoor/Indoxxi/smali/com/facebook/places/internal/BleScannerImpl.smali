.class public Lcom/facebook/places/internal/BleScannerImpl;
.super Ljava/lang/Object;
.source "BleScannerImpl.java"

# interfaces
.implements Lcom/facebook/places/internal/BleScanner;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BleScannerImpl"


# instance fields
.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field private context:Landroid/content/Context;

.field private errorCode:I

.field private isScanInProgress:Z

.field private params:Lcom/facebook/places/internal/LocationPackageRequestParams;

.field private scanCallBack:Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;

.field private final scanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/places/internal/BluetoothScanResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/places/internal/LocationPackageRequestParams;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/facebook/places/internal/LocationPackageRequestParams;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    .line 65
    iput-object p1, p0, Lcom/facebook/places/internal/BleScannerImpl;->context:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/facebook/places/internal/BleScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    .line 67
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/facebook/places/internal/BleScannerImpl;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$202(Lcom/facebook/places/internal/BleScannerImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/facebook/places/internal/BleScannerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/facebook/places/internal/BleScannerImpl;->errorCode:I

    return p1
.end method

.method static synthetic access$300(Lcom/facebook/places/internal/BleScannerImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/places/internal/BleScannerImpl;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Landroid/bluetooth/le/ScanResult;)Lcom/facebook/places/internal/BluetoothScanResult;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/le/ScanResult;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/facebook/places/internal/BleScannerImpl;->newBluetoothScanResult(Landroid/bluetooth/le/ScanResult;)Lcom/facebook/places/internal/BluetoothScanResult;

    move-result-object v0

    return-object v0
.end method

.method private static formatPayload([B)Ljava/lang/String;
    .locals 2
    .param p0, "payload"    # [B

    .prologue
    .line 232
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 233
    :cond_0
    const/4 v1, 0x0

    .line 236
    :goto_0
    return-object v1

    .line 235
    :cond_1
    invoke-static {p0}, Lcom/facebook/places/internal/BleScannerImpl;->getPayloadLength([B)I

    move-result v0

    .line 236
    .local v0, "payloadLength":I
    invoke-static {p0, v0}, Lcom/facebook/places/internal/BleScannerImpl;->toHexString([BI)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getPayloadLength([B)I
    .locals 3
    .param p0, "payload"    # [B

    .prologue
    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, "offset":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 242
    aget-byte v0, p0, v1

    .line 243
    .local v0, "length":B
    if-nez v0, :cond_0

    .line 252
    .end local v0    # "length":B
    .end local v1    # "offset":I
    :goto_1
    return v1

    .line 246
    .restart local v0    # "length":B
    .restart local v1    # "offset":I
    :cond_0
    if-gez v0, :cond_1

    .line 248
    array-length v1, p0

    goto :goto_1

    .line 250
    :cond_1
    add-int/lit8 v2, v0, 0x1

    add-int/2addr v1, v2

    .line 251
    goto :goto_0

    .line 252
    .end local v0    # "length":B
    :cond_2
    array-length v1, p0

    goto :goto_1
.end method

.method private static logException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 268
    invoke-static {}, Lcom/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    const-string v0, "BleScannerImpl"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    :cond_0
    return-void
.end method

.method private static newBluetoothScanResult(Landroid/bluetooth/le/ScanResult;)Lcom/facebook/places/internal/BluetoothScanResult;
    .locals 5
    .param p0, "scanResult"    # Landroid/bluetooth/le/ScanResult;

    .prologue
    .line 224
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v3

    .line 225
    .local v3, "scanRecord":Landroid/bluetooth/le/ScanRecord;
    invoke-virtual {v3}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/places/internal/BleScannerImpl;->formatPayload([B)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "payload":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v2

    .line 227
    .local v2, "rssi":I
    new-instance v0, Lcom/facebook/places/internal/BluetoothScanResult;

    invoke-direct {v0, v1, v2}, Lcom/facebook/places/internal/BluetoothScanResult;-><init>(Ljava/lang/String;I)V

    .line 228
    .local v0, "bluetoothScanResult":Lcom/facebook/places/internal/BluetoothScanResult;
    return-object v0
.end method

.method private static toHexString([BI)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B
    .param p1, "length"    # I

    .prologue
    .line 256
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 257
    .local v2, "sb":Ljava/lang/StringBuffer;
    if-ltz p1, :cond_0

    array-length v3, p0

    if-le p1, v3, :cond_1

    .line 258
    :cond_0
    array-length p1, p0

    .line 260
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 261
    aget-byte v0, p0, v1

    .line 262
    .local v0, "b":B
    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    .end local v0    # "b":B
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private waitForMainLooper(J)V
    .locals 5
    .param p1, "maxWaitTimeoutMs"    # J

    .prologue
    .line 129
    :try_start_0
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 130
    .local v2, "lock":Ljava/lang/Object;
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :try_start_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 133
    .local v1, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/facebook/places/internal/BleScannerImpl$1;

    invoke-direct {v3, p0, v2}, Lcom/facebook/places/internal/BleScannerImpl$1;-><init>(Lcom/facebook/places/internal/BleScannerImpl;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    invoke-virtual {v2, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 147
    monitor-exit v2

    .line 151
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "lock":Ljava/lang/Object;
    :goto_0
    return-void

    .line 147
    .restart local v2    # "lock":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 148
    .end local v2    # "lock":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Exception waiting for main looper"

    invoke-static {v3, v0}, Lcom/facebook/places/internal/BleScannerImpl;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getErrorCode()I
    .locals 1

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->errorCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getScanResults()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/places/internal/BluetoothScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    :try_start_1
    iget-object v3, p0, Lcom/facebook/places/internal/BleScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v3}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getBluetoothMaxScanResults()I

    move-result v1

    .line 163
    .local v1, "maxSanResults":I
    iget-object v3, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    .local v2, "output":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/places/internal/BluetoothScanResult;>;"
    new-instance v0, Lcom/facebook/places/internal/BleScannerImpl$2;

    invoke-direct {v0, p0}, Lcom/facebook/places/internal/BleScannerImpl$2;-><init>(Lcom/facebook/places/internal/BleScannerImpl;)V

    .line 172
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/facebook/places/internal/BluetoothScanResult;>;"
    iget-object v3, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 173
    iget-object v3, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    .end local v0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/facebook/places/internal/BluetoothScanResult;>;"
    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    monitor-exit p0

    return-object v2

    .line 175
    .end local v2    # "output":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/places/internal/BluetoothScanResult;>;"
    :cond_0
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    .restart local v2    # "output":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/places/internal/BluetoothScanResult;>;"
    iget-object v3, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 178
    .end local v1    # "maxSanResults":I
    .end local v2    # "output":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/places/internal/BluetoothScanResult;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 161
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized initAndCheckEligibility()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 72
    new-instance v0, Lcom/facebook/places/internal/ScannerException;

    sget-object v1, Lcom/facebook/places/internal/ScannerException$Type;->NOT_SUPPORTED:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v0, v1}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 74
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasBluetoothPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Lcom/facebook/places/internal/ScannerException;

    sget-object v1, Lcom/facebook/places/internal/ScannerException$Type;->PERMISSION_DENIED:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v0, v1}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    new-instance v0, Lcom/facebook/places/internal/ScannerException;

    sget-object v1, Lcom/facebook/places/internal/ScannerException$Type;->PERMISSION_DENIED:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v0, v1}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v0

    .line 80
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 81
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 82
    :cond_3
    new-instance v0, Lcom/facebook/places/internal/ScannerException;

    sget-object v1, Lcom/facebook/places/internal/ScannerException$Type;->DISABLED:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v0, v1}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v0

    .line 84
    :cond_4
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 85
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_5

    .line 86
    new-instance v0, Lcom/facebook/places/internal/ScannerException;

    sget-object v1, Lcom/facebook/places/internal/ScannerException$Type;->UNKNOWN_ERROR:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v0, v1}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :cond_5
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized startScanning()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/facebook/places/internal/BleScannerImpl;->isScanInProgress:Z

    if-eqz v2, :cond_0

    .line 93
    new-instance v2, Lcom/facebook/places/internal/ScannerException;

    sget-object v3, Lcom/facebook/places/internal/ScannerException$Type;->SCAN_ALREADY_IN_PROGRESS:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v2, v3}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 95
    :cond_0
    :try_start_1
    new-instance v2, Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;-><init>(Lcom/facebook/places/internal/BleScannerImpl;Lcom/facebook/places/internal/BleScannerImpl$1;)V

    iput-object v2, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanCallBack:Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;

    .line 96
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/places/internal/BleScannerImpl;->isScanInProgress:Z

    .line 97
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/places/internal/BleScannerImpl;->errorCode:I

    .line 99
    iget-object v3, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :try_start_2
    iget-object v2, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 101
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    :try_start_3
    iget-object v2, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v2, :cond_1

    .line 104
    new-instance v2, Lcom/facebook/places/internal/ScannerException;

    sget-object v3, Lcom/facebook/places/internal/ScannerException$Type;->UNKNOWN_ERROR:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v2, v3}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 108
    :cond_1
    :try_start_6
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    .line 109
    .local v0, "builder":Landroid/bluetooth/le/ScanSettings$Builder;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 110
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 111
    iget-object v2, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanCallBack:Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;

    invoke-virtual {v2, v3, v4, v5}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 112
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/places/internal/BleScannerImpl;->isScanInProgress:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 113
    .end local v0    # "builder":Landroid/bluetooth/le/ScanSettings$Builder;
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    :try_start_7
    new-instance v2, Lcom/facebook/places/internal/ScannerException;

    sget-object v3, Lcom/facebook/places/internal/ScannerException$Type;->UNKNOWN_ERROR:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v2, v3}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public declared-synchronized stopScanning()V
    .locals 2

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanCallBack:Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->flushPendingScanResults(Landroid/bluetooth/le/ScanCallback;)V

    .line 121
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanCallBack:Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 122
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v0}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getBluetoothFlushResultsTimeoutMs()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/places/internal/BleScannerImpl;->waitForMainLooper(J)V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->isScanInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
