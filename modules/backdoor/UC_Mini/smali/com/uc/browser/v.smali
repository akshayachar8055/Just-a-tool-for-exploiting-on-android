.class final Lcom/uc/browser/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/p;


# direct methods
.method constructor <init>(Lcom/uc/browser/p;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/v;->a:Lcom/uc/browser/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/uc/browser/v;->a:Lcom/uc/browser/p;

    invoke-static {v1}, Lcom/uc/browser/p;->e(Lcom/uc/browser/p;)Lcom/uc/browser/BrowserView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/browser/BrowserView;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/uc/browser/v;->a:Lcom/uc/browser/p;

    invoke-static {v1}, Lcom/uc/browser/p;->e(Lcom/uc/browser/p;)Lcom/uc/browser/BrowserView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/browser/BrowserView;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/uc/browser/v;->a:Lcom/uc/browser/p;

    invoke-static {v1}, Lcom/uc/browser/p;->e(Lcom/uc/browser/p;)Lcom/uc/browser/BrowserView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/browser/BrowserView;->k()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
