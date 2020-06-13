.class final Lcom/uc/browser/winmgr/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/uc/browser/winmgr/MultiWindowListLayout;


# direct methods
.method constructor <init>(Lcom/uc/browser/winmgr/MultiWindowListLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/winmgr/d;->a:Lcom/uc/browser/winmgr/MultiWindowListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/uc/browser/winmgr/d;->a:Lcom/uc/browser/winmgr/MultiWindowListLayout;

    iget-object v0, v0, Lcom/uc/browser/winmgr/MultiWindowListLayout;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/uc/browser/winmgr/d;->a:Lcom/uc/browser/winmgr/MultiWindowListLayout;

    invoke-virtual {v0}, Lcom/uc/browser/winmgr/MultiWindowListLayout;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/winmgr/d;->a:Lcom/uc/browser/winmgr/MultiWindowListLayout;

    invoke-virtual {v0}, Lcom/uc/browser/winmgr/MultiWindowListLayout;->postInvalidate()V

    iget-object v0, p0, Lcom/uc/browser/winmgr/d;->a:Lcom/uc/browser/winmgr/MultiWindowListLayout;

    iget-object v0, v0, Lcom/uc/browser/winmgr/MultiWindowListLayout;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/uc/browser/winmgr/d;->a:Lcom/uc/browser/winmgr/MultiWindowListLayout;

    invoke-static {v1}, Lcom/uc/browser/winmgr/MultiWindowListLayout;->a(Lcom/uc/browser/winmgr/MultiWindowListLayout;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
