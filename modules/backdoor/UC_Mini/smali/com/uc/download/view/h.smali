.class final Lcom/uc/download/view/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcom/uc/download/view/DownloadEditLayout;


# direct methods
.method constructor <init>(Lcom/uc/download/view/DownloadEditLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/download/view/h;->a:Lcom/uc/download/view/DownloadEditLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/download/view/h;->a:Lcom/uc/download/view/DownloadEditLayout;

    invoke-static {v0}, Lcom/uc/download/view/DownloadEditLayout;->e(Lcom/uc/download/view/DownloadEditLayout;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

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
