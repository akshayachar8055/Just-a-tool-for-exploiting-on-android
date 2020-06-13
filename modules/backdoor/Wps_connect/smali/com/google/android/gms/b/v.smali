.class public Lcom/google/android/gms/b/v;
.super Lcom/google/android/gms/b/q;


# annotations
.annotation runtime Lcom/google/android/gms/b/gb;
.end annotation


# instance fields
.field private final d:Lcom/google/android/gms/b/de;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/b/gx;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/y;Lcom/google/android/gms/b/de;)V
    .locals 2

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/b/q;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/b/gx;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/y;)V

    iput-object p6, p0, Lcom/google/android/gms/b/v;->d:Lcom/google/android/gms/b/de;

    iget-object v0, p0, Lcom/google/android/gms/b/v;->d:Lcom/google/android/gms/b/de;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/v;->a(Lcom/google/android/gms/b/de;)V

    invoke-virtual {p0}, Lcom/google/android/gms/b/v;->a()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/v;->b(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tracking ad unit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/v;->b:Lcom/google/android/gms/b/s;

    invoke-virtual {v1}, Lcom/google/android/gms/b/s;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/b/hf;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected b(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/v;->d:Lcom/google/android/gms/b/de;

    const-string v1, "AFMA_updateActiveView"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/b/de;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method protected c()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/b/v;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/b/q;->c()V

    iget-object v0, p0, Lcom/google/android/gms/b/v;->d:Lcom/google/android/gms/b/de;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/v;->b(Lcom/google/android/gms/b/de;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/b/v;->c()V

    return-void
.end method

.method protected j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
