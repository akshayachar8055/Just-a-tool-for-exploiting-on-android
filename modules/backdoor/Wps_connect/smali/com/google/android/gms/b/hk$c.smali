.class public Lcom/google/android/gms/b/hk$c;
.super Lcom/google/android/gms/b/hk$b;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/b/hk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/b/hk$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/http/SslError;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/android/gms/b/ii;)Landroid/webkit/WebChromeClient;
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/iq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/b/iq;-><init>(Lcom/google/android/gms/b/ii;)V

    return-object v0
.end method
