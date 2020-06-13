.class final Lcom/uc/browser/dt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/SearchWebView;


# direct methods
.method constructor <init>(Lcom/uc/browser/SearchWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/dt;->a:Lcom/uc/browser/SearchWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/dt;->a:Lcom/uc/browser/SearchWebView;

    invoke-static {v0}, Lcom/uc/browser/SearchWebView;->o(Lcom/uc/browser/SearchWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/dt;->a:Lcom/uc/browser/SearchWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uc/browser/SearchWebView;->a(Lcom/uc/browser/SearchWebView;I)I

    iget-object v0, p0, Lcom/uc/browser/dt;->a:Lcom/uc/browser/SearchWebView;

    iget-object v1, p0, Lcom/uc/browser/dt;->a:Lcom/uc/browser/SearchWebView;

    invoke-static {v1}, Lcom/uc/browser/SearchWebView;->a(Lcom/uc/browser/SearchWebView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uc/browser/SearchWebView;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uc/browser/dt;->a:Lcom/uc/browser/SearchWebView;

    invoke-static {v0}, Lcom/uc/browser/SearchWebView;->c(Lcom/uc/browser/SearchWebView;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/uc/browser/dt;->a:Lcom/uc/browser/SearchWebView;

    invoke-static {v0}, Lcom/uc/browser/SearchWebView;->z(Lcom/uc/browser/SearchWebView;)V

    goto :goto_0
.end method
