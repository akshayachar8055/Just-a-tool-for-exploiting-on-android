.class final Lcom/uc/browser/en;
.super Landroid/widget/RelativeLayout;


# instance fields
.field final synthetic a:Lcom/uc/browser/UCAlertDialog;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Lcom/uc/browser/UCAlertDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/en;->a:Lcom/uc/browser/UCAlertDialog;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/uc/browser/en;->b:I

    sub-int v1, p4, p2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/uc/browser/en;->c:I

    sub-int v1, p5, p3

    if-eq v0, v1, :cond_1

    :cond_0
    sub-int v0, p4, p2

    iput v0, p0, Lcom/uc/browser/en;->b:I

    sub-int v0, p5, p3

    iput v0, p0, Lcom/uc/browser/en;->c:I

    new-instance v0, Lcom/uc/browser/eo;

    invoke-direct {v0, p0}, Lcom/uc/browser/eo;-><init>(Lcom/uc/browser/en;)V

    invoke-virtual {p0, v0}, Lcom/uc/browser/en;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
