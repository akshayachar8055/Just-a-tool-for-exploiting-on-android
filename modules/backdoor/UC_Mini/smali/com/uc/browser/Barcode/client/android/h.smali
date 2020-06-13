.class final Lcom/uc/browser/Barcode/client/android/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/concurrent/ScheduledExecutorService;

.field private final b:Landroid/app/Activity;

.field private c:Ljava/util/concurrent/ScheduledFuture;

.field private final d:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/uc/browser/Barcode/client/android/i;

    invoke-direct {v0, v1}, Lcom/uc/browser/Barcode/client/android/i;-><init>(B)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/browser/Barcode/client/android/h;->a:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/browser/Barcode/client/android/h;->c:Ljava/util/concurrent/ScheduledFuture;

    new-instance v0, Lcom/uc/browser/Barcode/client/android/j;

    invoke-direct {v0, p0, v1}, Lcom/uc/browser/Barcode/client/android/j;-><init>(Lcom/uc/browser/Barcode/client/android/h;B)V

    iput-object v0, p0, Lcom/uc/browser/Barcode/client/android/h;->d:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/uc/browser/Barcode/client/android/h;->b:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/uc/browser/Barcode/client/android/h;->a()V

    return-void
.end method

.method static synthetic a(Lcom/uc/browser/Barcode/client/android/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/uc/browser/Barcode/client/android/h;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/Barcode/client/android/h;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/browser/Barcode/client/android/h;->c:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 5

    invoke-direct {p0}, Lcom/uc/browser/Barcode/client/android/h;->e()V

    iget-object v0, p0, Lcom/uc/browser/Barcode/client/android/h;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/uc/browser/Barcode/client/android/h;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/uc/browser/Barcode/client/android/g;

    iget-object v2, p0, Lcom/uc/browser/Barcode/client/android/h;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/uc/browser/Barcode/client/android/g;-><init>(Landroid/app/Activity;)V

    const-wide/16 v2, 0x12c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/browser/Barcode/client/android/h;->c:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-direct {p0}, Lcom/uc/browser/Barcode/client/android/h;->e()V

    iget-object v0, p0, Lcom/uc/browser/Barcode/client/android/h;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/uc/browser/Barcode/client/android/h;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lcom/uc/browser/Barcode/client/android/h;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/uc/browser/Barcode/client/android/h;->d:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/uc/browser/Barcode/client/android/h;->a()V

    return-void
.end method

.method final d()V
    .locals 1

    invoke-direct {p0}, Lcom/uc/browser/Barcode/client/android/h;->e()V

    iget-object v0, p0, Lcom/uc/browser/Barcode/client/android/h;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void
.end method
