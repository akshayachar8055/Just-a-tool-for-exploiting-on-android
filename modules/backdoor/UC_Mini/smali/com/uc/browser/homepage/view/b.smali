.class final Lcom/uc/browser/homepage/view/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/uc/browser/homepage/view/AddWidgetLayout;


# direct methods
.method constructor <init>(Lcom/uc/browser/homepage/view/AddWidgetLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/homepage/view/b;->a:Lcom/uc/browser/homepage/view/AddWidgetLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/uc/browser/homepage/view/b;->a:Lcom/uc/browser/homepage/view/AddWidgetLayout;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/AddWidgetLayout;->a(Lcom/uc/browser/homepage/view/AddWidgetLayout;)Lcom/uc/browser/homepage/view/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/homepage/view/b;->a:Lcom/uc/browser/homepage/view/AddWidgetLayout;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/AddWidgetLayout;->a(Lcom/uc/browser/homepage/view/AddWidgetLayout;)Lcom/uc/browser/homepage/view/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/uc/browser/homepage/view/e;->a(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/uc/browser/homepage/view/b;->a:Lcom/uc/browser/homepage/view/AddWidgetLayout;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/AddWidgetLayout;->b(Lcom/uc/browser/homepage/view/AddWidgetLayout;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/uc/browser/homepage/view/b;->a:Lcom/uc/browser/homepage/view/AddWidgetLayout;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/AddWidgetLayout;->c(Lcom/uc/browser/homepage/view/AddWidgetLayout;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    if-ne p4, v2, :cond_1

    iget-object v0, p0, Lcom/uc/browser/homepage/view/b;->a:Lcom/uc/browser/homepage/view/AddWidgetLayout;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/AddWidgetLayout;->d(Lcom/uc/browser/homepage/view/AddWidgetLayout;)I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/uc/browser/homepage/view/b;->a:Lcom/uc/browser/homepage/view/AddWidgetLayout;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/AddWidgetLayout;->c(Lcom/uc/browser/homepage/view/AddWidgetLayout;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
