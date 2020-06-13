.class final Lcom/uc/browser/homepage/view/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/homepage/view/AddWidgetLayout;


# direct methods
.method constructor <init>(Lcom/uc/browser/homepage/view/AddWidgetLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/homepage/view/d;->a:Lcom/uc/browser/homepage/view/AddWidgetLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/homepage/view/d;->a:Lcom/uc/browser/homepage/view/AddWidgetLayout;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/AddWidgetLayout;->a(Lcom/uc/browser/homepage/view/AddWidgetLayout;)Lcom/uc/browser/homepage/view/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/homepage/view/d;->a:Lcom/uc/browser/homepage/view/AddWidgetLayout;

    iget-object v1, p0, Lcom/uc/browser/homepage/view/d;->a:Lcom/uc/browser/homepage/view/AddWidgetLayout;

    invoke-static {v1}, Lcom/uc/browser/homepage/view/AddWidgetLayout;->b(Lcom/uc/browser/homepage/view/AddWidgetLayout;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uc/browser/homepage/view/AddWidgetLayout;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/uc/browser/homepage/view/d;->a:Lcom/uc/browser/homepage/view/AddWidgetLayout;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/AddWidgetLayout;->a(Lcom/uc/browser/homepage/view/AddWidgetLayout;)Lcom/uc/browser/homepage/view/e;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/browser/homepage/view/d;->a:Lcom/uc/browser/homepage/view/AddWidgetLayout;

    invoke-static {v1}, Lcom/uc/browser/homepage/view/AddWidgetLayout;->b(Lcom/uc/browser/homepage/view/AddWidgetLayout;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/uc/browser/homepage/view/e;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
