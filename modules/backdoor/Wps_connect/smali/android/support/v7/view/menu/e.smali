.class public Landroid/support/v7/view/menu/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/view/menu/l;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/menu/e$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/view/LayoutInflater;

.field c:Landroid/support/v7/view/menu/f;

.field d:Landroid/support/v7/view/menu/ExpandedMenuView;

.field e:I

.field f:I

.field g:Landroid/support/v7/view/menu/e$a;

.field private h:I

.field private i:Landroid/support/v7/view/menu/l$a;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v7/view/menu/e;->f:I

    iput p2, p0, Landroid/support/v7/view/menu/e;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/support/v7/view/menu/e;-><init>(II)V

    iput-object p1, p0, Landroid/support/v7/view/menu/e;->a:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/e;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Landroid/support/v7/view/menu/e;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/view/menu/e;->h:I

    return v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/m;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->b:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/v7/b/a$h;->abc_expanded_menu_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/ExpandedMenuView;

    iput-object v0, p0, Landroid/support/v7/view/menu/e;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->g:Landroid/support/v7/view/menu/e$a;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/view/menu/e$a;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/e$a;-><init>(Landroid/support/v7/view/menu/e;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/e;->g:Landroid/support/v7/view/menu/e$a;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/e;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    iget-object v1, p0, Landroid/support/v7/view/menu/e;->g:Landroid/support/v7/view/menu/e$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/e;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    return-object v0
.end method

.method public a()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->g:Landroid/support/v7/view/menu/e$a;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/view/menu/e$a;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/e$a;-><init>(Landroid/support/v7/view/menu/e;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/e;->g:Landroid/support/v7/view/menu/e$a;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/e;->g:Landroid/support/v7/view/menu/e$a;

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/support/v7/view/menu/f;)V
    .locals 2

    iget v0, p0, Landroid/support/v7/view/menu/e;->e:I

    if-eqz v0, :cond_2

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Landroid/support/v7/view/menu/e;->e:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/view/menu/e;->a:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/e;->b:Landroid/view/LayoutInflater;

    :cond_0
    :goto_0
    iput-object p2, p0, Landroid/support/v7/view/menu/e;->c:Landroid/support/v7/view/menu/f;

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->g:Landroid/support/v7/view/menu/e$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->g:Landroid/support/v7/view/menu/e$a;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/e$a;->notifyDataSetChanged()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v7/view/menu/e;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/support/v7/view/menu/e;->a:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/e;->b:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method public a(Landroid/support/v7/view/menu/f;Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->i:Landroid/support/v7/view/menu/l$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->i:Landroid/support/v7/view/menu/l$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/l$a;->a(Landroid/support/v7/view/menu/f;Z)V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/l$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/menu/e;->i:Landroid/support/v7/view/menu/l$a;

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/f;Landroid/support/v7/view/menu/h;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/view/menu/p;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/support/v7/view/menu/p;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Landroid/support/v7/view/menu/g;

    invoke-direct {v0, p1}, Landroid/support/v7/view/menu/g;-><init>(Landroid/support/v7/view/menu/f;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/g;->a(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->i:Landroid/support/v7/view/menu/l$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->i:Landroid/support/v7/view/menu/l$a;

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/l$a;->a(Landroid/support/v7/view/menu/f;)Z

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->g:Landroid/support/v7/view/menu/e$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->g:Landroid/support/v7/view/menu/e$a;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/e$a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/support/v7/view/menu/f;Landroid/support/v7/view/menu/h;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->c:Landroid/support/v7/view/menu/f;

    iget-object v1, p0, Landroid/support/v7/view/menu/e;->g:Landroid/support/v7/view/menu/e$a;

    invoke-virtual {v1, p3}, Landroid/support/v7/view/menu/e$a;->a(I)Landroid/support/v7/view/menu/h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/support/v7/view/menu/f;->a(Landroid/view/MenuItem;Landroid/support/v7/view/menu/l;I)Z

    return-void
.end method
