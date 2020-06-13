.class final Lcom/uc/browser/homepage/view/p;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/uc/browser/homepage/view/ScrollTriggerView;


# direct methods
.method constructor <init>(Lcom/uc/browser/homepage/view/ScrollTriggerView;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/homepage/view/p;->a:Lcom/uc/browser/homepage/view/ScrollTriggerView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/homepage/view/p;->a:Lcom/uc/browser/homepage/view/ScrollTriggerView;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/ScrollTriggerView;->b(Lcom/uc/browser/homepage/view/ScrollTriggerView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
