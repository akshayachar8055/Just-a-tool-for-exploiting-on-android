.class final Lcom/uc/browser/eh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Ljava/lang/Runnable;

.field private synthetic b:Lcom/uc/browser/ee;


# direct methods
.method constructor <init>(Lcom/uc/browser/ee;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/eh;->b:Lcom/uc/browser/ee;

    iput-object p2, p0, Lcom/uc/browser/eh;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/eh;->b:Lcom/uc/browser/ee;

    invoke-static {v0}, Lcom/uc/browser/ee;->c(Lcom/uc/browser/ee;)Z

    iget-object v0, p0, Lcom/uc/browser/eh;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/eh;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/uc/browser/eh;->b:Lcom/uc/browser/ee;

    invoke-static {v0}, Lcom/uc/browser/ee;->e(Lcom/uc/browser/ee;)V

    invoke-static {}, Lcom/uc/browser/ej;->a()Lcom/uc/browser/ej;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/browser/ej;->d()V

    iget-object v0, p0, Lcom/uc/browser/eh;->b:Lcom/uc/browser/ee;

    invoke-static {v0}, Lcom/uc/browser/ee;->f(Lcom/uc/browser/ee;)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
