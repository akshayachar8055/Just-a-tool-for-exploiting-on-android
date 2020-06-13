.class Landroid/support/v7/widget/d$f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/view/menu/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/d;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/d;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/d$f;->a:Landroid/support/v7/widget/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/d;Landroid/support/v7/widget/d$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/d$f;-><init>(Landroid/support/v7/widget/d;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/menu/f;Z)V
    .locals 2

    instance-of v0, p1, Landroid/support/v7/view/menu/p;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/support/v7/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/p;->p()Landroid/support/v7/view/menu/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/f;->a(Z)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/d$f;->a:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->a()Landroid/support/v7/view/menu/l$a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/l$a;->a(Landroid/support/v7/view/menu/f;Z)V

    :cond_1
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/f;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/d$f;->a:Landroid/support/v7/widget/d;

    move-object v0, p1

    check-cast v0, Landroid/support/v7/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/p;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, v2, Landroid/support/v7/widget/d;->h:I

    iget-object v0, p0, Landroid/support/v7/widget/d$f;->a:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->a()Landroid/support/v7/view/menu/l$a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/l$a;->a(Landroid/support/v7/view/menu/f;)Z

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
