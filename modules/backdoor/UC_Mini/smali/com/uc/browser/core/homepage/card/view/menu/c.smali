.class final Lcom/uc/browser/core/homepage/card/view/menu/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/core/homepage/card/view/menu/b;


# direct methods
.method constructor <init>(Lcom/uc/browser/core/homepage/card/view/menu/b;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/core/homepage/card/view/menu/c;->a:Lcom/uc/browser/core/homepage/card/view/menu/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/menu/c;->a:Lcom/uc/browser/core/homepage/card/view/menu/b;

    invoke-static {v0}, Lcom/uc/browser/core/homepage/card/view/menu/b;->a(Lcom/uc/browser/core/homepage/card/view/menu/b;)Z

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/menu/c;->a:Lcom/uc/browser/core/homepage/card/view/menu/b;

    invoke-static {v0}, Lcom/uc/browser/core/homepage/card/view/menu/b;->b(Lcom/uc/browser/core/homepage/card/view/menu/b;)V

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
