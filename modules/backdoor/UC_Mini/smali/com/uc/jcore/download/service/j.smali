.class final Lcom/uc/jcore/download/service/j;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/uc/jcore/download/service/RemoteDownloadService;


# direct methods
.method constructor <init>(Lcom/uc/jcore/download/service/RemoteDownloadService;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/jcore/download/service/j;->a:Lcom/uc/jcore/download/service/RemoteDownloadService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/uc/jcore/download/service/j;->a:Lcom/uc/jcore/download/service/RemoteDownloadService;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v0, v1}, Lcom/uc/jcore/download/service/RemoteDownloadService;->a(Lcom/uc/jcore/download/service/RemoteDownloadService;Landroid/os/Messenger;)Landroid/os/Messenger;

    const/4 v0, 0x0

    const/16 v1, 0x65

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/jcore/download/service/j;->a:Lcom/uc/jcore/download/service/RemoteDownloadService;

    invoke-virtual {v1, v0}, Lcom/uc/jcore/download/service/RemoteDownloadService;->b(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/uc/jcore/download/service/j;->a:Lcom/uc/jcore/download/service/RemoteDownloadService;

    invoke-static {v0}, Lcom/uc/jcore/download/service/RemoteDownloadService;->a(Lcom/uc/jcore/download/service/RemoteDownloadService;)Lcom/uc/jcore/download/service/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/jcore/download/service/j;->a:Lcom/uc/jcore/download/service/RemoteDownloadService;

    invoke-static {v0}, Lcom/uc/jcore/download/service/RemoteDownloadService;->a(Lcom/uc/jcore/download/service/RemoteDownloadService;)Lcom/uc/jcore/download/service/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uc/jcore/download/service/k;->a(Landroid/os/Message;)V

    goto :goto_0
.end method
