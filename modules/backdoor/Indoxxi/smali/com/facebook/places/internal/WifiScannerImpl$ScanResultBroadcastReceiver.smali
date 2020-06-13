.class Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/places/internal/WifiScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanResultBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/places/internal/WifiScannerImpl;


# direct methods
.method private constructor <init>(Lcom/facebook/places/internal/WifiScannerImpl;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;->this$0:Lcom/facebook/places/internal/WifiScannerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/places/internal/WifiScannerImpl;Lcom/facebook/places/internal/WifiScannerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/places/internal/WifiScannerImpl;
    .param p2, "x1"    # Lcom/facebook/places/internal/WifiScannerImpl$1;

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;-><init>(Lcom/facebook/places/internal/WifiScannerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 251
    if-eqz p2, :cond_0

    .line 252
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;->this$0:Lcom/facebook/places/internal/WifiScannerImpl;

    invoke-static {v0}, Lcom/facebook/places/internal/WifiScannerImpl;->access$100(Lcom/facebook/places/internal/WifiScannerImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;->this$0:Lcom/facebook/places/internal/WifiScannerImpl;

    invoke-static {v0}, Lcom/facebook/places/internal/WifiScannerImpl;->access$100(Lcom/facebook/places/internal/WifiScannerImpl;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 255
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    iget-object v0, p0, Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;->this$0:Lcom/facebook/places/internal/WifiScannerImpl;

    invoke-static {v0}, Lcom/facebook/places/internal/WifiScannerImpl;->access$200(Lcom/facebook/places/internal/WifiScannerImpl;)V

    .line 259
    :cond_0
    return-void

    .line 255
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
