.class public final Lcom/uc/browser/bookmark/ad;
.super Lcom/uc/widget/v;


# instance fields
.field private B:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/uc/widget/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/uc/browser/bookmark/ad;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/q;

    iget-object v2, p0, Lcom/uc/browser/bookmark/ad;->B:Ljava/util/Vector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/uc/browser/bookmark/ad;->B:Ljava/util/Vector;

    invoke-virtual {v0}, Lcom/uc/widget/q;->j()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v0, Lcom/uc/widget/x;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/uc/widget/x;

    invoke-virtual {p0, v0}, Lcom/uc/browser/bookmark/ad;->b(Lcom/uc/widget/x;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/uc/widget/x;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/bookmark/ad;->B:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/uc/browser/bookmark/ad;->B:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lcom/uc/browser/bookmark/ad;->B:Ljava/util/Vector;

    invoke-virtual {p1}, Lcom/uc/widget/x;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uc/browser/bookmark/ad;->B:Ljava/util/Vector;

    invoke-virtual {p1}, Lcom/uc/widget/x;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-super {p0, p1}, Lcom/uc/widget/v;->a(Lcom/uc/widget/x;)V

    return-void
.end method

.method public final a(Ljava/util/Vector;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/uc/widget/v;->a(Ljava/util/Vector;)V

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/q;

    iget-object v2, p0, Lcom/uc/browser/bookmark/ad;->B:Ljava/util/Vector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/uc/browser/bookmark/ad;->B:Ljava/util/Vector;

    invoke-virtual {v0}, Lcom/uc/widget/q;->j()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v0, Lcom/uc/widget/x;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/uc/widget/x;

    invoke-virtual {p0, v0}, Lcom/uc/browser/bookmark/ad;->c(Lcom/uc/widget/x;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/uc/browser/bookmark/ad;->i()V

    return-void
.end method

.method public final b(Lcom/uc/widget/x;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/bookmark/ad;->B:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/bookmark/ad;->B:Ljava/util/Vector;

    invoke-virtual {p1}, Lcom/uc/widget/x;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/uc/widget/v;->b(Lcom/uc/widget/x;)V

    return-void
.end method
