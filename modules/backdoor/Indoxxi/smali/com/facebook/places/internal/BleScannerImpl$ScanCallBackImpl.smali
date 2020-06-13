.class Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;
.super Landroid/bluetooth/le/ScanCallback;
.source "BleScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/places/internal/BleScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanCallBackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/places/internal/BleScannerImpl;


# direct methods
.method private constructor <init>(Lcom/facebook/places/internal/BleScannerImpl;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;->this$0:Lcom/facebook/places/internal/BleScannerImpl;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/places/internal/BleScannerImpl;Lcom/facebook/places/internal/BleScannerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/places/internal/BleScannerImpl;
    .param p2, "x1"    # Lcom/facebook/places/internal/BleScannerImpl$1;

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;-><init>(Lcom/facebook/places/internal/BleScannerImpl;)V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onBatchScanResults(Ljava/util/List;)V

    .line 194
    :try_start_0
    iget-object v3, p0, Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;->this$0:Lcom/facebook/places/internal/BleScannerImpl;

    invoke-static {v3}, Lcom/facebook/places/internal/BleScannerImpl;->access$300(Lcom/facebook/places/internal/BleScannerImpl;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/ScanResult;

    .line 196
    .local v2, "result":Landroid/bluetooth/le/ScanResult;
    invoke-static {v2}, Lcom/facebook/places/internal/BleScannerImpl;->access$400(Landroid/bluetooth/le/ScanResult;)Lcom/facebook/places/internal/BluetoothScanResult;

    move-result-object v0

    .line 197
    .local v0, "bluetoothScanResult":Lcom/facebook/places/internal/BluetoothScanResult;
    if-eqz v0, :cond_0

    .line 198
    iget-object v5, p0, Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;->this$0:Lcom/facebook/places/internal/BleScannerImpl;

    invoke-static {v5}, Lcom/facebook/places/internal/BleScannerImpl;->access$300(Lcom/facebook/places/internal/BleScannerImpl;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    .end local v0    # "bluetoothScanResult":Lcom/facebook/places/internal/BluetoothScanResult;
    .end local v2    # "result":Landroid/bluetooth/le/ScanResult;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Exception in ble scan callback"

    invoke-static {v3, v1}, Lcom/facebook/places/internal/BleScannerImpl;->access$100(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 205
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 201
    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public onScanFailed(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onScanFailed(I)V

    .line 187
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;->this$0:Lcom/facebook/places/internal/BleScannerImpl;

    invoke-static {v0, p1}, Lcom/facebook/places/internal/BleScannerImpl;->access$202(Lcom/facebook/places/internal/BleScannerImpl;I)I

    .line 188
    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 4
    .param p1, "callbackType"    # I
    .param p2, "result"    # Landroid/bluetooth/le/ScanResult;

    .prologue
    .line 209
    invoke-super {p0, p1, p2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    .line 211
    :try_start_0
    iget-object v2, p0, Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;->this$0:Lcom/facebook/places/internal/BleScannerImpl;

    invoke-static {v2}, Lcom/facebook/places/internal/BleScannerImpl;->access$300(Lcom/facebook/places/internal/BleScannerImpl;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :try_start_1
    invoke-static {p2}, Lcom/facebook/places/internal/BleScannerImpl;->access$400(Landroid/bluetooth/le/ScanResult;)Lcom/facebook/places/internal/BluetoothScanResult;

    move-result-object v0

    .line 213
    .local v0, "bluetoothScanResult":Lcom/facebook/places/internal/BluetoothScanResult;
    if-eqz v0, :cond_0

    .line 214
    iget-object v2, p0, Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;->this$0:Lcom/facebook/places/internal/BleScannerImpl;

    invoke-static {v2}, Lcom/facebook/places/internal/BleScannerImpl;->access$300(Lcom/facebook/places/internal/BleScannerImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_0
    monitor-exit v3

    .line 220
    .end local v0    # "bluetoothScanResult":Lcom/facebook/places/internal/BluetoothScanResult;
    :goto_0
    return-void

    .line 216
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Exception in ble scan callback"

    invoke-static {v2, v1}, Lcom/facebook/places/internal/BleScannerImpl;->access$100(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
