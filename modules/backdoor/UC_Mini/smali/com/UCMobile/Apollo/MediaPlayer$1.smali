.class final Lcom/UCMobile/Apollo/MediaPlayer$1;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/UCMobile/Apollo/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/UCMobile/Apollo/MediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/UCMobile/Apollo/MediaPlayer$1;->a:Lcom/UCMobile/Apollo/MediaPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "noConnectivity"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer$1;->a:Lcom/UCMobile/Apollo/MediaPlayer;

    const-string v1, "rw.global.connectivity_network_type"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lcom/UCMobile/Apollo/MediaPlayer;->setOption(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer$1;->a:Lcom/UCMobile/Apollo/MediaPlayer;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v1, v0}, Lcom/UCMobile/Apollo/MediaPlayer;->a(Lcom/UCMobile/Apollo/MediaPlayer;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer$1;->a:Lcom/UCMobile/Apollo/MediaPlayer;

    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer$1;->a:Lcom/UCMobile/Apollo/MediaPlayer;

    invoke-static {v1}, Lcom/UCMobile/Apollo/MediaPlayer;->n(Lcom/UCMobile/Apollo/MediaPlayer;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/UCMobile/Apollo/MediaPlayer;->a(Lcom/UCMobile/Apollo/MediaPlayer;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer$1;->a:Lcom/UCMobile/Apollo/MediaPlayer;

    invoke-static {v0}, Lcom/UCMobile/Apollo/MediaPlayer;->o(Lcom/UCMobile/Apollo/MediaPlayer;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer$1;->a:Lcom/UCMobile/Apollo/MediaPlayer;

    const-string v1, "rw.global.connectivity_network_type"

    iget-object v2, p0, Lcom/UCMobile/Apollo/MediaPlayer$1;->a:Lcom/UCMobile/Apollo/MediaPlayer;

    invoke-static {v2}, Lcom/UCMobile/Apollo/MediaPlayer;->o(Lcom/UCMobile/Apollo/MediaPlayer;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/UCMobile/Apollo/MediaPlayer;->setOption(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
