.class final Lcom/uc/browser/homepage/view/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/uc/browser/homepage/view/FolderPanel;


# direct methods
.method constructor <init>(Lcom/uc/browser/homepage/view/FolderPanel;Z)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/homepage/view/l;->b:Lcom/uc/browser/homepage/view/FolderPanel;

    iput-boolean p2, p0, Lcom/uc/browser/homepage/view/l;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/uc/browser/homepage/view/l;->b:Lcom/uc/browser/homepage/view/FolderPanel;

    invoke-virtual {v0}, Lcom/uc/browser/homepage/view/FolderPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v1, p0, Lcom/uc/browser/homepage/view/l;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/uc/browser/homepage/view/l;->b:Lcom/uc/browser/homepage/view/FolderPanel;

    invoke-static {v1}, Lcom/uc/browser/homepage/view/FolderPanel;->c(Lcom/uc/browser/homepage/view/FolderPanel;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/uc/browser/homepage/view/l;->b:Lcom/uc/browser/homepage/view/FolderPanel;

    invoke-static {v1}, Lcom/uc/browser/homepage/view/FolderPanel;->c(Lcom/uc/browser/homepage/view/FolderPanel;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    iget-object v1, p0, Lcom/uc/browser/homepage/view/l;->b:Lcom/uc/browser/homepage/view/FolderPanel;

    invoke-static {v1}, Lcom/uc/browser/homepage/view/FolderPanel;->c(Lcom/uc/browser/homepage/view/FolderPanel;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/uc/browser/homepage/view/l;->b:Lcom/uc/browser/homepage/view/FolderPanel;

    invoke-virtual {v1}, Lcom/uc/browser/homepage/view/FolderPanel;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
