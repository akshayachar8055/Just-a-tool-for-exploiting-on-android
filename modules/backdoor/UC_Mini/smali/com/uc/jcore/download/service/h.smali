.class final Lcom/uc/jcore/download/service/h;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/uc/jcore/download/service/f;


# direct methods
.method constructor <init>(Lcom/uc/jcore/download/service/f;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/jcore/download/service/h;->a:Lcom/uc/jcore/download/service/f;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/jcore/download/service/h;->a:Lcom/uc/jcore/download/service/f;

    invoke-static {v0}, Lcom/uc/jcore/download/service/f;->b(Lcom/uc/jcore/download/service/f;)Lcom/uc/jcore/download/service/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/jcore/download/service/h;->a:Lcom/uc/jcore/download/service/f;

    invoke-static {v0}, Lcom/uc/jcore/download/service/f;->b(Lcom/uc/jcore/download/service/f;)Lcom/uc/jcore/download/service/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/uc/jcore/download/service/d;->a(Landroid/os/Message;)V

    :cond_0
    return-void
.end method
