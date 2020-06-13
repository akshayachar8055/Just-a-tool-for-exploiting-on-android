.class final Lcom/uc/widget/r;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/uc/widget/q;


# direct methods
.method constructor <init>(Lcom/uc/widget/q;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/widget/r;->a:Lcom/uc/widget/q;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1001

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uc/widget/r;->a:Lcom/uc/widget/q;

    iget-boolean v0, v0, Lcom/uc/widget/q;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uc/widget/r;->a:Lcom/uc/widget/q;

    iget-object v1, p0, Lcom/uc/widget/r;->a:Lcom/uc/widget/q;

    iget v1, v1, Lcom/uc/widget/q;->e:I

    iget-object v2, p0, Lcom/uc/widget/r;->a:Lcom/uc/widget/q;

    iget v2, v2, Lcom/uc/widget/q;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/uc/widget/q;->g(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/widget/r;->a:Lcom/uc/widget/q;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/uc/widget/q;->h:Z

    :cond_0
    return-void
.end method
