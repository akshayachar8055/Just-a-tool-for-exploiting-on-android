.class final Lcom/uc/browser/homepage/view/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/homepage/view/WidgetCenter;


# direct methods
.method constructor <init>(Lcom/uc/browser/homepage/view/WidgetCenter;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/homepage/view/ad;->a:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/homepage/view/ad;->a:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/WidgetCenter;->f(Lcom/uc/browser/homepage/view/WidgetCenter;)Lcom/uc/browser/homepage/q;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/browser/homepage/view/ad;->a:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-static {v1}, Lcom/uc/browser/homepage/view/WidgetCenter;->g(Lcom/uc/browser/homepage/view/WidgetCenter;)Lcom/uc/browser/homepage/view/HomeWidget;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/uc/browser/homepage/q;->f(Lcom/uc/browser/homepage/view/HomeWidget;)V

    iget-object v0, p0, Lcom/uc/browser/homepage/view/ad;->a:Lcom/uc/browser/homepage/view/WidgetCenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/uc/browser/homepage/view/WidgetCenter;->setState(B)V

    return-void
.end method
