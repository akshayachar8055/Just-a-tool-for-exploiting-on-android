.class final Lcom/uc/browser/cc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/uc/browser/ControlBarLayout;


# direct methods
.method constructor <init>(Lcom/uc/browser/ControlBarLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/cc;->a:Lcom/uc/browser/ControlBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/uc/browser/cc;->a:Lcom/uc/browser/ControlBarLayout;

    invoke-static {v0}, Lcom/uc/browser/ControlBarLayout;->a(Lcom/uc/browser/ControlBarLayout;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget-object v0, p0, Lcom/uc/browser/cc;->a:Lcom/uc/browser/ControlBarLayout;

    invoke-static {v0}, Lcom/uc/browser/ControlBarLayout;->a(Lcom/uc/browser/ControlBarLayout;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iget-object v1, p0, Lcom/uc/browser/cc;->a:Lcom/uc/browser/ControlBarLayout;

    iget-object v2, p0, Lcom/uc/browser/cc;->a:Lcom/uc/browser/ControlBarLayout;

    invoke-virtual {v2}, Lcom/uc/browser/ControlBarLayout;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/uc/browser/ControlBarLayout;->scrollTo(II)V

    iget-object v0, p0, Lcom/uc/browser/cc;->a:Lcom/uc/browser/ControlBarLayout;

    invoke-static {v0}, Lcom/uc/browser/ControlBarLayout;->a(Lcom/uc/browser/ControlBarLayout;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/cc;->a:Lcom/uc/browser/ControlBarLayout;

    invoke-virtual {v0, p0}, Lcom/uc/browser/ControlBarLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
