.class final Lcom/uc/browser/homepage/view/r;
.super Landroid/view/ViewGroup;


# instance fields
.field private synthetic a:Lcom/uc/browser/homepage/view/q;


# direct methods
.method constructor <init>(Lcom/uc/browser/homepage/view/q;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/homepage/view/r;->a:Lcom/uc/browser/homepage/view/q;

    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/homepage/view/r;->a:Lcom/uc/browser/homepage/view/q;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/q;->c(Lcom/uc/browser/homepage/view/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final onLayout(ZIIII)V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/homepage/view/r;->a:Lcom/uc/browser/homepage/view/q;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/q;->b(Lcom/uc/browser/homepage/view/q;)V

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/homepage/view/r;->a:Lcom/uc/browser/homepage/view/q;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/q;->a(Lcom/uc/browser/homepage/view/q;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/homepage/view/r;->a:Lcom/uc/browser/homepage/view/q;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/q;->a(Lcom/uc/browser/homepage/view/q;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/uc/browser/homepage/view/r;->measureChild(Landroid/view/View;II)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void
.end method
