.class public Lcom/google/android/gms/b/x;
.super Lcom/google/android/gms/b/q;


# annotations
.annotation runtime Lcom/google/android/gms/b/gb;
.end annotation


# instance fields
.field private d:Lcom/google/android/gms/b/dd$d;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/b/gx;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/y;Lcom/google/android/gms/b/dd;)V
    .locals 3

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/b/q;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/b/gx;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/y;)V

    invoke-virtual {p6}, Lcom/google/android/gms/b/dd;->b()Lcom/google/android/gms/b/dd$d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/x;->d:Lcom/google/android/gms/b/dd$d;

    :try_start_0
    invoke-interface {p5}, Lcom/google/android/gms/b/y;->c()Lcom/google/android/gms/b/y;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/b/y;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/x;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/x;->d:Lcom/google/android/gms/b/dd$d;

    new-instance v2, Lcom/google/android/gms/b/x$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/b/x$1;-><init>(Lcom/google/android/gms/b/x;Lorg/json/JSONObject;)V

    new-instance v0, Lcom/google/android/gms/b/x$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/x$2;-><init>(Lcom/google/android/gms/b/x;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/b/dd$d;->a(Lcom/google/android/gms/b/ib$c;Lcom/google/android/gms/b/ib$a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/b/x;->d:Lcom/google/android/gms/b/dd$d;

    new-instance v1, Lcom/google/android/gms/b/x$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/b/x$3;-><init>(Lcom/google/android/gms/b/x;)V

    new-instance v2, Lcom/google/android/gms/b/x$4;

    invoke-direct {v2, p0}, Lcom/google/android/gms/b/x$4;-><init>(Lcom/google/android/gms/b/x;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/b/dd$d;->a(Lcom/google/android/gms/b/ib$c;Lcom/google/android/gms/b/ib$a;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tracking ad unit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/x;->b:Lcom/google/android/gms/b/s;

    invoke-virtual {v1}, Lcom/google/android/gms/b/s;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/b/hf;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failure while processing active view data."

    invoke-static {v1, v0}, Lcom/google/android/gms/b/hf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/b/x;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/b/x;->e:Z

    return p1
.end method


# virtual methods
.method protected b(Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/b/x;->d:Lcom/google/android/gms/b/dd$d;

    new-instance v1, Lcom/google/android/gms/b/x$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/b/x$5;-><init>(Lcom/google/android/gms/b/x;Lorg/json/JSONObject;)V

    new-instance v2, Lcom/google/android/gms/b/ib$b;

    invoke-direct {v2}, Lcom/google/android/gms/b/ib$b;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/b/dd$d;->a(Lcom/google/android/gms/b/ib$c;Lcom/google/android/gms/b/ib$a;)V

    return-void
.end method

.method protected c()V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/b/x;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/b/q;->c()V

    iget-object v0, p0, Lcom/google/android/gms/b/x;->d:Lcom/google/android/gms/b/dd$d;

    new-instance v2, Lcom/google/android/gms/b/x$6;

    invoke-direct {v2, p0}, Lcom/google/android/gms/b/x$6;-><init>(Lcom/google/android/gms/b/x;)V

    new-instance v3, Lcom/google/android/gms/b/ib$b;

    invoke-direct {v3}, Lcom/google/android/gms/b/ib$b;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/b/dd$d;->a(Lcom/google/android/gms/b/ib$c;Lcom/google/android/gms/b/ib$a;)V

    iget-object v0, p0, Lcom/google/android/gms/b/x;->d:Lcom/google/android/gms/b/dd$d;

    invoke-virtual {v0}, Lcom/google/android/gms/b/dd$d;->a()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/b/x;->e:Z

    return v0
.end method
