.class Landroid/support/v7/widget/d$a;
.super Landroid/support/v7/view/menu/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic c:Landroid/support/v7/widget/d;

.field private d:Landroid/support/v7/view/menu/p;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/d;Landroid/content/Context;Landroid/support/v7/view/menu/p;)V
    .locals 6

    const/4 v4, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/d$a;->c:Landroid/support/v7/widget/d;

    const/4 v3, 0x0

    sget v5, Landroid/support/v7/b/a$a;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/k;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/f;Landroid/view/View;ZI)V

    iput-object p3, p0, Landroid/support/v7/widget/d$a;->d:Landroid/support/v7/view/menu/p;

    invoke-virtual {p3}, Landroid/support/v7/view/menu/p;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/support/v7/widget/d;->e(Landroid/support/v7/widget/d;)Landroid/support/v7/widget/d$d;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/support/v7/widget/d;->f(Landroid/support/v7/widget/d;)Landroid/support/v7/view/menu/m;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/d$a;->a(Landroid/view/View;)V

    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/d;->g:Landroid/support/v7/widget/d$f;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/d$a;->a(Landroid/support/v7/view/menu/l$a;)V

    invoke-virtual {p3}, Landroid/support/v7/view/menu/p;->size()I

    move-result v1

    move v0, v4

    :goto_1
    if-ge v0, v1, :cond_1

    invoke-virtual {p3, v0}, Landroid/support/v7/view/menu/p;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    :cond_1
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/d$a;->a(Z)V

    return-void

    :cond_2
    invoke-static {p1}, Landroid/support/v7/widget/d;->e(Landroid/support/v7/widget/d;)Landroid/support/v7/widget/d$d;

    move-result-object v0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/view/menu/k;->onDismiss()V

    iget-object v0, p0, Landroid/support/v7/widget/d$a;->c:Landroid/support/v7/widget/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/d;->a(Landroid/support/v7/widget/d;Landroid/support/v7/widget/d$a;)Landroid/support/v7/widget/d$a;

    iget-object v0, p0, Landroid/support/v7/widget/d$a;->c:Landroid/support/v7/widget/d;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/d;->h:I

    return-void
.end method
