.class final Lcom/uc/jcore/download/service/g;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/uc/jcore/download/service/f;


# direct methods
.method constructor <init>(Lcom/uc/jcore/download/service/f;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/jcore/download/service/g;->a:Lcom/uc/jcore/download/service/f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "action_start_download_service"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/jcore/download/service/g;->a:Lcom/uc/jcore/download/service/f;

    invoke-static {v0}, Lcom/uc/jcore/download/service/f;->a(Lcom/uc/jcore/download/service/f;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uc/jcore/download/service/g;->a:Lcom/uc/jcore/download/service/f;

    invoke-virtual {v0}, Lcom/uc/jcore/download/service/f;->b()V

    goto :goto_0
.end method
