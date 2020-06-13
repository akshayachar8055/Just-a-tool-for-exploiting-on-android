.class final Lcom/uc/browser/homepage/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/homepage/a;


# direct methods
.method constructor <init>(Lcom/uc/browser/homepage/a;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/homepage/j;->a:Lcom/uc/browser/homepage/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/uc/browser/homepage/view/HomeWidget;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/uc/browser/homepage/j;->a:Lcom/uc/browser/homepage/a;

    invoke-static {v0}, Lcom/uc/browser/homepage/a;->b(Lcom/uc/browser/homepage/a;)Lcom/uc/browser/homepage/view/WidgetCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/browser/homepage/view/WidgetCenter;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uc/browser/homepage/j;->a:Lcom/uc/browser/homepage/a;

    check-cast p1, Lcom/uc/browser/homepage/view/HomeWidget;

    invoke-static {v0, p1}, Lcom/uc/browser/homepage/a;->a(Lcom/uc/browser/homepage/a;Lcom/uc/browser/homepage/view/HomeWidget;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/uc/browser/homepage/j;->a:Lcom/uc/browser/homepage/a;

    check-cast p1, Lcom/uc/browser/homepage/view/HomeWidget;

    invoke-static {v0, p1}, Lcom/uc/browser/homepage/a;->b(Lcom/uc/browser/homepage/a;Lcom/uc/browser/homepage/view/HomeWidget;)V

    goto :goto_0
.end method
