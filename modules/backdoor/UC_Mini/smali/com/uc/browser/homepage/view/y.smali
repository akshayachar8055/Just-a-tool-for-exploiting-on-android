.class final Lcom/uc/browser/homepage/view/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/homepage/view/WidgetCenter;


# direct methods
.method constructor <init>(Lcom/uc/browser/homepage/view/WidgetCenter;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/homepage/view/y;->a:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/uc/browser/homepage/view/y;->a:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-virtual {v2}, Lcom/uc/browser/homepage/view/WidgetCenter;->w()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/uc/browser/homepage/view/y;->a:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-static {v2}, Lcom/uc/browser/homepage/view/WidgetCenter;->b(Lcom/uc/browser/homepage/view/WidgetCenter;)B

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/uc/browser/homepage/view/y;->a:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-virtual {v2, v1}, Lcom/uc/browser/homepage/view/WidgetCenter;->setState(B)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/uc/browser/homepage/view/y;->a:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-static {v1}, Lcom/uc/browser/homepage/view/WidgetCenter;->b(Lcom/uc/browser/homepage/view/WidgetCenter;)B

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/uc/browser/homepage/view/y;->a:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-virtual {v1, v0}, Lcom/uc/browser/homepage/view/WidgetCenter;->setState(B)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
