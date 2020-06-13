.class final Lcom/uc/browser/media/myvideo/view/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;


# direct methods
.method constructor <init>(Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/media/myvideo/view/j;->a:Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    check-cast p2, Lcom/uc/browser/media/myvideo/view/MyVideoEditItem;

    invoke-virtual {p2}, Lcom/uc/browser/media/myvideo/view/MyVideoEditItem;->a()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/uc/browser/media/myvideo/view/MyVideoEditItem;->setChecked(Z)V

    iget-object v0, p0, Lcom/uc/browser/media/myvideo/view/j;->a:Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;

    invoke-static {v0}, Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;->a(Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;)Lcom/uc/browser/media/myvideo/view/g;

    move-result-object v0

    invoke-virtual {p2}, Lcom/uc/browser/media/myvideo/view/MyVideoEditItem;->a()Z

    move-result v1

    invoke-virtual {v0, p3, v1}, Lcom/uc/browser/media/myvideo/view/g;->a(IZ)V

    iget-object v0, p0, Lcom/uc/browser/media/myvideo/view/j;->a:Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;

    invoke-static {v0}, Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;->b(Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;)V

    iget-object v0, p0, Lcom/uc/browser/media/myvideo/view/j;->a:Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;

    invoke-static {v0}, Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;->c(Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;)V

    iget-object v0, p0, Lcom/uc/browser/media/myvideo/view/j;->a:Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;

    invoke-static {v0}, Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;->d(Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;)Lcom/uc/browser/media/myvideo/view/n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/media/myvideo/view/j;->a:Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;

    invoke-static {v0}, Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;->a(Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;)Lcom/uc/browser/media/myvideo/view/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/browser/media/myvideo/view/g;->a()Ljava/util/List;

    iget-object v0, p0, Lcom/uc/browser/media/myvideo/view/j;->a:Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;

    invoke-static {v0}, Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;->a(Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;)Lcom/uc/browser/media/myvideo/view/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/browser/media/myvideo/view/g;->b()I

    iget-object v0, p0, Lcom/uc/browser/media/myvideo/view/j;->a:Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;

    invoke-static {v0}, Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;->a(Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;)Lcom/uc/browser/media/myvideo/view/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/browser/media/myvideo/view/g;->getCount()I

    :cond_0
    iget-object v0, p0, Lcom/uc/browser/media/myvideo/view/j;->a:Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;

    invoke-static {v0}, Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;->d(Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;)Lcom/uc/browser/media/myvideo/view/n;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uc/browser/media/myvideo/view/j;->a:Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;

    invoke-static {v0}, Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;->a(Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;)Lcom/uc/browser/media/myvideo/view/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/browser/media/myvideo/view/g;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uc/browser/media/myvideo/view/j;->a:Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;

    invoke-static {v0}, Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;->d(Lcom/uc/browser/media/myvideo/view/MyVideoEditLayout;)Lcom/uc/browser/media/myvideo/view/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/uc/browser/media/myvideo/view/n;->a()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
