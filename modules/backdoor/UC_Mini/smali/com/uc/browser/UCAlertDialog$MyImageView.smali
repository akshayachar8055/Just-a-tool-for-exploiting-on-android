.class public Lcom/uc/browser/UCAlertDialog$MyImageView;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/uc/browser/UCAlertDialog$MyImageView;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/uc/browser/UCAlertDialog$MyImageView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/uc/browser/UCAlertDialog$MyImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/uc/browser/UCAlertDialog$MyImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/uc/browser/UCAlertDialog$MyImageView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/UCAlertDialog$MyImageView;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method
