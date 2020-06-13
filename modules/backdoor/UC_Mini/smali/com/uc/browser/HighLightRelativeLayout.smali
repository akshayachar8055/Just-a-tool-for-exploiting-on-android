.class public Lcom/uc/browser/HighLightRelativeLayout;
.super Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a([I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/uc/browser/HighLightRelativeLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/uc/browser/HighLightRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uc/browser/HighLightRelativeLayout;->a([I)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->childDrawableStateChanged(Landroid/view/View;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/uc/browser/HighLightRelativeLayout;->getDrawableState()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uc/browser/HighLightRelativeLayout;->a([I)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->drawableStateChanged()V

    return-void
.end method
