.class Landroid/support/design/widget/e$2;
.super Landroid/support/design/widget/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/e;->b(Landroid/support/design/widget/g$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/g$a;

.field final synthetic b:Landroid/support/design/widget/e;


# direct methods
.method constructor <init>(Landroid/support/design/widget/e;Landroid/support/design/widget/g$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/e$2;->b:Landroid/support/design/widget/e;

    iput-object p2, p0, Landroid/support/design/widget/e$2;->a:Landroid/support/design/widget/g$a;

    invoke-direct {p0}, Landroid/support/design/widget/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/e$2;->a:Landroid/support/design/widget/g$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/e$2;->a:Landroid/support/design/widget/g$a;

    invoke-interface {v0}, Landroid/support/design/widget/g$a;->a()V

    :cond_0
    return-void
.end method
