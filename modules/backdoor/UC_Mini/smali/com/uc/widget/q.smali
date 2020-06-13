.class public Lcom/uc/widget/q;
.super Ljava/lang/Object;


# static fields
.field protected static i:I


# instance fields
.field private a:B

.field private b:Z

.field private c:I

.field private d:Lcom/uc/widget/s;

.field protected e:I

.field protected f:I

.field protected g:Z

.field protected h:Z

.field protected j:Z

.field protected k:Z

.field protected l:Z

.field protected m:Lcom/uc/widget/t;

.field protected n:Lcom/uc/widget/q;

.field protected o:I

.field protected p:I

.field protected q:Landroid/graphics/drawable/Drawable;

.field protected r:I

.field protected s:I

.field protected t:I

.field protected u:I

.field protected v:Landroid/graphics/Paint;

.field private w:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    sput v0, Lcom/uc/widget/q;->i:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v0, p0, Lcom/uc/widget/q;->a:B

    iput v2, p0, Lcom/uc/widget/q;->e:I

    iput v2, p0, Lcom/uc/widget/q;->f:I

    iput-boolean v0, p0, Lcom/uc/widget/q;->g:Z

    iput-boolean v0, p0, Lcom/uc/widget/q;->h:Z

    iput-boolean v0, p0, Lcom/uc/widget/q;->b:Z

    iput-boolean v3, p0, Lcom/uc/widget/q;->j:Z

    iput-boolean v0, p0, Lcom/uc/widget/q;->k:Z

    iput-boolean v3, p0, Lcom/uc/widget/q;->l:Z

    iput v2, p0, Lcom/uc/widget/q;->c:I

    iput-object v1, p0, Lcom/uc/widget/q;->d:Lcom/uc/widget/s;

    iput-object v1, p0, Lcom/uc/widget/q;->m:Lcom/uc/widget/t;

    iput-object v1, p0, Lcom/uc/widget/q;->n:Lcom/uc/widget/q;

    iput v0, p0, Lcom/uc/widget/q;->o:I

    iput v0, p0, Lcom/uc/widget/q;->p:I

    iput-object v1, p0, Lcom/uc/widget/q;->q:Landroid/graphics/drawable/Drawable;

    iput v0, p0, Lcom/uc/widget/q;->r:I

    iput v0, p0, Lcom/uc/widget/q;->s:I

    iput v0, p0, Lcom/uc/widget/q;->t:I

    iput v0, p0, Lcom/uc/widget/q;->u:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/uc/widget/q;->v:Landroid/graphics/Paint;

    new-instance v0, Lcom/uc/widget/r;

    invoke-direct {v0, p0}, Lcom/uc/widget/r;-><init>(Lcom/uc/widget/q;)V

    iput-object v0, p0, Lcom/uc/widget/q;->w:Landroid/os/Handler;

    return-void
.end method

.method public static final d(I)V
    .locals 0

    sput p0, Lcom/uc/widget/q;->i:I

    return-void
.end method


# virtual methods
.method public final a(B)V
    .locals 1

    iget-byte v0, p0, Lcom/uc/widget/q;->a:B

    if-eq v0, p1, :cond_0

    iput-byte p1, p0, Lcom/uc/widget/q;->a:B

    invoke-virtual {p0}, Lcom/uc/widget/q;->n()V

    :cond_0
    return-void
.end method

.method public a(IIII)V
    .locals 0

    iput p1, p0, Lcom/uc/widget/q;->r:I

    iput p2, p0, Lcom/uc/widget/q;->t:I

    iput p3, p0, Lcom/uc/widget/q;->s:I

    iput p4, p0, Lcom/uc/widget/q;->u:I

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uc/widget/q;->c(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/widget/q;->q:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final a(Lcom/uc/widget/q;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/widget/q;->n:Lcom/uc/widget/q;

    return-void
.end method

.method public a(Lcom/uc/widget/s;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/widget/q;->d:Lcom/uc/widget/s;

    return-void
.end method

.method public a(Lcom/uc/widget/t;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/widget/q;->m:Lcom/uc/widget/t;

    return-void
.end method

.method public a(BII)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/uc/widget/q;->b(BII)Z

    move-result v0

    return v0
.end method

.method protected a(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/uc/widget/q;->b(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p0}, Lcom/uc/widget/q;->l()Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/uc/widget/q;->a(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/uc/widget/q;->n()V

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uc/widget/q;->k:Z

    return-void
.end method

.method public final b(BII)Z
    .locals 6

    const/4 v3, -0x1

    const/16 v5, 0x1001

    const/4 v2, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/uc/widget/q;->c(BII)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/uc/widget/q;->w:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v2, p0, Lcom/uc/widget/q;->b:Z

    :cond_1
    :goto_1
    return v1

    :pswitch_0
    iput-boolean v2, p0, Lcom/uc/widget/q;->g:Z

    iput-boolean v2, p0, Lcom/uc/widget/q;->h:Z

    iput-boolean v1, p0, Lcom/uc/widget/q;->b:Z

    iput p2, p0, Lcom/uc/widget/q;->e:I

    iput p3, p0, Lcom/uc/widget/q;->f:I

    iget-object v0, p0, Lcom/uc/widget/q;->w:Landroid/os/Handler;

    iget-object v1, p0, Lcom/uc/widget/q;->w:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/uc/widget/q;->h:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/uc/widget/q;->e:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v3, Lcom/uc/widget/q;->i:I

    if-le v0, v3, :cond_3

    move v0, v1

    :goto_2
    iget v3, p0, Lcom/uc/widget/q;->f:I

    sub-int v3, p3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sget v4, Lcom/uc/widget/q;->i:I

    if-le v3, v4, :cond_4

    move v3, v1

    :goto_3
    if-nez v0, :cond_2

    if-eqz v3, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/uc/widget/q;->w:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v1, p0, Lcom/uc/widget/q;->g:Z

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_3

    :cond_5
    iget-boolean v0, p0, Lcom/uc/widget/q;->k:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/uc/widget/q;->w:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iput v3, p0, Lcom/uc/widget/q;->e:I

    iput v3, p0, Lcom/uc/widget/q;->f:I

    iget-boolean v0, p0, Lcom/uc/widget/q;->b:Z

    iput-boolean v2, p0, Lcom/uc/widget/q;->b:Z

    iget-boolean v3, p0, Lcom/uc/widget/q;->h:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/uc/widget/q;->g:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/uc/widget/q;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public b(I)Z
    .locals 1

    iget-object v0, p0, Lcom/uc/widget/q;->d:Lcom/uc/widget/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/widget/q;->d:Lcom/uc/widget/s;

    invoke-interface {v0, p1}, Lcom/uc/widget/s;->a(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(II)Z
    .locals 1

    iget-boolean v0, p0, Lcom/uc/widget/q;->k:Z

    return v0
.end method

.method public b(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    iget-byte v1, p0, Lcom/uc/widget/q;->a:B

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/uc/widget/q;->k:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0, v0}, Lcom/uc/widget/q;->a(II)Z

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public c(II)V
    .locals 0

    iput p1, p0, Lcom/uc/widget/q;->o:I

    iput p2, p0, Lcom/uc/widget/q;->p:I

    invoke-virtual {p0}, Lcom/uc/widget/q;->k()V

    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/uc/widget/q;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/widget/q;->q:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/uc/widget/q;->o:I

    iget v2, p0, Lcom/uc/widget/q;->p:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/uc/widget/q;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public c(BII)Z
    .locals 1

    iget-boolean v0, p0, Lcom/uc/widget/q;->k:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/uc/widget/q;->b(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/uc/widget/q;->p:I

    return v0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/uc/widget/q;->c:I

    return-void
.end method

.method protected f(II)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected g(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/uc/widget/q;->c:I

    return v0
.end method

.method protected k()V
    .locals 0

    return-void
.end method

.method protected l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lcom/uc/widget/q;->m:Lcom/uc/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/widget/q;->m:Lcom/uc/widget/t;

    invoke-interface {v0}, Lcom/uc/widget/t;->b()V

    :cond_0
    return-void
.end method

.method public final n()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/uc/widget/q;->n:Lcom/uc/widget/q;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/uc/widget/q;->n:Lcom/uc/widget/q;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/uc/widget/q;->m()V

    return-void
.end method

.method public final o()I
    .locals 1

    iget v0, p0, Lcom/uc/widget/q;->o:I

    return v0
.end method

.method public final p()B
    .locals 1

    iget-byte v0, p0, Lcom/uc/widget/q;->a:B

    return v0
.end method
