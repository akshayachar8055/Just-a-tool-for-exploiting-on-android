.class public Lcom/uc/browser/FlashWrapperView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/uc/browser/FlashWrapperView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public setFlashView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/FlashWrapperView;->a:Landroid/view/View;

    return-void
.end method
