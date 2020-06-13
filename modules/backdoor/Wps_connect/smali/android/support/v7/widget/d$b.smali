.class Landroid/support/v7/widget/d$b;
.super Landroid/support/v7/view/menu/ActionMenuItemView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/d;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/d;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/d$b;->a:Landroid/support/v7/widget/d;

    invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItemView$b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/d;Landroid/support/v7/widget/d$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/d$b;-><init>(Landroid/support/v7/widget/d;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/widget/ak;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/d$b;->a:Landroid/support/v7/widget/d;

    invoke-static {v0}, Landroid/support/v7/widget/d;->i(Landroid/support/v7/widget/d;)Landroid/support/v7/widget/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/d$b;->a:Landroid/support/v7/widget/d;

    invoke-static {v0}, Landroid/support/v7/widget/d;->i(Landroid/support/v7/widget/d;)Landroid/support/v7/widget/d$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/d$a;->c()Landroid/support/v7/widget/ak;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
