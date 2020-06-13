.class final Lcom/uc/browser/core/homepage/card/view/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/core/homepage/card/view/b;

.field private synthetic b:Lcom/uc/browser/core/homepage/card/view/CardFrame;


# direct methods
.method constructor <init>(Lcom/uc/browser/core/homepage/card/view/CardFrame;Lcom/uc/browser/core/homepage/card/view/b;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/core/homepage/card/view/a;->b:Lcom/uc/browser/core/homepage/card/view/CardFrame;

    iput-object p2, p0, Lcom/uc/browser/core/homepage/card/view/a;->a:Lcom/uc/browser/core/homepage/card/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/a;->a:Lcom/uc/browser/core/homepage/card/view/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/a;->a:Lcom/uc/browser/core/homepage/card/view/b;

    invoke-interface {v0}, Lcom/uc/browser/core/homepage/card/view/b;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/a;->b:Lcom/uc/browser/core/homepage/card/view/CardFrame;

    invoke-virtual {v0}, Lcom/uc/browser/core/homepage/card/view/CardFrame;->g()V

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
