.class public Lcom/uc/browser/SAnimLinearLayout;
.super Landroid/widget/LinearLayout;


# instance fields
.field public a:Ljava/lang/StringBuffer;

.field private b:Landroid/view/animation/Animation;

.field private c:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/browser/SAnimLinearLayout;->a:Ljava/lang/StringBuffer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/browser/SAnimLinearLayout;->a:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/uc/browser/SAnimLinearLayout;->a:Ljava/lang/StringBuffer;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lcom/uc/browser/SAnimLinearLayout;->a:Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lcom/uc/browser/SAnimLinearLayout;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v1, p0, Lcom/uc/browser/SAnimLinearLayout;->a:Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/uc/browser/winmgr/MultiWindowViewEx;->a:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/uc/browser/SAnimLinearLayout;->b:Landroid/view/animation/Animation;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/uc/browser/SAnimLinearLayout;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uc/browser/SAnimLinearLayout;->b:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/uc/browser/SAnimLinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/uc/browser/SAnimLinearLayout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/uc/browser/SAnimLinearLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/uc/browser/SAnimLinearLayout;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    :cond_1
    iget-object v0, p0, Lcom/uc/browser/SAnimLinearLayout;->c:Landroid/view/animation/Transformation;

    if-nez v0, :cond_2

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/uc/browser/SAnimLinearLayout;->c:Landroid/view/animation/Transformation;

    :cond_2
    iget-object v0, p0, Lcom/uc/browser/SAnimLinearLayout;->b:Landroid/view/animation/Animation;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/uc/browser/SAnimLinearLayout;->c:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    iget-object v1, p0, Lcom/uc/browser/SAnimLinearLayout;->c:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/uc/browser/SAnimLinearLayout;->invalidate()V

    :goto_0
    return-void

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/browser/SAnimLinearLayout;->b:Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 1

    iput-object p1, p0, Lcom/uc/browser/SAnimLinearLayout;->b:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/uc/browser/SAnimLinearLayout;->b:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/uc/browser/SAnimLinearLayout;->invalidate()V

    iget-object v0, p0, Lcom/uc/browser/SAnimLinearLayout;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iget-object v0, p0, Lcom/uc/browser/SAnimLinearLayout;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    :cond_0
    return-void
.end method
