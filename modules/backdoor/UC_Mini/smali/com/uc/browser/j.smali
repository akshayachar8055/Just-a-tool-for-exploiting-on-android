.class final Lcom/uc/browser/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/uc/browser/ActivityWithUCMenu;


# direct methods
.method constructor <init>(Lcom/uc/browser/ActivityWithUCMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/j;->a:Lcom/uc/browser/ActivityWithUCMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/j;->a:Lcom/uc/browser/ActivityWithUCMenu;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/uc/browser/ActivityWithUCMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    :cond_0
    return-void
.end method
