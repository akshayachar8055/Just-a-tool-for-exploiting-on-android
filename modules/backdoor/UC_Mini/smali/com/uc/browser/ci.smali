.class final Lcom/uc/browser/ci;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private a:J

.field private b:Z

.field private c:Landroid/location/LocationManager;

.field private d:Lcom/uc/browser/ch;

.field private e:I

.field private synthetic f:Lcom/uc/browser/cf;


# direct methods
.method public constructor <init>(Lcom/uc/browser/cf;Landroid/location/LocationManager;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/uc/browser/ci;->f:Lcom/uc/browser/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/uc/browser/ci;->a:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/browser/ci;->b:Z

    iput-object v2, p0, Lcom/uc/browser/ci;->c:Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/uc/browser/ci;->d:Lcom/uc/browser/ch;

    iput-object p2, p0, Lcom/uc/browser/ci;->c:Landroid/location/LocationManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uc/browser/ci;->a:J

    const/16 v0, 0x7530

    iput v0, p0, Lcom/uc/browser/ci;->e:I

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/uc/browser/ci;->a:J

    return-void
.end method

.method public final a(Lcom/uc/browser/ch;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/ci;->d:Lcom/uc/browser/ch;

    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 10

    const-wide v8, 0x4115f90000000000L    # 360000.0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/uc/browser/ci;->d:Lcom/uc/browser/ch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/ci;->d:Lcom/uc/browser/ch;

    invoke-virtual {v0}, Lcom/uc/browser/ch;->a()V

    :cond_0
    iget-boolean v0, p0, Lcom/uc/browser/ci;->b:Z

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/uc/browser/ci;->a:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/uc/browser/ci;->e:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    if-eqz p1, :cond_4

    const-string v3, "-1"

    const-string v1, "0"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v4, v8

    double-to-int v0, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    mul-double/2addr v4, v8

    double-to-int v2, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_2

    :cond_1
    move-object v0, v1

    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v7, :cond_5

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/uc/browser/ci;->f:Lcom/uc/browser/cf;

    invoke-static {v2}, Lcom/uc/browser/cf;->b(Lcom/uc/browser/cf;)[Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    aget-object v2, v5, v2

    aget-object v3, v5, v7

    const/4 v4, 0x2

    aget-object v4, v5, v4

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/uc/browser/cf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iput-boolean v7, p0, Lcom/uc/browser/ci;->b:Z

    iget-object v0, p0, Lcom/uc/browser/ci;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void

    :cond_5
    move-object v1, v2

    goto :goto_0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
