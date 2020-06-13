.class final Lcom/uc/browser/upload/d;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/uc/browser/upload/c;


# direct methods
.method constructor <init>(Lcom/uc/browser/upload/c;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/upload/d;->a:Lcom/uc/browser/upload/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/uc/browser/upload/d;->a:Lcom/uc/browser/upload/c;

    invoke-static {v0}, Lcom/uc/browser/upload/c;->a(Lcom/uc/browser/upload/c;)V

    iget-object v0, p0, Lcom/uc/browser/upload/d;->a:Lcom/uc/browser/upload/c;

    invoke-static {v0}, Lcom/uc/browser/upload/c;->b(Lcom/uc/browser/upload/c;)F

    iget-object v0, p0, Lcom/uc/browser/upload/d;->a:Lcom/uc/browser/upload/c;

    invoke-static {v0}, Lcom/uc/browser/upload/c;->c(Lcom/uc/browser/upload/c;)Lcom/uc/browser/upload/f;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uc/browser/upload/d;->a:Lcom/uc/browser/upload/c;

    invoke-static {v0}, Lcom/uc/browser/upload/c;->c(Lcom/uc/browser/upload/c;)Lcom/uc/browser/upload/f;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/browser/upload/d;->a:Lcom/uc/browser/upload/c;

    invoke-static {v1}, Lcom/uc/browser/upload/c;->d(Lcom/uc/browser/upload/c;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/uc/browser/upload/f;->a(I)V

    :cond_1
    iget-object v0, p0, Lcom/uc/browser/upload/d;->a:Lcom/uc/browser/upload/c;

    invoke-static {v0}, Lcom/uc/browser/upload/c;->e(Lcom/uc/browser/upload/c;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/uc/browser/upload/d;->a:Lcom/uc/browser/upload/c;

    iget-object v1, p0, Lcom/uc/browser/upload/d;->a:Lcom/uc/browser/upload/c;

    invoke-static {v1}, Lcom/uc/browser/upload/c;->d(Lcom/uc/browser/upload/c;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/uc/browser/upload/c;->a(Lcom/uc/browser/upload/c;I)I

    iget-object v0, p0, Lcom/uc/browser/upload/d;->a:Lcom/uc/browser/upload/c;

    invoke-static {v0}, Lcom/uc/browser/upload/c;->f(Lcom/uc/browser/upload/c;)I

    move-result v0

    iget-object v1, p0, Lcom/uc/browser/upload/d;->a:Lcom/uc/browser/upload/c;

    invoke-static {v1}, Lcom/uc/browser/upload/c;->d(Lcom/uc/browser/upload/c;)I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/uc/browser/upload/d;->a:Lcom/uc/browser/upload/c;

    invoke-static {v1}, Lcom/uc/browser/upload/c;->c(Lcom/uc/browser/upload/c;)Lcom/uc/browser/upload/f;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/uc/browser/upload/d;->a:Lcom/uc/browser/upload/c;

    invoke-static {v1}, Lcom/uc/browser/upload/c;->c(Lcom/uc/browser/upload/c;)Lcom/uc/browser/upload/f;

    move-result-object v1

    iget-object v2, p0, Lcom/uc/browser/upload/d;->a:Lcom/uc/browser/upload/c;

    invoke-static {v2}, Lcom/uc/browser/upload/c;->d(Lcom/uc/browser/upload/c;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/uc/browser/upload/f;->a(I)V

    :cond_2
    iget-object v1, p0, Lcom/uc/browser/upload/d;->a:Lcom/uc/browser/upload/c;

    invoke-static {v1}, Lcom/uc/browser/upload/c;->e(Lcom/uc/browser/upload/c;)Landroid/os/Handler;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/uc/browser/upload/d;->a:Lcom/uc/browser/upload/c;

    invoke-static {v0}, Lcom/uc/browser/upload/c;->c(Lcom/uc/browser/upload/c;)Lcom/uc/browser/upload/f;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
