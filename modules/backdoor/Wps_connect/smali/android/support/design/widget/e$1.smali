.class Landroid/support/design/widget/e$1;
.super Landroid/support/design/widget/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/e;->a(Landroid/support/design/widget/g$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/support/design/widget/g$a;

.field final synthetic c:Landroid/support/design/widget/e;


# direct methods
.method constructor <init>(Landroid/support/design/widget/e;ZLandroid/support/design/widget/g$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/e$1;->c:Landroid/support/design/widget/e;

    iput-boolean p2, p0, Landroid/support/design/widget/e$1;->a:Z

    iput-object p3, p0, Landroid/support/design/widget/e$1;->b:Landroid/support/design/widget/g$a;

    invoke-direct {p0}, Landroid/support/design/widget/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/e$1;->c:Landroid/support/design/widget/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/design/widget/e;->a(Landroid/support/design/widget/e;Z)Z

    iget-object v0, p0, Landroid/support/design/widget/e$1;->c:Landroid/support/design/widget/e;

    iget-object v0, v0, Landroid/support/design/widget/e;->k:Landroid/support/design/widget/y;

    const/16 v1, 0x8

    iget-boolean v2, p0, Landroid/support/design/widget/e$1;->a:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/y;->a(IZ)V

    iget-object v0, p0, Landroid/support/design/widget/e$1;->b:Landroid/support/design/widget/g$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/e$1;->b:Landroid/support/design/widget/g$a;

    invoke-interface {v0}, Landroid/support/design/widget/g$a;->b()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/e$1;->c:Landroid/support/design/widget/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/design/widget/e;->a(Landroid/support/design/widget/e;Z)Z

    return-void
.end method
