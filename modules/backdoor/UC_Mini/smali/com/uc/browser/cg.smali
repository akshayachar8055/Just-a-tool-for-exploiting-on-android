.class final Lcom/uc/browser/cg;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    check-cast v0, Landroid/location/LocationManager;

    const/4 v2, 0x1

    aget-object v5, v1, v2

    check-cast v5, Lcom/uc/browser/ci;

    const/4 v2, 0x2

    aget-object v2, v1, v2

    move-object v6, v2

    check-cast v6, Lcom/uc/browser/ch;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lcom/uc/browser/ci;->a(J)V

    invoke-virtual {v6, v2, v3}, Lcom/uc/browser/ch;->a(J)V

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    invoke-virtual {v6}, Lcom/uc/browser/ch;->start()V

    :cond_0
    return-void
.end method
