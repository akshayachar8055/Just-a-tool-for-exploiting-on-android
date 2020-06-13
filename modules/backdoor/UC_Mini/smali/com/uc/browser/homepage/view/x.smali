.class final Lcom/uc/browser/homepage/view/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/uc/browser/homepage/view/WidgetCenter;


# direct methods
.method constructor <init>(Lcom/uc/browser/homepage/view/WidgetCenter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/homepage/view/x;->b:Lcom/uc/browser/homepage/view/WidgetCenter;

    iput-boolean p2, p0, Lcom/uc/browser/homepage/view/x;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/uc/browser/homepage/view/x;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uc/browser/homepage/view/x;->b:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/WidgetCenter;->j(Lcom/uc/browser/homepage/view/WidgetCenter;)Lcom/uc/browser/homepage/view/FolderPanel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/uc/browser/homepage/view/FolderPanel;->setVisibility(I)V

    iget-object v0, p0, Lcom/uc/browser/homepage/view/x;->b:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/WidgetCenter;->b(Lcom/uc/browser/homepage/view/WidgetCenter;)B

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uc/browser/homepage/view/x;->b:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-static {v0, v4}, Lcom/uc/browser/homepage/view/WidgetCenter;->a(Lcom/uc/browser/homepage/view/WidgetCenter;B)B

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/uc/browser/homepage/view/x;->b:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/WidgetCenter;->b(Lcom/uc/browser/homepage/view/WidgetCenter;)B

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/uc/browser/homepage/view/x;->b:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-static {v0, v5}, Lcom/uc/browser/homepage/view/WidgetCenter;->a(Lcom/uc/browser/homepage/view/WidgetCenter;B)B

    iget-object v0, p0, Lcom/uc/browser/homepage/view/x;->b:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/WidgetCenter;->j(Lcom/uc/browser/homepage/view/WidgetCenter;)Lcom/uc/browser/homepage/view/FolderPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/browser/homepage/view/FolderPanel;->g()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/uc/browser/homepage/view/x;->b:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/WidgetCenter;->j(Lcom/uc/browser/homepage/view/WidgetCenter;)Lcom/uc/browser/homepage/view/FolderPanel;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/uc/browser/homepage/view/FolderPanel;->setVisibility(I)V

    iget-object v0, p0, Lcom/uc/browser/homepage/view/x;->b:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/WidgetCenter;->b(Lcom/uc/browser/homepage/view/WidgetCenter;)B

    move-result v0

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/uc/browser/homepage/view/x;->b:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-static {v0, v2}, Lcom/uc/browser/homepage/view/WidgetCenter;->a(Lcom/uc/browser/homepage/view/WidgetCenter;B)B

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/uc/browser/homepage/view/x;->b:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/WidgetCenter;->j(Lcom/uc/browser/homepage/view/WidgetCenter;)Lcom/uc/browser/homepage/view/FolderPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/browser/homepage/view/FolderPanel;->i()V

    iget-object v0, p0, Lcom/uc/browser/homepage/view/x;->b:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/WidgetCenter;->k(Lcom/uc/browser/homepage/view/WidgetCenter;)Lcom/uc/browser/homepage/view/HomeWidget;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/uc/browser/homepage/view/x;->b:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/WidgetCenter;->b(Lcom/uc/browser/homepage/view/WidgetCenter;)B

    move-result v0

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/uc/browser/homepage/view/x;->b:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-virtual {v0, v3}, Lcom/uc/browser/homepage/view/WidgetCenter;->setState(B)V

    goto :goto_1
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
