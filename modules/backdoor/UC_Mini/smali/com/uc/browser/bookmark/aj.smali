.class final Lcom/uc/browser/bookmark/aj;
.super Lcom/uc/widget/q;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/graphics/Bitmap;

.field private synthetic d:Lcom/uc/browser/bookmark/BookmarkTabContainer;


# direct methods
.method public constructor <init>(Lcom/uc/browser/bookmark/BookmarkTabContainer;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/bookmark/aj;->d:Lcom/uc/browser/bookmark/BookmarkTabContainer;

    invoke-direct {p0}, Lcom/uc/widget/q;-><init>()V

    iput-object p2, p0, Lcom/uc/browser/bookmark/aj;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/uc/browser/bookmark/aj;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/uc/browser/bookmark/aj;->c:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/uc/browser/bookmark/aj;->v:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/uc/browser/bookmark/aj;->d:Lcom/uc/browser/bookmark/BookmarkTabContainer;

    invoke-static {v1}, Lcom/uc/browser/bookmark/BookmarkTabContainer;->w(Lcom/uc/browser/bookmark/BookmarkTabContainer;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/uc/browser/bookmark/aj;->v:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/uc/browser/bookmark/aj;->d:Lcom/uc/browser/bookmark/BookmarkTabContainer;

    invoke-static {v1}, Lcom/uc/browser/bookmark/BookmarkTabContainer;->x(Lcom/uc/browser/bookmark/BookmarkTabContainer;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v0, p0, Lcom/uc/browser/bookmark/aj;->p:I

    iget-object v1, p0, Lcom/uc/browser/bookmark/aj;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/uc/browser/bookmark/aj;->v:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    float-to-int v0, v0

    iget-object v1, p0, Lcom/uc/browser/bookmark/aj;->c:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/uc/browser/bookmark/aj;->o:I

    iget-object v3, p0, Lcom/uc/browser/bookmark/aj;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    int-to-float v3, v0

    iget-object v4, p0, Lcom/uc/browser/bookmark/aj;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/uc/browser/bookmark/aj;->a:Ljava/lang/String;

    iget v2, p0, Lcom/uc/browser/bookmark/aj;->o:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/uc/browser/bookmark/aj;->v:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/uc/browser/bookmark/aj;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/uc/browser/bookmark/aj;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    int-to-float v3, v3

    iget-object v4, p0, Lcom/uc/browser/bookmark/aj;->v:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/uc/browser/bookmark/aj;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/uc/browser/bookmark/aj;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/uc/browser/bookmark/aj;->v:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/uc/browser/bookmark/aj;->d:Lcom/uc/browser/bookmark/BookmarkTabContainer;

    invoke-static {v2}, Lcom/uc/browser/bookmark/BookmarkTabContainer;->y(Lcom/uc/browser/bookmark/BookmarkTabContainer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/uc/browser/bookmark/aj;->v:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/uc/browser/bookmark/aj;->d:Lcom/uc/browser/bookmark/BookmarkTabContainer;

    invoke-static {v2}, Lcom/uc/browser/bookmark/BookmarkTabContainer;->z(Lcom/uc/browser/bookmark/BookmarkTabContainer;)I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/uc/browser/bookmark/aj;->b:Ljava/lang/String;

    iget v2, p0, Lcom/uc/browser/bookmark/aj;->o:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/uc/browser/bookmark/aj;->v:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/uc/browser/bookmark/aj;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/uc/browser/bookmark/aj;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget-object v3, p0, Lcom/uc/browser/bookmark/aj;->v:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    mul-float/2addr v3, v5

    add-float/2addr v0, v3

    const/high16 v3, 0x41200000    # 10.0f

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/uc/browser/bookmark/aj;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
