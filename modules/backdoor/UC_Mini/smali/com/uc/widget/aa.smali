.class public Lcom/uc/widget/aa;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/uc/widget/q;

.field private b:Lcom/uc/widget/t;


# direct methods
.method public constructor <init>(Lcom/uc/widget/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uc/widget/aa;->b:Lcom/uc/widget/t;

    return-void
.end method


# virtual methods
.method public final a(IIII)V
    .locals 3

    iget-object v0, p0, Lcom/uc/widget/aa;->a:Lcom/uc/widget/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/widget/aa;->a:Lcom/uc/widget/q;

    sub-int v1, p3, p1

    sub-int v2, p4, p2

    invoke-virtual {v0, v1, v2}, Lcom/uc/widget/q;->c(II)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/widget/aa;->a:Lcom/uc/widget/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/widget/aa;->a:Lcom/uc/widget/q;

    invoke-virtual {v0, p1}, Lcom/uc/widget/q;->b(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/uc/widget/q;)V
    .locals 1

    iput-object p1, p0, Lcom/uc/widget/aa;->a:Lcom/uc/widget/q;

    iget-object v0, p0, Lcom/uc/widget/aa;->b:Lcom/uc/widget/t;

    invoke-virtual {p1, v0}, Lcom/uc/widget/q;->a(Lcom/uc/widget/t;)V

    return-void
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/uc/widget/aa;->a:Lcom/uc/widget/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/widget/aa;->a:Lcom/uc/widget/q;

    invoke-virtual {v0, p1}, Lcom/uc/widget/q;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/uc/widget/aa;->a:Lcom/uc/widget/q;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/uc/widget/aa;->a:Lcom/uc/widget/q;

    invoke-virtual {v3, v0, v1, v2}, Lcom/uc/widget/q;->a(BII)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/uc/widget/aa;->b:Lcom/uc/widget/t;

    invoke-interface {v0}, Lcom/uc/widget/t;->b()V

    return-void
.end method
