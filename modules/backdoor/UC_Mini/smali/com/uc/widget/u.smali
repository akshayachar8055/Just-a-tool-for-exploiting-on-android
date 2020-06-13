.class public Lcom/uc/widget/u;
.super Lcom/uc/widget/q;


# instance fields
.field protected a:Ljava/util/Vector;

.field protected b:I

.field protected c:Z

.field private d:[I

.field private w:I

.field private x:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/uc/widget/q;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    iput v1, p0, Lcom/uc/widget/u;->b:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/uc/widget/u;->d:[I

    iput-boolean v1, p0, Lcom/uc/widget/u;->c:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/uc/widget/u;->w:I

    iput-boolean v1, p0, Lcom/uc/widget/u;->x:Z

    return-void
.end method


# virtual methods
.method protected a(II[I)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final a(I)Lcom/uc/widget/q;
    .locals 1

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/q;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/uc/widget/q;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/uc/widget/u;->d(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public a(Lcom/uc/widget/q;I)V
    .locals 1

    invoke-virtual {p1, p0}, Lcom/uc/widget/q;->a(Lcom/uc/widget/q;)V

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .locals 2

    iput-object p1, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/q;

    invoke-virtual {v0, p0}, Lcom/uc/widget/q;->a(Lcom/uc/widget/q;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(BII)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iput-boolean v1, p0, Lcom/uc/widget/u;->g:Z

    iput-boolean v1, p0, Lcom/uc/widget/u;->h:Z

    :cond_0
    iget-boolean v0, p0, Lcom/uc/widget/u;->j:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/uc/widget/u;->c:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2, p3}, Lcom/uc/widget/u;->b(BII)Z

    move-result v0

    goto :goto_0

    :cond_2
    :try_start_0
    iget v0, p0, Lcom/uc/widget/u;->b:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/uc/widget/u;->b:I

    iget-object v3, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-gt v0, v3, :cond_3

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    iget v3, p0, Lcom/uc/widget/u;->b:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/q;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    iget v3, p0, Lcom/uc/widget/u;->b:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/q;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/uc/widget/q;->a(B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/uc/widget/u;->b:I

    :cond_3
    if-nez p1, :cond_7

    iget-object v0, p0, Lcom/uc/widget/u;->d:[I

    invoke-virtual {p0, p2, p3, v0}, Lcom/uc/widget/u;->a(II[I)I

    move-result v0

    iput v0, p0, Lcom/uc/widget/u;->w:I

    iget v0, p0, Lcom/uc/widget/u;->w:I

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/uc/widget/u;->w:I

    iget-object v3, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v0, v3, :cond_6

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    iget v3, p0, Lcom/uc/widget/u;->w:I

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/q;

    if-eqz v0, :cond_c

    iget-object v3, p0, Lcom/uc/widget/u;->d:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int v3, p2, v3

    iget-object v4, p0, Lcom/uc/widget/u;->d:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int v4, p3, v4

    invoke-virtual {v0, p1, v3, v4}, Lcom/uc/widget/q;->a(BII)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/uc/widget/u;->x:Z

    if-nez v0, :cond_4

    const/4 v0, -0x1

    iput v0, p0, Lcom/uc/widget/u;->w:I

    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/uc/widget/u;->b(BII)Z

    move-result v0

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/uc/widget/u;->b(BII)Z

    move-result v0

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/uc/widget/u;->w:I

    if-ltz v0, :cond_a

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/uc/widget/u;->w:I

    iget-object v3, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v0, v3, :cond_a

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    iget v3, p0, Lcom/uc/widget/u;->w:I

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/q;

    if-eqz v0, :cond_b

    iget-object v3, p0, Lcom/uc/widget/u;->d:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int v3, p2, v3

    iget-object v4, p0, Lcom/uc/widget/u;->d:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int v4, p3, v4

    invoke-virtual {v0, p1, v3, v4}, Lcom/uc/widget/q;->a(BII)Z

    move-result v0

    :goto_2
    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/uc/widget/u;->x:Z

    if-nez v0, :cond_8

    const/4 v0, -0x1

    iput v0, p0, Lcom/uc/widget/u;->w:I

    :cond_8
    invoke-virtual {p0, p1, p2, p3}, Lcom/uc/widget/u;->b(BII)Z

    move-result v0

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0, p1, p2, p3}, Lcom/uc/widget/u;->b(BII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto :goto_2

    :cond_c
    move v0, v1

    goto :goto_1
.end method

.method protected final a(II)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/uc/widget/u;->a(II[I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/uc/widget/u;->c(I)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/uc/widget/u;->j:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/uc/widget/u;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/uc/widget/u;->b(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/uc/widget/u;->b:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/uc/widget/u;->b:I

    iget-object v2, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-gt v0, v2, :cond_2

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    iget v2, p0, Lcom/uc/widget/u;->b:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    iget v2, p0, Lcom/uc/widget/u;->b:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/q;

    invoke-virtual {v0, p1}, Lcom/uc/widget/q;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/uc/widget/u;->b(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/widget/u;->x:Z

    return-void
.end method

.method public b(Lcom/uc/widget/q;)V
    .locals 1

    invoke-virtual {p1, p0}, Lcom/uc/widget/q;->a(Lcom/uc/widget/q;)V

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_6

    :goto_2
    return v1

    :pswitch_0
    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v3, p0, Lcom/uc/widget/u;->b:I

    if-gez v3, :cond_2

    iget v0, p0, Lcom/uc/widget/u;->b:I

    neg-int v0, v0

    iput v0, p0, Lcom/uc/widget/u;->b:I

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    iget v3, p0, Lcom/uc/widget/u;->b:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/q;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/uc/widget/q;->a(B)V

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    iget v3, p0, Lcom/uc/widget/u;->b:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/q;

    invoke-virtual {v0, p1}, Lcom/uc/widget/q;->a(Landroid/view/KeyEvent;)Z

    invoke-virtual {p0}, Lcom/uc/widget/u;->n()V

    :cond_1
    :goto_3
    move v0, v1

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/uc/widget/u;->b:I

    if-ge v3, v0, :cond_1

    iget v0, p0, Lcom/uc/widget/u;->b:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    iget v3, p0, Lcom/uc/widget/u;->b:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/q;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/uc/widget/q;->a(B)V

    :cond_3
    iget v0, p0, Lcom/uc/widget/u;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uc/widget/u;->b:I

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    iget v3, p0, Lcom/uc/widget/u;->b:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/q;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/uc/widget/q;->a(B)V

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    iget v3, p0, Lcom/uc/widget/u;->b:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/q;

    invoke-virtual {v0, p1}, Lcom/uc/widget/q;->a(Landroid/view/KeyEvent;)Z

    invoke-virtual {p0}, Lcom/uc/widget/u;->n()V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/uc/widget/u;->b:I

    if-gez v0, :cond_5

    iget v0, p0, Lcom/uc/widget/u;->b:I

    neg-int v0, v0

    iput v0, p0, Lcom/uc/widget/u;->b:I

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    iget v3, p0, Lcom/uc/widget/u;->b:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/q;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/uc/widget/q;->a(B)V

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    iget v3, p0, Lcom/uc/widget/u;->b:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/q;

    invoke-virtual {v0, p1}, Lcom/uc/widget/q;->a(Landroid/view/KeyEvent;)Z

    invoke-virtual {p0}, Lcom/uc/widget/u;->n()V

    :cond_4
    :goto_4
    move v0, v1

    goto/16 :goto_1

    :cond_5
    iget v0, p0, Lcom/uc/widget/u;->b:I

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    iget v3, p0, Lcom/uc/widget/u;->b:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/q;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/uc/widget/q;->a(B)V

    iget v0, p0, Lcom/uc/widget/u;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/uc/widget/u;->b:I

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    iget v3, p0, Lcom/uc/widget/u;->b:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/q;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/uc/widget/q;->a(B)V

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    iget v3, p0, Lcom/uc/widget/u;->b:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/q;

    invoke-virtual {v0, p1}, Lcom/uc/widget/q;->a(Landroid/view/KeyEvent;)Z

    invoke-virtual {p0}, Lcom/uc/widget/u;->n()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_6
    move v1, v0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    return-object v0
.end method

.method public c(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/uc/widget/u;->b(I)Z

    move-result v0

    return v0
.end method

.method protected d(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/q;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v0, p1}, Lcom/uc/widget/q;->b(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/uc/widget/u;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public f(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final g(II)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/uc/widget/u;->a(II[I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/uc/widget/u;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
