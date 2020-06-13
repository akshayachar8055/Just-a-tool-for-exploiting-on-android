.class final Lcom/uc/base/push/c;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x5

    if-lt p2, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lorg/apache/http/NoHttpResponseException;

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Ljava/net/UnknownHostException;

    if-nez v2, :cond_0

    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/uc/base/push/UCMessagePushGCMService;->a()I

    move v0, v1

    goto :goto_0
.end method
