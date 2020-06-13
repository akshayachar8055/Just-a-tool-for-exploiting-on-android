.class final Lcom/uc/browser/init/d;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/uc/browser/init/ViewInitialLoading;


# direct methods
.method constructor <init>(Lcom/uc/browser/init/ViewInitialLoading;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/init/d;->a:Lcom/uc/browser/init/ViewInitialLoading;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/uc/browser/init/d;->a:Lcom/uc/browser/init/ViewInitialLoading;

    invoke-virtual {v0}, Lcom/uc/browser/init/ViewInitialLoading;->c()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
