.class final Lcom/uc/browser/dd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/uc/browser/PageTopBottomButton;


# direct methods
.method constructor <init>(Lcom/uc/browser/PageTopBottomButton;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/dd;->a:Lcom/uc/browser/PageTopBottomButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/dd;->a:Lcom/uc/browser/PageTopBottomButton;

    invoke-static {v0}, Lcom/uc/browser/PageTopBottomButton;->h(Lcom/uc/browser/PageTopBottomButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/uc/browser/dd;->a:Lcom/uc/browser/PageTopBottomButton;

    invoke-static {v0}, Lcom/uc/browser/PageTopBottomButton;->h(Lcom/uc/browser/PageTopBottomButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
