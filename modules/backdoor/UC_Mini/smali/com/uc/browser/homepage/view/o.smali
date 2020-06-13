.class final Lcom/uc/browser/homepage/view/o;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/uc/browser/homepage/view/ScrollTriggerView;


# direct methods
.method constructor <init>(Lcom/uc/browser/homepage/view/ScrollTriggerView;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/homepage/view/o;->a:Lcom/uc/browser/homepage/view/ScrollTriggerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uc/browser/homepage/view/o;->a:Lcom/uc/browser/homepage/view/ScrollTriggerView;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/ScrollTriggerView;->a(Lcom/uc/browser/homepage/view/ScrollTriggerView;)Lcom/uc/browser/homepage/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/homepage/view/o;->a:Lcom/uc/browser/homepage/view/ScrollTriggerView;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/ScrollTriggerView;->a(Lcom/uc/browser/homepage/view/ScrollTriggerView;)Lcom/uc/browser/homepage/q;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/browser/homepage/view/o;->a:Lcom/uc/browser/homepage/view/ScrollTriggerView;

    invoke-interface {v0, v1}, Lcom/uc/browser/homepage/q;->a(Lcom/uc/browser/homepage/view/ScrollTriggerView;)V

    :cond_0
    return-void
.end method
