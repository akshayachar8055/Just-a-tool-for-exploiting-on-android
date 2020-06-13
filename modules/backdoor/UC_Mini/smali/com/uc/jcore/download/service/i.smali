.class final Lcom/uc/jcore/download/service/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcom/uc/jcore/download/service/f;


# direct methods
.method constructor <init>(Lcom/uc/jcore/download/service/f;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/jcore/download/service/i;->a:Lcom/uc/jcore/download/service/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/uc/jcore/download/service/i;->a:Lcom/uc/jcore/download/service/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/uc/jcore/download/service/f;->a(Lcom/uc/jcore/download/service/f;I)I

    iget-object v0, p0, Lcom/uc/jcore/download/service/i;->a:Lcom/uc/jcore/download/service/f;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/uc/jcore/download/service/f;->a(Lcom/uc/jcore/download/service/f;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/uc/jcore/download/service/i;->a:Lcom/uc/jcore/download/service/f;

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/uc/jcore/download/service/i;->a:Lcom/uc/jcore/download/service/f;

    invoke-static {v2}, Lcom/uc/jcore/download/service/f;->c(Lcom/uc/jcore/download/service/f;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-static {v0, v1}, Lcom/uc/jcore/download/service/f;->b(Lcom/uc/jcore/download/service/f;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/uc/jcore/download/service/i;->a:Lcom/uc/jcore/download/service/f;

    invoke-static {v0}, Lcom/uc/jcore/download/service/f;->d(Lcom/uc/jcore/download/service/f;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/uc/jcore/download/service/i;->a:Lcom/uc/jcore/download/service/f;

    invoke-static {v0, v1}, Lcom/uc/jcore/download/service/f;->a(Lcom/uc/jcore/download/service/f;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/uc/jcore/download/service/i;->a:Lcom/uc/jcore/download/service/f;

    invoke-static {v0, v1}, Lcom/uc/jcore/download/service/f;->b(Lcom/uc/jcore/download/service/f;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/uc/jcore/download/service/i;->a:Lcom/uc/jcore/download/service/f;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/uc/jcore/download/service/f;->a(Lcom/uc/jcore/download/service/f;I)I

    return-void
.end method
