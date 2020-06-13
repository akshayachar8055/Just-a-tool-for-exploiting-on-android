.class final Lcom/uc/browser/bgprocess/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcom/uc/browser/bgprocess/e;


# direct methods
.method constructor <init>(Lcom/uc/browser/bgprocess/e;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/bgprocess/g;->a:Lcom/uc/browser/bgprocess/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/bgprocess/g;->a:Lcom/uc/browser/bgprocess/e;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/uc/browser/bgprocess/e;->a(Lcom/uc/browser/bgprocess/e;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/uc/browser/bgprocess/g;->a:Lcom/uc/browser/bgprocess/e;

    invoke-static {v0}, Lcom/uc/browser/bgprocess/e;->b(Lcom/uc/browser/bgprocess/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/bgprocess/g;->a:Lcom/uc/browser/bgprocess/e;

    invoke-static {v0}, Lcom/uc/browser/bgprocess/e;->b(Lcom/uc/browser/bgprocess/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/browser/bgprocess/c;

    invoke-interface {v0}, Lcom/uc/browser/bgprocess/c;->a()V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/uc/browser/bgprocess/g;->a:Lcom/uc/browser/bgprocess/e;

    invoke-virtual {v1, v0}, Lcom/uc/browser/bgprocess/e;->a_(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/uc/browser/bgprocess/g;->a:Lcom/uc/browser/bgprocess/e;

    invoke-static {v0}, Lcom/uc/browser/bgprocess/e;->c(Lcom/uc/browser/bgprocess/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uc/browser/bgprocess/g;->a:Lcom/uc/browser/bgprocess/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uc/browser/bgprocess/e;->a(Lcom/uc/browser/bgprocess/e;Z)Z

    :cond_1
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/bgprocess/g;->a:Lcom/uc/browser/bgprocess/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uc/browser/bgprocess/e;->a(Lcom/uc/browser/bgprocess/e;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method
