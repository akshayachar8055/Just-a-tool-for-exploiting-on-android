.class Landroid/support/design/widget/f$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/f;->a(Landroid/support/design/widget/g$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/support/design/widget/g$a;

.field final synthetic c:Landroid/support/design/widget/f;

.field private d:Z


# direct methods
.method constructor <init>(Landroid/support/design/widget/f;ZLandroid/support/design/widget/g$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/f$1;->c:Landroid/support/design/widget/f;

    iput-boolean p2, p0, Landroid/support/design/widget/f$1;->a:Z

    iput-object p3, p0, Landroid/support/design/widget/f$1;->b:Landroid/support/design/widget/g$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/f$1;->c:Landroid/support/design/widget/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/design/widget/f;->a(Landroid/support/design/widget/f;Z)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/f$1;->d:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/f$1;->c:Landroid/support/design/widget/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/design/widget/f;->a(Landroid/support/design/widget/f;Z)Z

    iget-boolean v0, p0, Landroid/support/design/widget/f$1;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/f$1;->c:Landroid/support/design/widget/f;

    iget-object v0, v0, Landroid/support/design/widget/f;->k:Landroid/support/design/widget/y;

    const/16 v1, 0x8

    iget-boolean v2, p0, Landroid/support/design/widget/f$1;->a:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/y;->a(IZ)V

    iget-object v0, p0, Landroid/support/design/widget/f$1;->b:Landroid/support/design/widget/g$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/f$1;->b:Landroid/support/design/widget/g$a;

    invoke-interface {v0}, Landroid/support/design/widget/g$a;->b()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/design/widget/f$1;->c:Landroid/support/design/widget/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/design/widget/f;->a(Landroid/support/design/widget/f;Z)Z

    iput-boolean v2, p0, Landroid/support/design/widget/f$1;->d:Z

    iget-object v0, p0, Landroid/support/design/widget/f$1;->c:Landroid/support/design/widget/f;

    iget-object v0, v0, Landroid/support/design/widget/f;->k:Landroid/support/design/widget/y;

    iget-boolean v1, p0, Landroid/support/design/widget/f$1;->a:Z

    invoke-virtual {v0, v2, v1}, Landroid/support/design/widget/y;->a(IZ)V

    return-void
.end method
