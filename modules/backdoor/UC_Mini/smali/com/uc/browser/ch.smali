.class final Lcom/uc/browser/ch;
.super Ljava/lang/Thread;


# instance fields
.field private a:J

.field private b:Landroid/location/LocationManager;

.field private c:Z

.field private d:Lcom/uc/browser/ci;

.field private e:Ljava/lang/String;

.field private f:I

.field private synthetic g:Lcom/uc/browser/cf;


# direct methods
.method public constructor <init>(Lcom/uc/browser/cf;Landroid/location/LocationManager;Lcom/uc/browser/ci;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/uc/browser/ch;->g:Lcom/uc/browser/cf;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/uc/browser/ch;->a:J

    iput-object v2, p0, Lcom/uc/browser/ch;->b:Landroid/location/LocationManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/browser/ch;->c:Z

    iput-object v2, p0, Lcom/uc/browser/ch;->d:Lcom/uc/browser/ci;

    iput-object v2, p0, Lcom/uc/browser/ch;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/uc/browser/ch;->b:Landroid/location/LocationManager;

    iput-object p3, p0, Lcom/uc/browser/ch;->d:Lcom/uc/browser/ci;

    iput-object p4, p0, Lcom/uc/browser/ch;->e:Ljava/lang/String;

    const/16 v0, 0x7530

    iput v0, p0, Lcom/uc/browser/ch;->f:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/browser/ch;->c:Z

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/uc/browser/ch;->a:J

    return-void
.end method

.method public final run()V
    .locals 8

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/uc/browser/ch;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    const-wide/16 v0, 0xc8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/uc/browser/ch;->a:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/uc/browser/ch;->f:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/ch;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/uc/browser/ch;->d:Lcom/uc/browser/ci;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const-string v0, "gps"

    iget-object v1, p0, Lcom/uc/browser/ch;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uc/browser/ch;->b:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/uc/browser/ci;

    iget-object v1, p0, Lcom/uc/browser/ch;->g:Lcom/uc/browser/cf;

    iget-object v2, p0, Lcom/uc/browser/ch;->b:Landroid/location/LocationManager;

    invoke-direct {v0, v1, v2}, Lcom/uc/browser/ci;-><init>(Lcom/uc/browser/cf;Landroid/location/LocationManager;)V

    new-instance v1, Lcom/uc/browser/ch;

    iget-object v2, p0, Lcom/uc/browser/ch;->g:Lcom/uc/browser/cf;

    iget-object v3, p0, Lcom/uc/browser/ch;->b:Landroid/location/LocationManager;

    const-string v4, "network"

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/uc/browser/ch;-><init>(Lcom/uc/browser/cf;Landroid/location/LocationManager;Lcom/uc/browser/ci;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/uc/browser/ci;->a(Lcom/uc/browser/ch;)V

    iget-object v2, p0, Lcom/uc/browser/ch;->g:Lcom/uc/browser/cf;

    invoke-static {v2}, Lcom/uc/browser/cf;->a(Lcom/uc/browser/cf;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/uc/browser/ch;->b:Landroid/location/LocationManager;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const/4 v0, 0x3

    const-string v1, "network"

    aput-object v1, v5, v0

    invoke-static {v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
