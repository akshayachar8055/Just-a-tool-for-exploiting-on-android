.class public final Lcom/uc/browser/bookmark/ak;
.super Landroid/graphics/drawable/ColorDrawable;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput p1, p0, Lcom/uc/browser/bookmark/ak;->b:I

    iput p2, p0, Lcom/uc/browser/bookmark/ak;->c:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/uc/browser/bookmark/ak;->a:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Lcom/uc/browser/bookmark/ak;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v0, p0, Lcom/uc/browser/bookmark/ak;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/uc/browser/bookmark/ak;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    iget v3, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/uc/browser/bookmark/ak;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/uc/browser/bookmark/ak;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/uc/browser/bookmark/ak;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    iget v3, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/uc/browser/bookmark/ak;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
