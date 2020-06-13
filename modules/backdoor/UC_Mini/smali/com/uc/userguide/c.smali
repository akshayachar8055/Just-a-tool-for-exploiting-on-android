.class public final Lcom/uc/userguide/c;
.super Landroid/text/style/ClickableSpan;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Lcom/uc/userguide/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/uc/userguide/d;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p1, p0, Lcom/uc/userguide/c;->a:Landroid/content/Context;

    iput p2, p0, Lcom/uc/userguide/c;->b:I

    iput-object p3, p0, Lcom/uc/userguide/c;->c:Lcom/uc/userguide/d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/userguide/c;->c:Lcom/uc/userguide/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/userguide/c;->c:Lcom/uc/userguide/d;

    iget v1, p0, Lcom/uc/userguide/c;->b:I

    invoke-interface {v0, v1}, Lcom/uc/userguide/d;->a(I)V

    :cond_0
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/uc/userguide/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
